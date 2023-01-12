package com.tencent.smtt.sdk;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.smtt.utils.TbsLog;
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
            StringBuilder o = f.b.a.a.a.o("/data/data/");
            o.append(context.getPackageName());
            o.append(File.separator);
            o.append("app_webview");
            b = new File(f.b.a.a.a.l(o, File.separator, "Cookies"));
        }
        return b;
    }

    public static boolean b(Context context) {
        if (context == null) {
            return false;
        }
        com.tencent.smtt.utils.f.a(a(context), false);
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

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
        r0 = java.lang.Integer.parseInt(r1.getString(1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
        if (r4.isOpen() != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0064, code lost:
        if (r4.isOpen() != false) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int d(android.content.Context r4) {
        /*
            java.lang.System.currentTimeMillis()
            r0 = 0
            r1 = 0
            android.database.sqlite.SQLiteDatabase r4 = c(r4)     // Catch: java.lang.Throwable -> L58
            if (r4 != 0) goto L18
            r0 = -1
            if (r4 == 0) goto L17
            boolean r1 = r4.isOpen()
            if (r1 == 0) goto L17
            r4.close()
        L17:
            return r0
        L18:
            java.lang.String r2 = "select * from meta"
            android.database.Cursor r1 = r4.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L56
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L56
            r1.getColumnCount()     // Catch: java.lang.Throwable -> L56
            if (r2 <= 0) goto L49
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L49
        L2d:
            java.lang.String r2 = r1.getString(r0)     // Catch: java.lang.Throwable -> L56
            java.lang.String r3 = "version"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L56
            if (r2 == 0) goto L43
            r2 = 1
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L56
            int r0 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L56
            goto L49
        L43:
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L56
            if (r2 != 0) goto L2d
        L49:
            r1.close()
            boolean r1 = r4.isOpen()
            if (r1 == 0) goto L67
        L52:
            r4.close()
            goto L67
        L56:
            goto L59
        L58:
            r4 = r1
        L59:
            if (r1 == 0) goto L5e
            r1.close()
        L5e:
            if (r4 == 0) goto L67
            boolean r1 = r4.isOpen()
            if (r1 == 0) goto L67
            goto L52
        L67:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.h.d(android.content.Context):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        if (r4.isOpen() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        if (r4.isOpen() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        r4.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0043, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.ArrayList<java.lang.String> a(android.database.sqlite.SQLiteDatabase r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.lang.String r2 = "select * from sqlite_master where type='table'"
            android.database.Cursor r0 = r4.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L34
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L34
            if (r2 == 0) goto L2a
        L15:
            r2 = 1
            java.lang.String r2 = r0.getString(r2)     // Catch: java.lang.Throwable -> L34
            r3 = 4
            r0.getString(r3)     // Catch: java.lang.Throwable -> L34
            r1.add(r2)     // Catch: java.lang.Throwable -> L34
            a(r4, r2)     // Catch: java.lang.Throwable -> L34
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L34
            if (r2 != 0) goto L15
        L2a:
            r0.close()
            boolean r0 = r4.isOpen()
            if (r0 == 0) goto L43
            goto L40
        L34:
            if (r0 == 0) goto L3a
            r0.close()
        L3a:
            boolean r0 = r4.isOpen()
            if (r0 == 0) goto L43
        L40:
            r4.close()
        L43:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.h.a(android.database.sqlite.SQLiteDatabase):java.util.ArrayList");
    }

    public static String a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("select * from " + str, null);
        int count = rawQuery.getCount();
        int columnCount = rawQuery.getColumnCount();
        StringBuilder sb = new StringBuilder();
        sb.append("raws:" + count + ",columns:" + columnCount + com.umeng.commonsdk.internal.utils.g.a);
        if (count > 0 && rawQuery.moveToFirst()) {
            do {
                sb.append(com.umeng.commonsdk.internal.utils.g.a);
                for (int i2 = 0; i2 < columnCount; i2++) {
                    try {
                        sb.append(rawQuery.getString(i2));
                        sb.append(",");
                    } catch (Exception unused) {
                    }
                }
                sb.append(com.umeng.commonsdk.internal.utils.g.a);
            } while (rawQuery.moveToNext());
            return sb.toString();
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b6, code lost:
        if (r0.isOpen() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b8, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c9, code lost:
        if (r0.isOpen() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d0, code lost:
        if (r2.isEmpty() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d2, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d3, code lost:
        b(r9);
        r10 = r2.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e2, code lost:
        if (r10.hasNext() == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e4, code lost:
        r11 = (java.util.Map.Entry) r10.next();
        com.tencent.smtt.sdk.CookieManager.getInstance().setCookie((java.lang.String) r11.getKey(), (java.lang.String) r11.getValue(), true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00fe, code lost:
        com.tencent.smtt.sdk.CookieManager.getInstance().flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0105, code lost:
        if (r12 == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0107, code lost:
        a(c(r9));
        r10 = d(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0113, code lost:
        if (r10 == (-1)) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0115, code lost:
        com.tencent.smtt.sdk.CookieManager.getInstance();
        com.tencent.smtt.sdk.CookieManager.setROMCookieDBVersion(r9, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x011b, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.content.Context r9, com.tencent.smtt.sdk.CookieManager.a r10, java.lang.String r11, boolean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.h.a(android.content.Context, com.tencent.smtt.sdk.CookieManager$a, java.lang.String, boolean, boolean):void");
    }
}
