package com.umeng.analytics.pro;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: UMDBUtils.java */
/* loaded from: classes.dex */
public class f {
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x003d, code lost:
        if (r1 == null) goto L_0x0040;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(java.lang.String r4, android.database.sqlite.SQLiteDatabase r5) {
        /*
            r0 = 0
            if (r4 != 0) goto L_0x0004
            return r0
        L_0x0004:
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: Exception -> 0x003c, all -> 0x0035
            r2.<init>()     // Catch: Exception -> 0x003c, all -> 0x0035
            java.lang.String r3 = "select count(*) as c from sqlite_master where type ='table' and name ='"
            r2.append(r3)     // Catch: Exception -> 0x003c, all -> 0x0035
            java.lang.String r4 = r4.trim()     // Catch: Exception -> 0x003c, all -> 0x0035
            r2.append(r4)     // Catch: Exception -> 0x003c, all -> 0x0035
            java.lang.String r4 = "' "
            r2.append(r4)     // Catch: Exception -> 0x003c, all -> 0x0035
            java.lang.String r4 = r2.toString()     // Catch: Exception -> 0x003c, all -> 0x0035
            android.database.Cursor r1 = r5.rawQuery(r4, r1)     // Catch: Exception -> 0x003c, all -> 0x0035
            boolean r4 = r1.moveToNext()     // Catch: Exception -> 0x003c, all -> 0x0035
            if (r4 == 0) goto L_0x0031
            int r4 = r1.getInt(r0)     // Catch: Exception -> 0x003c, all -> 0x0035
            if (r4 <= 0) goto L_0x0031
            r4 = 1
            r0 = 1
        L_0x0031:
            r1.close()
            goto L_0x0040
        L_0x0035:
            r4 = move-exception
            if (r1 == 0) goto L_0x003b
            r1.close()
        L_0x003b:
            throw r4
        L_0x003c:
            if (r1 == 0) goto L_0x0040
            goto L_0x0031
        L_0x0040:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.f.a(java.lang.String, android.database.sqlite.SQLiteDatabase):boolean");
    }

    public static String b(Context context) {
        File databasePath = context.getDatabasePath(c.b);
        return databasePath.getParent() + File.separator;
    }

    public static String c(Context context) {
        return b(context) + "subprocess/";
    }

    public static List<String> b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : list) {
                if (Collections.frequency(arrayList, str) < 1) {
                    arrayList.add(str);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    public static void a(Context context) {
        if (context != null) {
            try {
                File databasePath = context.getDatabasePath(c.b);
                if (databasePath != null && databasePath.exists()) {
                    databasePath.delete();
                }
                d.a(context).a();
            } catch (Throwable unused) {
            }
        }
    }

    public static String a(List<String> list) {
        return TextUtils.join("!", list);
    }

    public static List<String> a(String str) {
        return new ArrayList(Arrays.asList(str.split("!")));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0.isClosed() == false) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002f, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0047, code lost:
        if (r0.isClosed() == false) goto L_0x002f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean a(android.database.sqlite.SQLiteDatabase r4, java.lang.String r5, java.lang.String r6) {
        /*
            r0 = 0
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: Exception -> 0x0040, all -> 0x0033
            r2.<init>()     // Catch: Exception -> 0x0040, all -> 0x0033
            java.lang.String r3 = "SELECT * FROM "
            r2.append(r3)     // Catch: Exception -> 0x0040, all -> 0x0033
            r2.append(r5)     // Catch: Exception -> 0x0040, all -> 0x0033
            java.lang.String r5 = " LIMIT 0"
            r2.append(r5)     // Catch: Exception -> 0x0040, all -> 0x0033
            java.lang.String r5 = r2.toString()     // Catch: Exception -> 0x0040, all -> 0x0033
            android.database.Cursor r0 = r4.rawQuery(r5, r0)     // Catch: Exception -> 0x0040, all -> 0x0033
            if (r0 == 0) goto L_0x0027
            int r4 = r0.getColumnIndex(r6)     // Catch: Exception -> 0x0040, all -> 0x0033
            r5 = -1
            if (r4 == r5) goto L_0x0027
            r4 = 1
            r1 = 1
        L_0x0027:
            if (r0 == 0) goto L_0x004a
            boolean r4 = r0.isClosed()
            if (r4 != 0) goto L_0x004a
        L_0x002f:
            r0.close()
            goto L_0x004a
        L_0x0033:
            r4 = move-exception
            if (r0 == 0) goto L_0x003f
            boolean r5 = r0.isClosed()
            if (r5 != 0) goto L_0x003f
            r0.close()
        L_0x003f:
            throw r4
        L_0x0040:
            if (r0 == 0) goto L_0x004a
            boolean r4 = r0.isClosed()
            if (r4 != 0) goto L_0x004a
            goto L_0x002f
        L_0x004a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.f.a(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String):boolean");
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        sQLiteDatabase.execSQL("alter table " + str + " add " + str2 + " " + str3);
    }
}
