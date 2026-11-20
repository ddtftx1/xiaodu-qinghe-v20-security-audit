package com.sprd.validationtools.sqlite;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.sprd.validationtools.modules.TestItem;
import com.sprd.validationtools.modules.UnitTestItemList;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class EngSqlite {
    public static String ENG_ENGTEST_DB = null;
    public static final int ENG_ENGTEST_VERSION = 1;
    public static final String ENG_GROUPID_VALUE = "groupid";
    public static final String ENG_STRING2INT_DISPLAYNAME = "displayname";
    public static final String ENG_STRING2INT_NAME = "name";
    public static final String ENG_STRING2INT_TABLE = "str2int";
    public static final String ENG_STRING2INT_VALUE = "value";
    private static final String TAG = "EngSqlite";
    private static EngSqlite mEngSqlite;
    private Context mContext;
    private SQLiteDatabase mSqLiteDatabase;

    public static synchronized EngSqlite getInstance(Context context) {
        if (mEngSqlite == null) {
            mEngSqlite = new EngSqlite(context);
        }
        return mEngSqlite;
    }

    private EngSqlite(Context context) {
        this.mSqLiteDatabase = null;
        this.mContext = context;
        try {
            SQLiteDatabase writableDatabase = new ValidationToolsDatabaseHelper(this.mContext).getWritableDatabase();
            this.mSqLiteDatabase = writableDatabase;
            if (writableDatabase != null) {
                writableDatabase.disableWriteAheadLogging();
            }
            Log.v(TAG, "EngSqlite mSqLiteDatabase= " + this.mSqLiteDatabase);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
    }

    public ArrayList<TestItem> queryData(ArrayList<TestItem> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            TestItem testItem = arrayList.get(i);
            testItem.setTestResult(getTestListItemStatus(testItem.getTestClassName()));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getTestListItemStatus(java.lang.String r11) {
        /*
            r10 = this;
            java.lang.String r0 = "fianlly"
            android.database.sqlite.SQLiteDatabase r1 = r10.mSqLiteDatabase
            r10 = 2
            java.lang.String r9 = "EngSqlite"
            if (r1 != 0) goto Lf
            java.lang.String r11 = "getTestListItemStatus, mSqLiteDatabase == null"
            android.util.Log.e(r9, r11)
            return r10
        Lf:
            java.lang.String r2 = "value"
            java.lang.String[] r3 = new java.lang.String[]{r2}
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "name='"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.StringBuilder r2 = r2.append(r11)
            java.lang.String r4 = "'"
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r4 = r2.toString()
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            java.lang.String r2 = "str2int"
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "name="
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r11 = r2.append(r11)
            java.lang.String r11 = r11.toString()
            android.util.Log.d(r9, r11)
            if (r1 != 0) goto L51
            return r10
        L51:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r2 = "cursor.count="
            java.lang.StringBuilder r11 = r11.append(r2)
            int r2 = r1.getCount()
            java.lang.StringBuilder r11 = r11.append(r2)
            java.lang.String r11 = r11.toString()
            android.util.Log.d(r9, r11)
            int r11 = r1.getCount()     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            if (r11 == 0) goto L9d
            r1.moveToNext()     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            r11 = 0
            int r2 = r1.getInt(r11)     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            if (r2 != 0) goto L84
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto L83
            r1.close()
        L83:
            return r11
        L84:
            int r11 = r1.getInt(r11)     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            r2 = 1
            if (r11 != r2) goto L94
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto L93
            r1.close()
        L93:
            return r2
        L94:
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto L9c
            r1.close()
        L9c:
            return r10
        L9d:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            r11.<init>()     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            java.lang.String r2 = "cursor.count2="
            java.lang.StringBuilder r11 = r11.append(r2)     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            java.lang.StringBuilder r11 = r11.append(r2)     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            java.lang.String r11 = r11.toString()     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            android.util.Log.d(r9, r11)     // Catch: java.lang.Throwable -> Lc0 android.database.SQLException -> Lc2 java.lang.NullPointerException -> Lcc
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto Lbf
            r1.close()
        Lbf:
            return r10
        Lc0:
            r10 = move-exception
            goto Ld9
        Lc2:
            r11 = move-exception
            r11.printStackTrace()     // Catch: java.lang.Throwable -> Lc0
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto Ld8
            goto Ld5
        Lcc:
            r11 = move-exception
            r11.printStackTrace()     // Catch: java.lang.Throwable -> Lc0
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto Ld8
        Ld5:
            r1.close()
        Ld8:
            return r10
        Ld9:
            android.util.Log.d(r9, r0)
            if (r1 == 0) goto Le1
            r1.close()
        Le1:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sprd.validationtools.sqlite.EngSqlite.getTestListItemStatus(java.lang.String):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [android.database.sqlite.SQLiteDatabase] */
    public void updateData(String str, int i) throws SQLException {
        if (this.mSqLiteDatabase == null) {
            Log.e(TAG, "updateData, mSqLiteDatabase == null");
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(ENG_STRING2INT_NAME, str);
        contentValues.put(ENG_STRING2INT_VALUE, Integer.valueOf(i));
        contentValues.put(ENG_STRING2INT_VALUE, Integer.valueOf(i));
        this.mSqLiteDatabase.execSQL("PRAGMA synchronous = FULL;");
        this.mSqLiteDatabase.beginTransaction();
        try {
            try {
                this.mSqLiteDatabase.update(ENG_STRING2INT_TABLE, contentValues, "name= '" + str + "'", null);
                this.mSqLiteDatabase.setTransactionSuccessful();
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
        } finally {
            this.mSqLiteDatabase.endTransaction();
        }
    }

    public void updateDB(String str, int i) throws SQLException {
        if (queryData(str)) {
            updateData(str, i);
            return;
        }
        Log.d(TAG, "Error,unqueryData");
        if (str != null) {
            insertData(str, i);
        }
    }

    private boolean queryData(String str) {
        SQLiteDatabase sQLiteDatabase = this.mSqLiteDatabase;
        if (sQLiteDatabase == null) {
            Log.e(TAG, "queryData, mSqLiteDatabase == null");
            return false;
        }
        try {
            Cursor cursorQuery = sQLiteDatabase.query(ENG_STRING2INT_TABLE, new String[]{ENG_STRING2INT_NAME, ENG_STRING2INT_VALUE}, "name= '" + str + "'", null, null, null, null);
            if (cursorQuery != null) {
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.close();
                    return true;
                }
                cursorQuery.close();
            }
        } catch (SQLException unused) {
        }
        return false;
    }

    private void insertData(String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ENG_STRING2INT_NAME, str);
        contentValues.put(ENG_STRING2INT_VALUE, Integer.valueOf(i));
        Log.d(TAG, ENG_STRING2INT_NAME + str + "value:" + i);
        SQLiteDatabase sQLiteDatabase = this.mSqLiteDatabase;
        if (sQLiteDatabase == null) {
            Log.e(TAG, "insertData, mSqLiteDatabase == null");
            return;
        }
        sQLiteDatabase.beginTransaction();
        try {
            try {
                try {
                    long jInsert = this.mSqLiteDatabase.insert(ENG_STRING2INT_TABLE, null, contentValues);
                    Log.e(TAG, "returnValue" + jInsert);
                    if (jInsert == -1) {
                        Log.e(TAG, "insert DB error!");
                    }
                    this.mSqLiteDatabase.setTransactionSuccessful();
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
            } catch (NullPointerException e2) {
                e2.printStackTrace();
            }
        } finally {
            this.mSqLiteDatabase.endTransaction();
        }
    }

    public int queryNotTestCount() {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase = this.mSqLiteDatabase;
        if (sQLiteDatabase == null || (cursorQuery = sQLiteDatabase.query(ENG_STRING2INT_TABLE, new String[]{ENG_STRING2INT_NAME, ENG_STRING2INT_VALUE}, "value=?", new String[]{"2"}, null, null, null)) == null) {
            return 0;
        }
        int count = cursorQuery.getCount();
        cursorQuery.close();
        return count;
    }

    public int queryFailCount() {
        Cursor cursorQuery;
        SQLiteDatabase sQLiteDatabase = this.mSqLiteDatabase;
        if (sQLiteDatabase == null || (cursorQuery = sQLiteDatabase.query(ENG_STRING2INT_TABLE, new String[]{ENG_STRING2INT_NAME, ENG_STRING2INT_VALUE}, "value!=?", new String[]{"1"}, null, null, null)) == null) {
            return 0;
        }
        int count = cursorQuery.getCount();
        cursorQuery.close();
        return count;
    }

    public int queryAutoTestFailCount() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(UnitTestItemList.getInstance(this.mContext).getTestItemList());
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (1 != getTestListItemStatus(((TestItem) arrayList.get(i2)).getTestClassName())) {
                i++;
            }
        }
        return i;
    }

    public int querySystemFailCount() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(UnitTestItemList.getInstance(this.mContext).getTestItemList());
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (getTestListItemStatus(((TestItem) arrayList.get(i2)).getTestClassName()) == 0) {
                i++;
            }
        }
        return i;
    }

    public int querySystemNotTestCount() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(UnitTestItemList.getInstance(this.mContext).getTestItemList());
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (2 == getTestListItemStatus(((TestItem) arrayList.get(i2)).getTestClassName())) {
                i++;
            }
        }
        return i;
    }

    private static class ValidationToolsDatabaseHelper extends SQLiteOpenHelper {
        Context mContext;

        public ValidationToolsDatabaseHelper(Context context) {
            super(context, EngSqlite.ENG_ENGTEST_DB, (SQLiteDatabase.CursorFactory) null, 1);
            this.mContext = null;
            this.mContext = context;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) throws SQLException {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS str2int;");
            sQLiteDatabase.execSQL("CREATE TABLE str2int (_id INTEGER PRIMARY KEY AUTOINCREMENT,groupid INTEGER NOT NULL DEFAULT 0,name TEXT,displayname TEXT,value INTEGER NOT NULL DEFAULT 0);");
            ArrayList<TestItem> testItemList = UnitTestItemList.getInstance(this.mContext).getTestItemList();
            for (int i = 0; i < testItemList.size(); i++) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(EngSqlite.ENG_STRING2INT_NAME, testItemList.get(i).getTestClassName());
                contentValues.put(EngSqlite.ENG_STRING2INT_DISPLAYNAME, testItemList.get(i).getTestName());
                contentValues.put(EngSqlite.ENG_STRING2INT_VALUE, String.valueOf(2));
                if (sQLiteDatabase.insert(EngSqlite.ENG_STRING2INT_TABLE, null, contentValues) == -1) {
                    Log.e(EngSqlite.TAG, "insert DB error!");
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) throws SQLException {
            if (i2 > i) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS str2int;");
                onCreate(sQLiteDatabase);
            }
        }
    }
}
