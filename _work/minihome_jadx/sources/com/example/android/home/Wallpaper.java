package com.example.android.home;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.SpinnerAdapter;
import java.io.IOException;

/* loaded from: classes.dex */
public class Wallpaper extends Activity implements AdapterView.OnItemSelectedListener, AdapterView.OnItemClickListener {
    private Gallery mGallery;
    private boolean mIsWallpaperSet;
    private static final Integer[] THUMB_IDS = {Integer.valueOf(R.drawable.bg_android_icon), Integer.valueOf(R.drawable.bg_sunrise_icon), Integer.valueOf(R.drawable.bg_sunset_icon)};
    private static final Integer[] IMAGE_IDS = {Integer.valueOf(R.drawable.bg_android), Integer.valueOf(R.drawable.bg_sunrise), Integer.valueOf(R.drawable.bg_sunset)};

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView adapterView) {
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.wallpaper);
        Gallery gallery = (Gallery) findViewById(R.id.gallery);
        this.mGallery = gallery;
        gallery.setAdapter((SpinnerAdapter) new ImageAdapter(this));
        this.mGallery.setOnItemSelectedListener(this);
        this.mGallery.setOnItemClickListener(this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mIsWallpaperSet = false;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        getWindow().setBackgroundDrawableResource(IMAGE_IDS[i].intValue());
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        selectWallpaper(i);
    }

    private synchronized void selectWallpaper(int i) {
        if (this.mIsWallpaperSet) {
            return;
        }
        this.mIsWallpaperSet = true;
        try {
            setWallpaper(getResources().openRawResource(IMAGE_IDS[i].intValue()));
            setResult(-1);
            finish();
        } catch (IOException e) {
            Log.e("Home", "Failed to set wallpaper " + e);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        selectWallpaper(this.mGallery.getSelectedItemPosition());
        return true;
    }

    public class ImageAdapter extends BaseAdapter {
        private Context mContext;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public ImageAdapter(Context context) {
            this.mContext = context;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return Wallpaper.THUMB_IDS.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ImageView imageView = new ImageView(this.mContext);
            imageView.setImageResource(Wallpaper.THUMB_IDS[i].intValue());
            imageView.setAdjustViewBounds(true);
            imageView.setLayoutParams(new Gallery.LayoutParams(-2, -2));
            imageView.setBackgroundResource(android.R.drawable.picture_frame);
            return imageView;
        }
    }
}
