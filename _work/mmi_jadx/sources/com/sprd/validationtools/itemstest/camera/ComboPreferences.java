package com.sprd.validationtools.itemstest.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class ComboPreferences implements SharedPreferences, SharedPreferences.OnSharedPreferenceChangeListener {
    private static WeakHashMap<Context, ComboPreferences> sMap = new WeakHashMap<>();
    private CopyOnWriteArrayList<SharedPreferences.OnSharedPreferenceChangeListener> mListeners;
    private SharedPreferences mPrefGlobal;
    private SharedPreferences mPrefLocal;

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return false;
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return null;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        return false;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        return 0.0f;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        return 0;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        return 0L;
    }

    public ComboPreferences(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.mPrefGlobal = defaultSharedPreferences;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        synchronized (sMap) {
            sMap.put(context, this);
        }
        this.mListeners = new CopyOnWriteArrayList<>();
    }

    public void setLocalId(Context context, int i) {
        String str = context.getPackageName() + "_preferences_" + i;
        SharedPreferences sharedPreferences = this.mPrefLocal;
        if (sharedPreferences != null) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(this);
        }
        SharedPreferences sharedPreferences2 = context.getSharedPreferences(str, 0);
        this.mPrefLocal = sharedPreferences2;
        sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
    }

    public SharedPreferences getGlobal() {
        return this.mPrefGlobal;
    }

    public SharedPreferences getLocal() {
        return this.mPrefLocal;
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        if (!this.mPrefLocal.contains(str)) {
            return this.mPrefGlobal.getString(str, str2);
        }
        return this.mPrefLocal.getString(str, str2);
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mListeners.add(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        this.mListeners.remove(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Iterator<SharedPreferences.OnSharedPreferenceChangeListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onSharedPreferenceChanged(this, str);
        }
    }
}
