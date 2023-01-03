package com.tencent.smtt.sdk;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.smtt.utils.TbsLog;
import com.tencent.smtt.utils.f;
import com.umeng.commonsdk.internal.utils.g;
import f.b.a.a.a;
import java.io.File;

/* compiled from: SqliteDataManager.java */
/* loaded from: classes.dex */
public class h {
    public static final String a = CookieManager.LOGTAG;
    public static File b;

    public static File a(Context context) {
        if (b == null && context != null) {
            b = new File(context.getDir("webview", 0), "Cookies");
        }
        if (b == null) {
            StringBuilder o = a.o("/data/data/");
            o.append(context.getPackageName());
            o.append(File.separator);
            o.append("app_webview");
            b = new File(a.l(o, File.separator, "Cookies"));
        }
        return b;
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        f.a(a(context), false);
        return true;
    }

    public static SQLiteDatabase c(Context context) {
        File a2;
        SQLiteDatabase sQLiteDatabase = null;
        if (context == null || (a2 = a(context)) == null) {
            return null;
        }
        try {
            sQLiteDatabase = SQLiteDatabase.openDatabase(a2.getAbsolutePath(), null, 0);
        } catch (Exception unused) {
        }
        if (sQLiteDatabase == null) {
            TbsLog.i(a, "dbPath is not exist!");
        }
        return sQLiteDatabase;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0039, code lost:
        r0 = java.lang.Integer.parseInt(r1.getString(1));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0050, code lost:
        if (r4.isOpen() != false) goto L_0x0052;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0052, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0064, code lost:
        if (r4.isOpen() != false) goto L_0x0052;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int d(android.content.Context r4) {
        /*
            java.lang.System.currentTimeMillis()
            r0 = 0
            r1 = 0
            android.database.sqlite.SQLiteDatabase r4 = c(r4)     // Catch: all -> 0x0058
            if (r4 != 0) goto L_0x0018
            r0 = -1
            if (r4 == 0) goto L_0x0017
            boolean r1 = r4.isOpen()
            if (r1 == 0) goto L_0x0017
            r4.close()
        L_0x0017:
            return r0
        L_0x0018:
            java.lang.String r2 = "select * from meta"
            android.database.Cursor r1 = r4.rawQuery(r2, r1)     // Catch: all -> 0x0056
            int r2 = r1.getCount()     // Catch: all -> 0x0056
            r1.getColumnCount()     // Catch: all -> 0x0056
            if (r2 <= 0) goto L_0x0049
            boolean r2 = r1.moveToFirst()     // Catch: all -> 0x0056
            if (r2 == 0) goto L_0x0049
        L_0x002d:
            java.lang.String r2 = r1.getString(r0)     // Catch: all -> 0x0056
            java.lang.String r3 = "version"
            boolean r2 = r2.equals(r3)     // Catch: all -> 0x0056
            if (r2 == 0) goto L_0x0043
            r2 = 1
            java.lang.String r2 = r1.getString(r2)     // Catch: all -> 0x0056
            int r0 = java.lang.Integer.parseInt(r2)     // Catch: all -> 0x0056
            goto L_0x0049
        L_0x0043:
            boolean r2 = r1.moveToNext()     // Catch: all -> 0x0056
            if (r2 != 0) goto L_0x002d
        L_0x0049:
            r1.close()
            boolean r1 = r4.isOpen()
            if (r1 == 0) goto L_0x0067
        L_0x0052:
            r4.close()
            goto L_0x0067
        L_0x0056:
            goto L_0x0059
        L_0x0058:
            r4 = r1
        L_0x0059:
            if (r1 == 0) goto L_0x005e
            r1.close()
        L_0x005e:
            if (r4 == 0) goto L_0x0067
            boolean r1 = r4.isOpen()
            if (r1 == 0) goto L_0x0067
            goto L_0x0052
        L_0x0067:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.h.d(android.content.Context):int");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r4.isOpen() == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x003e, code lost:
        if (r4.isOpen() == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0040, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0043, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.util.ArrayList<java.lang.String> a(android.database.sqlite.SQLiteDatabase r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r2 = "select * from sqlite_master where type='table'"
            android.database.Cursor r0 = r4.rawQuery(r2, r0)     // Catch: all -> 0x0034
            boolean r2 = r0.moveToFirst()     // Catch: all -> 0x0034
            if (r2 == 0) goto L_0x002a
        L_0x0015:
            r2 = 1
            java.lang.String r2 = r0.getString(r2)     // Catch: all -> 0x0034
            r3 = 4
            r0.getString(r3)     // Catch: all -> 0x0034
            r1.add(r2)     // Catch: all -> 0x0034
            a(r4, r2)     // Catch: all -> 0x0034
            boolean r2 = r0.moveToNext()     // Catch: all -> 0x0034
            if (r2 != 0) goto L_0x0015
        L_0x002a:
            r0.close()
            boolean r0 = r4.isOpen()
            if (r0 == 0) goto L_0x0043
            goto L_0x0040
        L_0x0034:
            if (r0 == 0) goto L_0x003a
            r0.close()
        L_0x003a:
            boolean r0 = r4.isOpen()
            if (r0 == 0) goto L_0x0043
        L_0x0040:
            r4.close()
        L_0x0043:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.h.a(android.database.sqlite.SQLiteDatabase):java.util.ArrayList");
    }

    public static String a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("select * from " + str, null);
        int count = rawQuery.getCount();
        int columnCount = rawQuery.getColumnCount();
        StringBuilder sb = new StringBuilder();
        sb.append("raws:" + count + ",columns:" + columnCount + g.a);
        if (count <= 0 || !rawQuery.moveToFirst()) {
            return sb.toString();
        }
        do {
            sb.append(g.a);
            for (int i2 = 0; i2 < columnCount; i2++) {
                try {
                    sb.append(rawQuery.getString(i2));
                    sb.append(",");
                } catch (Exception unused) {
                }
            }
            sb.append(g.a);
        } while (rawQuery.moveToNext());
        return sb.toString();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00b6, code lost:
        if (r0.isOpen() == false) goto L_0x00cc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00b8, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00c9, code lost:
        if (r0.isOpen() == false) goto L_0x00cc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x00d0, code lost:
        if (r2.isEmpty() == false) goto L_0x00d3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00d2, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00d3, code lost:
        b(r9);
        r10 = r2.entrySet().iterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x00e2, code lost:
        if (r10.hasNext() == false) goto L_0x00fe;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x00e4, code lost:
        r11 = (java.util.Map.Entry) r10.next();
        com.tencent.smtt.sdk.CookieManager.getInstance().setCookie((java.lang.String) r11.getKey(), (java.lang.String) r11.getValue(), true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x00fe, code lost:
        com.tencent.smtt.sdk.CookieManager.getInstance().flush();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x0105, code lost:
        if (r12 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0107, code lost:
        a(c(r9));
        r10 = d(r9);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0113, code lost:
        if (r10 == -1) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0115, code lost:
        com.tencent.smtt.sdk.CookieManager.getInstance();
        com.tencent.smtt.sdk.CookieManager.setROMCookieDBVersion(r9, r10);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x011b, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r9, com.tencent.smtt.sdk.CookieManager.a r10, java.lang.String r11, boolean r12, boolean r13) {
        /*
        // Method dump skipped, instructions count: 301
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.h.a(android.content.Context, com.tencent.smtt.sdk.CookieManager$a, java.lang.String, boolean, boolean):void");
    }
}
