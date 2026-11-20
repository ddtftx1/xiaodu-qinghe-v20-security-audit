package com.example.android.home;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class Home extends Activity {
    private static ArrayList<ApplicationInfo> mApplications;
    private static LinkedList<ApplicationInfo> mFavorites;
    private static boolean mWallpaperChecked;
    private final BroadcastReceiver mApplicationsReceiver;
    private ApplicationsStackLayout mApplicationsStack;
    private boolean mBackDown;
    private boolean mBlockAnimation;
    private GridView mGrid;
    private Animation mGridEntry;
    private Animation mGridExit;
    private LayoutAnimationController mHideLayoutAnimation;
    private boolean mHomeDown;
    private View mShowApplications;
    private CheckBox mShowApplicationsCheck;
    private LayoutAnimationController mShowLayoutAnimation;
    private final BroadcastReceiver mWallpaperReceiver;

    public Home() {
        this.mWallpaperReceiver = new WallpaperIntentReceiver();
        this.mApplicationsReceiver = new ApplicationsIntentReceiver();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) throws XmlPullParserException, SecurityException {
        super.onCreate(bundle);
        setDefaultKeyMode(3);
        setContentView(R.layout.home);
        registerIntentReceivers();
        setDefaultWallpaper();
        loadApplications(true);
        bindApplications();
        bindFavorites(true);
        bindRecents();
        bindButtons();
        this.mGridEntry = AnimationUtils.loadAnimation(this, R.anim.grid_entry);
        this.mGridExit = AnimationUtils.loadAnimation(this, R.anim.grid_exit);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if ("android.intent.action.MAIN".equals(intent.getAction())) {
            getWindow().closeAllPanels();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        int size = mApplications.size();
        for (int i = 0; i < size; i++) {
            mApplications.get(i).icon.setCallback(null);
        }
        unregisterReceiver(this.mWallpaperReceiver);
        unregisterReceiver(this.mApplicationsReceiver);
    }

    @Override // android.app.Activity
    protected void onResume() throws SecurityException {
        super.onResume();
        bindRecents();
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        if (bundle.getBoolean("grid.opened", false)) {
            showApplications(false);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("grid.opened", this.mGrid.getVisibility() == 0);
    }

    private void registerIntentReceivers() {
        registerReceiver(this.mWallpaperReceiver, new IntentFilter("android.intent.action.WALLPAPER_CHANGED"));
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.mApplicationsReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindApplications() {
        if (this.mGrid == null) {
            this.mGrid = (GridView) findViewById(R.id.all_apps);
        }
        this.mGrid.setAdapter((ListAdapter) new ApplicationsAdapter(this, mApplications));
        this.mGrid.setSelection(0);
        if (this.mApplicationsStack == null) {
            this.mApplicationsStack = (ApplicationsStackLayout) findViewById(R.id.faves_and_recents);
        }
    }

    private void bindButtons() {
        View viewFindViewById = findViewById(R.id.show_all_apps);
        this.mShowApplications = viewFindViewById;
        viewFindViewById.setOnClickListener(new ShowApplications());
        this.mShowApplicationsCheck = (CheckBox) findViewById(R.id.show_all_apps_check);
        this.mGrid.setOnItemClickListener(new ApplicationLauncher());
    }

    private void setDefaultWallpaper() {
        if (mWallpaperChecked) {
            return;
        }
        Drawable drawablePeekWallpaper = peekWallpaper();
        if (drawablePeekWallpaper == null) {
            try {
                clearWallpaper();
            } catch (IOException e) {
                Log.e("Home", "Failed to clear wallpaper " + e);
            }
        } else {
            getWindow().setBackgroundDrawable(new ClippedDrawable(drawablePeekWallpaper));
        }
        mWallpaperChecked = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindFavorites(boolean z) throws XmlPullParserException {
        if (!z || mFavorites == null) {
            LinkedList<ApplicationInfo> linkedList = mFavorites;
            if (linkedList == null) {
                mFavorites = new LinkedList<>();
            } else {
                linkedList.clear();
            }
            this.mApplicationsStack.setFavorites(mFavorites);
            File file = new File(Environment.getRootDirectory(), "etc/favorites.xml");
            try {
                FileReader fileReader = new FileReader(file);
                Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
                intent.addCategory("android.intent.category.LAUNCHER");
                PackageManager packageManager = getPackageManager();
                try {
                    XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                    xmlPullParserNewPullParser.setInput(fileReader);
                    beginDocument(xmlPullParserNewPullParser, "favorites");
                    while (true) {
                        nextElement(xmlPullParserNewPullParser);
                        if (!"favorite".equals(xmlPullParserNewPullParser.getName())) {
                            break;
                        }
                        intent.setComponent(new ComponentName(xmlPullParserNewPullParser.getAttributeValue(null, "package"), xmlPullParserNewPullParser.getAttributeValue(null, "class")));
                        intent.setFlags(268435456);
                        ApplicationInfo applicationInfo = getApplicationInfo(packageManager, intent);
                        if (applicationInfo != null) {
                            applicationInfo.intent = intent;
                            mFavorites.addFirst(applicationInfo);
                        }
                    }
                } catch (IOException e) {
                    Log.w("Home", "Got exception parsing favorites.", e);
                } catch (XmlPullParserException e2) {
                    Log.w("Home", "Got exception parsing favorites.", e2);
                }
            } catch (FileNotFoundException unused) {
                Log.e("Home", "Couldn't find or open favorites file " + file);
                return;
            }
        }
        this.mApplicationsStack.setFavorites(mFavorites);
    }

    private static void beginDocument(XmlPullParser xmlPullParser, String str) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xmlPullParser.getName().equals(str)) {
            return;
        }
        throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
    }

    private static void nextElement(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                return;
            }
        } while (next != 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindRecents() throws SecurityException {
        ApplicationInfo applicationInfo;
        PackageManager packageManager = getPackageManager();
        List<ActivityManager.RecentTaskInfo> recentTasks = ((ActivityManager) getSystemService("activity")).getRecentTasks(20, 0);
        int size = recentTasks.size();
        ArrayList arrayList = new ArrayList();
        for (int i = size - 1; i >= 0; i--) {
            Intent intent = recentTasks.get(i).baseIntent;
            if ("android.intent.action.MAIN".equals(intent.getAction()) && !intent.hasCategory("android.intent.category.HOME") && (applicationInfo = getApplicationInfo(packageManager, intent)) != null) {
                applicationInfo.intent = intent;
                if (!mFavorites.contains(applicationInfo)) {
                    arrayList.add(applicationInfo);
                }
            }
        }
        this.mApplicationsStack.setRecents(arrayList);
    }

    private static ApplicationInfo getApplicationInfo(PackageManager packageManager, Intent intent) {
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveInfoResolveActivity == null) {
            return null;
        }
        ApplicationInfo applicationInfo = new ApplicationInfo();
        ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
        applicationInfo.icon = activityInfo.loadIcon(packageManager);
        CharSequence charSequence = applicationInfo.title;
        if (charSequence == null || charSequence.length() == 0) {
            applicationInfo.title = activityInfo.loadLabel(packageManager);
        }
        if (applicationInfo.title == null) {
            applicationInfo.title = "";
        }
        return applicationInfo;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            return;
        }
        this.mHomeDown = false;
        this.mBackDown = false;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 3) {
                this.mHomeDown = true;
                return true;
            }
            if (keyCode == 4) {
                this.mBackDown = true;
                return true;
            }
        } else if (keyEvent.getAction() == 1) {
            int keyCode2 = keyEvent.getKeyCode();
            if (keyCode2 == 3) {
                keyEvent.isCanceled();
                this.mHomeDown = true;
                return true;
            }
            if (keyCode2 == 4) {
                keyEvent.isCanceled();
                this.mBackDown = true;
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.add(0, 2, 0, R.string.menu_wallpaper).setIcon(android.R.drawable.ic_menu_gallery).setAlphabeticShortcut('W');
        menu.add(0, 3, 0, R.string.menu_search).setIcon(android.R.drawable.ic_search_category_default).setAlphabeticShortcut('s');
        menu.add(0, 4, 0, R.string.menu_settings).setIcon(android.R.drawable.ic_menu_preferences).setIntent(new Intent("android.settings.SETTINGS"));
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 2) {
            startWallpaper();
            return true;
        }
        if (itemId == 3) {
            onSearchRequested();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void startWallpaper() {
        startActivity(Intent.createChooser(new Intent("android.intent.action.SET_WALLPAPER"), getString(R.string.menu_wallpaper)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadApplications(boolean z) {
        if (!z || mApplications == null) {
            PackageManager packageManager = getPackageManager();
            Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
            intent.addCategory("android.intent.category.LAUNCHER");
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            Collections.sort(listQueryIntentActivities, new ResolveInfo.DisplayNameComparator(packageManager));
            if (listQueryIntentActivities != null) {
                int size = listQueryIntentActivities.size();
                if (mApplications == null) {
                    mApplications = new ArrayList<>(size);
                }
                mApplications.clear();
                for (int i = 0; i < size; i++) {
                    ApplicationInfo applicationInfo = new ApplicationInfo();
                    ResolveInfo resolveInfo = listQueryIntentActivities.get(i);
                    applicationInfo.title = resolveInfo.loadLabel(packageManager);
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    applicationInfo.setActivity(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name), 270532608);
                    applicationInfo.icon = resolveInfo.activityInfo.loadIcon(packageManager);
                    mApplications.add(applicationInfo);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showApplications(boolean z) {
        if (this.mBlockAnimation) {
            return;
        }
        this.mBlockAnimation = true;
        this.mShowApplicationsCheck.toggle();
        if (this.mShowLayoutAnimation == null) {
            this.mShowLayoutAnimation = AnimationUtils.loadLayoutAnimation(this, R.anim.show_applications);
        }
        if (z) {
            this.mGridEntry.setAnimationListener(new ShowGrid());
            this.mGrid.startAnimation(this.mGridEntry);
        }
        this.mGrid.setVisibility(0);
        if (z) {
            return;
        }
        this.mBlockAnimation = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideApplications() {
        if (this.mBlockAnimation) {
            return;
        }
        this.mBlockAnimation = true;
        this.mShowApplicationsCheck.toggle();
        if (this.mHideLayoutAnimation == null) {
            this.mHideLayoutAnimation = AnimationUtils.loadLayoutAnimation(this, R.anim.hide_applications);
        }
        this.mGridExit.setAnimationListener(new HideGrid());
        this.mGrid.startAnimation(this.mGridExit);
        this.mGrid.setVisibility(4);
        this.mShowApplications.requestFocus();
    }

    private class WallpaperIntentReceiver extends BroadcastReceiver {
        private WallpaperIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Window window = Home.this.getWindow();
            Home home = Home.this;
            window.setBackgroundDrawable(home.new ClippedDrawable(home.getWallpaper()));
        }
    }

    private class ApplicationsIntentReceiver extends BroadcastReceiver {
        private ApplicationsIntentReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) throws XmlPullParserException, SecurityException {
            Home.this.loadApplications(false);
            Home.this.bindApplications();
            Home.this.bindRecents();
            Home.this.bindFavorites(false);
        }
    }

    private class ApplicationsAdapter extends ArrayAdapter<ApplicationInfo> {
        private Rect mOldBounds;

        public ApplicationsAdapter(Context context, ArrayList<ApplicationInfo> arrayList) {
            super(context, 0, arrayList);
            this.mOldBounds = new Rect();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2;
            ApplicationInfo applicationInfo = (ApplicationInfo) Home.mApplications.get(i);
            if (view == null) {
                view = Home.this.getLayoutInflater().inflate(R.layout.application, viewGroup, false);
            }
            Drawable bitmapDrawable = applicationInfo.icon;
            if (!applicationInfo.filtered) {
                int intrinsicWidth = bitmapDrawable.getIntrinsicWidth();
                int intrinsicHeight = bitmapDrawable.getIntrinsicHeight();
                int i3 = 42;
                if (bitmapDrawable instanceof PaintDrawable) {
                    PaintDrawable paintDrawable = (PaintDrawable) bitmapDrawable;
                    paintDrawable.setIntrinsicWidth(42);
                    paintDrawable.setIntrinsicHeight(42);
                }
                if (42 < intrinsicWidth || 42 < intrinsicHeight) {
                    float f = intrinsicWidth / intrinsicHeight;
                    if (intrinsicWidth > intrinsicHeight) {
                        i2 = (int) (42 / f);
                    } else if (intrinsicHeight > intrinsicWidth) {
                        i3 = (int) (42 * f);
                        i2 = 42;
                    } else {
                        i2 = 42;
                    }
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i2, bitmapDrawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 0));
                    this.mOldBounds.set(bitmapDrawable.getBounds());
                    bitmapDrawable.setBounds(0, 0, i3, i2);
                    bitmapDrawable.draw(canvas);
                    bitmapDrawable.setBounds(this.mOldBounds);
                    bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
                    applicationInfo.icon = bitmapDrawable;
                    applicationInfo.filtered = true;
                }
            }
            TextView textView = (TextView) view.findViewById(R.id.label);
            textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, bitmapDrawable, (Drawable) null, (Drawable) null);
            textView.setText(applicationInfo.title);
            return view;
        }
    }

    private class ShowApplications implements View.OnClickListener {
        private ShowApplications() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (Home.this.mGrid.getVisibility() != 0) {
                Home.this.showApplications(true);
            } else {
                Home.this.hideApplications();
            }
        }
    }

    private class HideGrid implements Animation.AnimationListener {
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        private HideGrid() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Home.this.mBlockAnimation = false;
        }
    }

    private class ShowGrid implements Animation.AnimationListener {
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }

        private ShowGrid() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            Home.this.mBlockAnimation = false;
        }
    }

    private class ApplicationLauncher implements AdapterView.OnItemClickListener {
        private ApplicationLauncher() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            Home.this.startActivity(((ApplicationInfo) adapterView.getItemAtPosition(i)).intent);
        }
    }

    private class ClippedDrawable extends Drawable {
        private final Drawable mWallpaper;

        public ClippedDrawable(Drawable drawable) {
            this.mWallpaper = drawable;
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4);
            Drawable drawable = this.mWallpaper;
            drawable.setBounds(i, i2, drawable.getIntrinsicWidth() + i, this.mWallpaper.getIntrinsicHeight() + i2);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.mWallpaper.draw(canvas);
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            this.mWallpaper.setAlpha(i);
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
            this.mWallpaper.setColorFilter(colorFilter);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return this.mWallpaper.getOpacity();
        }
    }
}
