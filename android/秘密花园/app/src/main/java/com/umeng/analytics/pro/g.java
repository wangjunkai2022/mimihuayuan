package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.pro.c;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: UMStoreManager.java */
/* loaded from: classes.dex */
public class g {
    public static final int a = 2049;
    public static final int b = 2050;

    /* renamed from: c  reason: collision with root package name */
    public static final int f2788c = 1000;

    /* renamed from: d  reason: collision with root package name */
    public static Context f2789d = null;

    /* renamed from: e  reason: collision with root package name */
    public static String f2790e = null;

    /* renamed from: f  reason: collision with root package name */
    public static final String f2791f = "umeng+";

    /* renamed from: g  reason: collision with root package name */
    public static final String f2792g = "ek__id";

    /* renamed from: h  reason: collision with root package name */
    public static final String f2793h = "ek_key";

    /* renamed from: i  reason: collision with root package name */
    public List<String> f2794i;

    /* renamed from: j  reason: collision with root package name */
    public List<Integer> f2795j;

    /* renamed from: k  reason: collision with root package name */
    public String f2796k;

    /* renamed from: l  reason: collision with root package name */
    public List<String> f2797l;

    /* compiled from: UMStoreManager.java */
    /* loaded from: classes.dex */
    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION,
        INSTANTSESSIONBEGIN
    }

    /* compiled from: UMStoreManager.java */
    /* loaded from: classes.dex */
    public static class b {
        public static final g a = new g();
    }

    public static g a(Context context) {
        g gVar = b.a;
        if (f2789d == null && context != null) {
            f2789d = context.getApplicationContext();
            gVar.k();
        }
        return gVar;
    }

    private void k() {
        synchronized (this) {
            l();
            this.f2794i.clear();
            this.f2797l.clear();
            this.f2795j.clear();
        }
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(f2790e)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(f2789d, "ek__id");
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = DeviceConfig.getDBencryptID(f2789d);
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(f2789d, "ek__id", multiProcessSP);
                    }
                }
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    String substring = multiProcessSP.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < substring.length(); i2++) {
                        char charAt = substring.charAt(i2);
                        if (!Character.isDigit(charAt)) {
                            sb.append(charAt);
                        } else if (Integer.parseInt(Character.toString(charAt)) == 0) {
                            sb.append(0);
                        } else {
                            sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                        }
                    }
                    f2790e = sb.toString();
                }
                if (!TextUtils.isEmpty(f2790e)) {
                    f2790e += new StringBuilder(f2790e).reverse().toString();
                    String multiProcessSP2 = UMUtils.getMultiProcessSP(f2789d, "ek_key");
                    if (TextUtils.isEmpty(multiProcessSP2)) {
                        UMUtils.setMultiProcessSP(f2789d, "ek_key", c("umeng+"));
                    } else if (!"umeng+".equals(d(multiProcessSP2))) {
                        b(true, false);
                        a(true, false);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        this.f2797l.clear();
    }

    public boolean c() {
        return this.f2797l.isEmpty();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x007d, code lost:
        if (r0 == null) goto L_0x006e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d() {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            com.umeng.analytics.pro.q r1 = com.umeng.analytics.pro.q.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r1 = r1.c()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            if (r2 == 0) goto L_0x0029
            r0.endTransaction()     // Catch: all -> 0x001f
        L_0x001f:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            return
        L_0x0029:
            r2 = 2
            java.lang.String r3 = ""
            java.lang.String r4 = "-1"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r4 = 0
        L_0x0033:
            if (r4 >= r2) goto L_0x0065
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r5.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r6 = "update __et set __i=\""
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r5.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r6 = "\" where "
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r6 = "__i"
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r6 = "=\""
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r6 = r3[r4]     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r6 = "\""
            r5.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            java.lang.String r5 = r5.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            r0.execSQL(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            int r4 = r4 + 1
            goto L_0x0033
        L_0x0065:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0078, all -> 0x0069
            goto L_0x006b
        L_0x0069:
            if (r0 == 0) goto L_0x006e
        L_0x006b:
            r0.endTransaction()     // Catch: all -> 0x006e
        L_0x006e:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L_0x0080
        L_0x0078:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x0081
            com.umeng.analytics.pro.f.a(r1)     // Catch: all -> 0x0081
            if (r0 == 0) goto L_0x006e
            goto L_0x006b
        L_0x0080:
            return
        L_0x0081:
            r1 = move-exception
            if (r0 == 0) goto L_0x0087
            r0.endTransaction()     // Catch: all -> 0x0087
        L_0x0087:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.d():void");
    }

    public boolean e() {
        return this.f2794i.isEmpty();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a4, code lost:
        if (r2 != null) goto L_0x008a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.json.JSONObject f() {
        /*
            r7 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r7.f2797l
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto L_0x000e
            return r3
        L_0x000e:
            android.content.Context r2 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0081
            com.umeng.analytics.pro.e r2 = com.umeng.analytics.pro.e.a(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0081
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0081
            r2.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            r4.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r5 = "select *  from __is where __ii=\""
            r4.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.util.List<java.lang.String> r5 = r7.f2797l     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            r6 = 0
            java.lang.Object r5 = r5.get(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r5 = (java.lang.String) r5     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            r4.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r5 = "\""
            r4.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r4 = r4.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            android.database.Cursor r4 = r2.rawQuery(r4, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            if (r4 == 0) goto L_0x0062
            boolean r5 = r4.moveToNext()     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            if (r5 == 0) goto L_0x0062
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            r5.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            int r3 = r4.getColumnIndex(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            java.lang.String r3 = r4.getString(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            int r6 = r4.getColumnIndex(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            java.lang.String r6 = r4.getString(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            r5.put(r1, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            r5.put(r0, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            r3 = r5
        L_0x0062:
            r2.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            if (r4 == 0) goto L_0x006a
            r4.close()
        L_0x006a:
            r2.endTransaction()     // Catch: all -> 0x006d
        L_0x006d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L_0x00a7
        L_0x0077:
            r5 = r3
        L_0x0078:
            r3 = r4
            goto L_0x0083
        L_0x007a:
            r5 = r3
        L_0x007b:
            r3 = r4
            goto L_0x009a
        L_0x007d:
            r5 = r3
            goto L_0x0083
        L_0x007f:
            r5 = r3
            goto L_0x009a
        L_0x0081:
            r2 = r3
            r5 = r2
        L_0x0083:
            if (r3 == 0) goto L_0x0088
            r3.close()
        L_0x0088:
            if (r2 == 0) goto L_0x008d
        L_0x008a:
            r2.endTransaction()     // Catch: all -> 0x008d
        L_0x008d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            r3 = r5
            goto L_0x00a7
        L_0x0098:
            r2 = r3
            r5 = r2
        L_0x009a:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x00a8
            com.umeng.analytics.pro.f.a(r0)     // Catch: all -> 0x00a8
            if (r3 == 0) goto L_0x00a4
            r3.close()
        L_0x00a4:
            if (r2 == 0) goto L_0x008d
            goto L_0x008a
        L_0x00a7:
            return r3
        L_0x00a8:
            r0 = move-exception
            if (r3 == 0) goto L_0x00ae
            r3.close()
        L_0x00ae:
            if (r2 == 0) goto L_0x00b3
            r2.endTransaction()     // Catch: all -> 0x00b3
        L_0x00b3:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.f():org.json.JSONObject");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00a4, code lost:
        if (r2 != null) goto L_0x008a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.json.JSONObject g() {
        /*
            r7 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r7.f2794i
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto L_0x000e
            return r3
        L_0x000e:
            android.content.Context r2 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0081
            com.umeng.analytics.pro.e r2 = com.umeng.analytics.pro.e.a(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0081
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0098, all -> 0x0081
            r2.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            r4.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r5 = "select *  from __sd where __ii=\""
            r4.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.util.List<java.lang.String> r5 = r7.f2794i     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            r6 = 0
            java.lang.Object r5 = r5.get(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r5 = (java.lang.String) r5     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            r4.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r5 = "\""
            r4.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            java.lang.String r4 = r4.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            android.database.Cursor r4 = r2.rawQuery(r4, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x007f, all -> 0x007d
            if (r4 == 0) goto L_0x0062
            boolean r5 = r4.moveToNext()     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            if (r5 == 0) goto L_0x0062
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            r5.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            int r3 = r4.getColumnIndex(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            java.lang.String r3 = r4.getString(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            int r6 = r4.getColumnIndex(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            java.lang.String r6 = r4.getString(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            r5.put(r1, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            r5.put(r0, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x007b, all -> 0x0078
            r3 = r5
        L_0x0062:
            r2.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x007a, all -> 0x0077
            if (r4 == 0) goto L_0x006a
            r4.close()
        L_0x006a:
            r2.endTransaction()     // Catch: all -> 0x006d
        L_0x006d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L_0x00a7
        L_0x0077:
            r5 = r3
        L_0x0078:
            r3 = r4
            goto L_0x0083
        L_0x007a:
            r5 = r3
        L_0x007b:
            r3 = r4
            goto L_0x009a
        L_0x007d:
            r5 = r3
            goto L_0x0083
        L_0x007f:
            r5 = r3
            goto L_0x009a
        L_0x0081:
            r2 = r3
            r5 = r2
        L_0x0083:
            if (r3 == 0) goto L_0x0088
            r3.close()
        L_0x0088:
            if (r2 == 0) goto L_0x008d
        L_0x008a:
            r2.endTransaction()     // Catch: all -> 0x008d
        L_0x008d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            r3 = r5
            goto L_0x00a7
        L_0x0098:
            r2 = r3
            r5 = r2
        L_0x009a:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x00a8
            com.umeng.analytics.pro.f.a(r0)     // Catch: all -> 0x00a8
            if (r3 == 0) goto L_0x00a4
            r3.close()
        L_0x00a4:
            if (r2 == 0) goto L_0x008d
            goto L_0x008a
        L_0x00a7:
            return r3
        L_0x00a8:
            r0 = move-exception
            if (r3 == 0) goto L_0x00ae
            r3.close()
        L_0x00ae:
            if (r2 == 0) goto L_0x00b3
            r2.endTransaction()     // Catch: all -> 0x00b3
        L_0x00b3:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.g():org.json.JSONObject");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0059, code lost:
        if (r0 == null) goto L_0x004a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void h() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            java.util.List<java.lang.Integer> r1 = r4.f2795j     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            int r1 = r1.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            if (r1 <= 0) goto L_0x003c
            r1 = 0
        L_0x0017:
            java.util.List<java.lang.Integer> r2 = r4.f2795j     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            int r2 = r2.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            if (r1 >= r2) goto L_0x003c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            r2.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            java.lang.String r3 = "delete from __et where rowid="
            r2.append(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            java.util.List<java.lang.Integer> r3 = r4.f2795j     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            java.lang.Object r3 = r3.get(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            r2.append(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            java.lang.String r2 = r2.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            r0.execSQL(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            int r1 = r1 + 1
            goto L_0x0017
        L_0x003c:
            java.util.List<java.lang.Integer> r1 = r4.f2795j     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            r1.clear()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0045
            goto L_0x0047
        L_0x0045:
            if (r0 == 0) goto L_0x004a
        L_0x0047:
            r0.endTransaction()     // Catch: all -> 0x004a
        L_0x004a:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L_0x005c
        L_0x0054:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x005d
            com.umeng.analytics.pro.f.a(r1)     // Catch: all -> 0x005d
            if (r0 == 0) goto L_0x004a
            goto L_0x0047
        L_0x005c:
            return
        L_0x005d:
            r1 = move-exception
            if (r0 == 0) goto L_0x0063
            r0.endTransaction()     // Catch: all -> 0x0063
        L_0x0063:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.h():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x002b, code lost:
        if (r0 == null) goto L_0x001c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void i() {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0026, all -> 0x0017
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0026, all -> 0x0017
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0026, all -> 0x0017
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0026, all -> 0x0017
            java.lang.String r1 = "delete from __er"
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0026, all -> 0x0017
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0026, all -> 0x0017
            goto L_0x0019
        L_0x0017:
            if (r0 == 0) goto L_0x001c
        L_0x0019:
            r0.endTransaction()     // Catch: all -> 0x001c
        L_0x001c:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L_0x002e
        L_0x0026:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x002f
            com.umeng.analytics.pro.f.a(r1)     // Catch: all -> 0x002f
            if (r0 == 0) goto L_0x001c
            goto L_0x0019
        L_0x002e:
            return
        L_0x002f:
            r1 = move-exception
            if (r0 == 0) goto L_0x0035
            r0.endTransaction()     // Catch: all -> 0x0035
        L_0x0035:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.i():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0064, code lost:
        if (r1 == null) goto L_0x0054;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void j() {
        /*
            r5 = this;
            java.lang.String r0 = "\""
            java.lang.String r1 = r5.f2796k
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            if (r1 != 0) goto L_0x0077
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x005e, all -> 0x004e
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x005e, all -> 0x004e
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x005e, all -> 0x004e
            r1.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r3.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.String r4 = "delete from __er where __i=\""
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.String r4 = r5.f2796k     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r3.append(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.String r3 = r3.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r1.execSQL(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r3.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.String r4 = "delete from __et where __i=\""
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.String r4 = r5.f2796k     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r3.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r3.append(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            java.lang.String r0 = r3.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r1.execSQL(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            r1.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x005f, all -> 0x004f
            goto L_0x0051
        L_0x004e:
            r1 = r2
        L_0x004f:
            if (r1 == 0) goto L_0x0054
        L_0x0051:
            r1.endTransaction()     // Catch: all -> 0x0054
        L_0x0054:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L_0x0077
        L_0x005e:
            r1 = r2
        L_0x005f:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x0067
            com.umeng.analytics.pro.f.a(r0)     // Catch: all -> 0x0067
            if (r1 == 0) goto L_0x0054
            goto L_0x0051
        L_0x0067:
            r0 = move-exception
            if (r1 == 0) goto L_0x006d
            r1.endTransaction()     // Catch: all -> 0x006d
        L_0x006d:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)
            r1.b()
            throw r0
        L_0x0077:
            r5.f2796k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.j():void");
    }

    public g() {
        this.f2794i = new ArrayList();
        this.f2795j = new ArrayList();
        this.f2796k = null;
        this.f2797l = new ArrayList();
    }

    private void b(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.get("__e")).longValue();
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c2 = (optJSONObject == null || optJSONObject.length() <= 0) ? str2 : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", String.valueOf(longValue));
            contentValues.put("__sp", c2);
            contentValues.put("__pp", str2);
            contentValues.put("__av", UMGlobalContext.getInstance().getAppVersion());
            contentValues.put("__vc", UMUtils.getAppVersionCode(f2789d));
            sQLiteDatabase.insert(c.C0013c.a, null, contentValues);
        } catch (Throwable unused) {
        }
    }

    private void c(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        Cursor cursor2 = null;
        r1 = null;
        r1 = null;
        String str2 = null;
        try {
            JSONObject optJSONObject = jSONObject.optJSONObject(c.d.a.f2768e);
            if (optJSONObject != null) {
                cursor = sQLiteDatabase.rawQuery("select __d from __sd where __ii=\"" + str + "\"", null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            str2 = d(cursor.getString(cursor.getColumnIndex(c.d.a.f2768e)));
                        } catch (Throwable unused) {
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                                return;
                            }
                            return;
                        }
                    }
                }
            } else {
                cursor = null;
            }
            if (optJSONObject != null) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(str2)) {
                    jSONArray = new JSONArray(str2);
                }
                jSONArray.put(optJSONObject);
                String c2 = c(jSONArray.toString());
                if (!TextUtils.isEmpty(c2)) {
                    sQLiteDatabase.execSQL("update  __sd set __d=\"" + c2 + "\" where __ii=\"" + str + "\"");
                }
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject(c.d.a.f2767d);
            if (optJSONObject2 != null) {
                String c3 = c(optJSONObject2.toString());
                if (!TextUtils.isEmpty(c3)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + c3 + "\" where __ii=\"" + str + "\"");
                }
            }
            long optLong = jSONObject.optLong(c.d.a.f2770g);
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(optLong) + "\" where __ii=\"" + str + "\"");
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable unused2) {
        }
    }

    public void a() {
        this.f2794i.clear();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0098, code lost:
        if (r2 == null) goto L_0x009d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x009a, code lost:
        r2.endTransaction();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x00ac, code lost:
        if (r2 == null) goto L_0x009d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x00a7, all -> 0x0098
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x00a7, all -> 0x0098
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: SQLiteDatabaseCorruptException -> 0x00a7, all -> 0x0098
            r3.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0096, all -> 0x0094
            r4 = 0
        L_0x0013:
            int r5 = r11.length()     // Catch: SQLiteDatabaseCorruptException -> 0x0096, all -> 0x0094
            if (r4 >= r5) goto L_0x008d
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: Exception -> 0x008a, all -> 0x0094
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: Exception -> 0x008a, all -> 0x0094
            r6.<init>()     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r7 = r5.optString(r1)     // Catch: Exception -> 0x008a, all -> 0x0094
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L_0x0034
            boolean r8 = r9.equals(r7)     // Catch: Exception -> 0x008a, all -> 0x0094
            if (r8 == 0) goto L_0x0043
        L_0x0034:
            com.umeng.analytics.pro.q r7 = com.umeng.analytics.pro.q.a()     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r7 = r7.b()     // Catch: Exception -> 0x008a, all -> 0x0094
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: Exception -> 0x008a, all -> 0x0094
            if (r8 == 0) goto L_0x0043
            r7 = r9
        L_0x0043:
            r6.put(r1, r7)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: Exception -> 0x008a, all -> 0x0094
            r6.put(r7, r8)     // Catch: Exception -> 0x008a, all -> 0x0094
            int r7 = r5.optInt(r0)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: Exception -> 0x008a, all -> 0x0094
            r6.put(r0, r7)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2789d     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: Exception -> 0x008a, all -> 0x0094
            r6.put(r7, r8)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2789d     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: Exception -> 0x008a, all -> 0x0094
            r6.put(r7, r8)     // Catch: Exception -> 0x008a, all -> 0x0094
            r5.remove(r1)     // Catch: Exception -> 0x008a, all -> 0x0094
            r5.remove(r0)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r5 = r10.c(r5)     // Catch: Exception -> 0x008a, all -> 0x0094
            r6.put(r7, r5)     // Catch: Exception -> 0x008a, all -> 0x0094
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: Exception -> 0x008a, all -> 0x0094
        L_0x008a:
            int r4 = r4 + 1
            goto L_0x0013
        L_0x008d:
            r3.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0096, all -> 0x0094
            r3.endTransaction()     // Catch: all -> 0x009d
            goto L_0x009d
        L_0x0094:
            r2 = r3
            goto L_0x0098
        L_0x0096:
            r2 = r3
            goto L_0x00a7
        L_0x0098:
            if (r2 == 0) goto L_0x009d
        L_0x009a:
            r2.endTransaction()     // Catch: all -> 0x009d
        L_0x009d:
            android.content.Context r11 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r11 = com.umeng.analytics.pro.e.a(r11)
            r11.b()
            goto L_0x00af
        L_0x00a7:
            android.content.Context r11 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x00b0
            com.umeng.analytics.pro.f.a(r11)     // Catch: all -> 0x00b0
            if (r2 == 0) goto L_0x009d
            goto L_0x009a
        L_0x00af:
            return
        L_0x00b0:
            r11 = move-exception
            if (r2 == 0) goto L_0x00b6
            r2.endTransaction()     // Catch: all -> 0x00b6
        L_0x00b6:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(org.json.JSONArray):void");
    }

    public String d(String str) {
        try {
            return TextUtils.isEmpty(f2790e) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f2790e.getBytes()));
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject b(boolean z) {
        JSONObject jSONObject = new JSONObject();
        b(jSONObject, z);
        return jSONObject;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0090, code lost:
        if (r1 != null) goto L_0x0078;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void b(org.json.JSONObject r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0070
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0070
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0085, all -> 0x0070
            r1.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            java.lang.String r2 = "select *  from __er"
            boolean r3 = android.text.TextUtils.isEmpty(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            if (r3 != 0) goto L_0x002c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            r2.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            java.lang.String r3 = "select *  from __er where __i=\""
            r2.append(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            r2.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            java.lang.String r6 = "\""
            r2.append(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            java.lang.String r2 = r2.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
        L_0x002c:
            android.database.Cursor r0 = r1.rawQuery(r2, r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            if (r0 == 0) goto L_0x0065
            org.json.JSONArray r6 = new org.json.JSONArray     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            r6.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
        L_0x0037:
            boolean r2 = r0.moveToNext()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            if (r2 == 0) goto L_0x005a
            java.lang.String r2 = "__a"
            int r2 = r0.getColumnIndex(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            java.lang.String r2 = r0.getString(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            if (r3 != 0) goto L_0x0037
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            java.lang.String r2 = r4.d(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            r3.<init>(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            r6.put(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            goto L_0x0037
        L_0x005a:
            int r2 = r6.length()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            if (r2 <= 0) goto L_0x0065
            java.lang.String r2 = "error"
            r5.put(r2, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
        L_0x0065:
            r1.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0086, all -> 0x006e
            if (r0 == 0) goto L_0x0078
            r0.close()
            goto L_0x0078
        L_0x006e:
            goto L_0x0071
        L_0x0070:
            r1 = r0
        L_0x0071:
            if (r0 == 0) goto L_0x0076
            r0.close()
        L_0x0076:
            if (r1 == 0) goto L_0x007b
        L_0x0078:
            r1.endTransaction()     // Catch: all -> 0x007b
        L_0x007b:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            goto L_0x0093
        L_0x0085:
            r1 = r0
        L_0x0086:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x0094
            com.umeng.analytics.pro.f.a(r5)     // Catch: all -> 0x0094
            if (r0 == 0) goto L_0x0090
            r0.close()
        L_0x0090:
            if (r1 == 0) goto L_0x007b
            goto L_0x0078
        L_0x0093:
            return
        L_0x0094:
            r5 = move-exception
            if (r0 == 0) goto L_0x009a
            r0.close()
        L_0x009a:
            if (r1 == 0) goto L_0x009f
            r1.endTransaction()     // Catch: all -> 0x009f
        L_0x009f:
            android.content.Context r6 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.e.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(org.json.JSONObject, java.lang.String):void");
    }

    public String c(String str) {
        try {
            return TextUtils.isEmpty(f2790e) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f2790e.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0056, code lost:
        if (r0 == null) goto L_0x005b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0058, code lost:
        r0.endTransaction();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x006a, code lost:
        if (r0 == null) goto L_0x005b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0065, all -> 0x0056
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0065, all -> 0x0056
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0065, all -> 0x0056
            r1.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            r2.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r5 = r4.c(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            if (r6 != 0) goto L_0x004b
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            r2.put(r5, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            r2.put(r5, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            r2.put(r5, r6)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
        L_0x004b:
            r1.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0054, all -> 0x0052
            r1.endTransaction()     // Catch: all -> 0x005b
            goto L_0x005b
        L_0x0052:
            r0 = r1
            goto L_0x0056
        L_0x0054:
            r0 = r1
            goto L_0x0065
        L_0x0056:
            if (r0 == 0) goto L_0x005b
        L_0x0058:
            r0.endTransaction()     // Catch: all -> 0x005b
        L_0x005b:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            goto L_0x006d
        L_0x0065:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x006f
            com.umeng.analytics.pro.f.a(r5)     // Catch: all -> 0x006f
            if (r0 == 0) goto L_0x005b
            goto L_0x0058
        L_0x006d:
            r5 = 0
            return r5
        L_0x006f:
            r5 = move-exception
            if (r0 == 0) goto L_0x0075
            r0.endTransaction()     // Catch: all -> 0x0075
        L_0x0075:
            android.content.Context r6 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.e.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:43:0x00e3, code lost:
        if (r1 != null) goto L_0x00c9;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String b(org.json.JSONObject r11, boolean r12) {
        /*
        // Method dump skipped, instructions count: 252
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(org.json.JSONObject, boolean):java.lang.String");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0085, code lost:
        if (r2 == null) goto L_0x008a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0087, code lost:
        r2.endTransaction();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0099, code lost:
        if (r2 == null) goto L_0x008a;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.g.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L_0x0006
            return r1
        L_0x0006:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0094, all -> 0x0085
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0094, all -> 0x0085
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0094, all -> 0x0085
            r3.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            com.umeng.analytics.pro.g$a r4 = com.umeng.analytics.pro.g.a.BEGIN     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            if (r9 != r4) goto L_0x004f
            java.lang.Object r8 = r8.opt(r0)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            long r8 = r8.longValue()     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            r4.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            r4.put(r0, r7)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            r4.put(r7, r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            r4.put(r7, r8)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            goto L_0x007a
        L_0x004f:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.INSTANTSESSIONBEGIN     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            if (r9 != r0) goto L_0x0057
            r6.b(r7, r8, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            goto L_0x007a
        L_0x0057:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.END     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            if (r9 != r0) goto L_0x005f
            r6.a(r7, r8, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            goto L_0x007a
        L_0x005f:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.PAGE     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            if (r9 != r0) goto L_0x0069
            java.lang.String r9 = "__a"
            r6.a(r7, r8, r3, r9)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            goto L_0x007a
        L_0x0069:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.AUTOPAGE     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            if (r9 != r0) goto L_0x0073
            java.lang.String r9 = "__b"
            r6.a(r7, r8, r3, r9)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            goto L_0x007a
        L_0x0073:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.NEWSESSION     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            if (r9 != r0) goto L_0x007a
            r6.c(r7, r8, r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
        L_0x007a:
            r3.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0083, all -> 0x0081
            r3.endTransaction()     // Catch: all -> 0x008a
            goto L_0x008a
        L_0x0081:
            r2 = r3
            goto L_0x0085
        L_0x0083:
            r2 = r3
            goto L_0x0094
        L_0x0085:
            if (r2 == 0) goto L_0x008a
        L_0x0087:
            r2.endTransaction()     // Catch: all -> 0x008a
        L_0x008a:
            android.content.Context r7 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r7 = com.umeng.analytics.pro.e.a(r7)
            r7.b()
            goto L_0x009c
        L_0x0094:
            android.content.Context r7 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x009d
            com.umeng.analytics.pro.f.a(r7)     // Catch: all -> 0x009d
            if (r2 == 0) goto L_0x008a
            goto L_0x0087
        L_0x009c:
            return r1
        L_0x009d:
            r7 = move-exception
            if (r2 == 0) goto L_0x00a3
            r2.endTransaction()     // Catch: all -> 0x00a3
        L_0x00a3:
            android.content.Context r8 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r8 = com.umeng.analytics.pro.e.a(r8)
            r8.b()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.g$a):boolean");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0065, code lost:
        if (r0 == null) goto L_0x0056;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(boolean r3, boolean r4) {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            if (r4 == 0) goto L_0x0018
            if (r3 == 0) goto L_0x004d
            java.lang.String r3 = "delete from __sd"
            r0.execSQL(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            goto L_0x004d
        L_0x0018:
            java.util.List<java.lang.String> r3 = r2.f2794i     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            int r3 = r3.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            if (r3 <= 0) goto L_0x004d
            r3 = 0
        L_0x0021:
            java.util.List<java.lang.String> r4 = r2.f2794i     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            int r4 = r4.size()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            if (r3 >= r4) goto L_0x004d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            r4.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            java.lang.String r1 = "delete from __sd where __ii=\""
            r4.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            java.util.List<java.lang.String> r1 = r2.f2794i     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            java.lang.Object r1 = r1.get(r3)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            java.lang.String r1 = (java.lang.String) r1     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            r4.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            java.lang.String r1 = "\""
            r4.append(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            java.lang.String r4 = r4.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            int r3 = r3 + 1
            goto L_0x0021
        L_0x004d:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0060, all -> 0x0051
            goto L_0x0053
        L_0x0051:
            if (r0 == 0) goto L_0x0056
        L_0x0053:
            r0.endTransaction()     // Catch: all -> 0x0056
        L_0x0056:
            android.content.Context r3 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)
            r3.b()
            goto L_0x0068
        L_0x0060:
            android.content.Context r3 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x0069
            com.umeng.analytics.pro.f.a(r3)     // Catch: all -> 0x0069
            if (r0 == 0) goto L_0x0056
            goto L_0x0053
        L_0x0068:
            return
        L_0x0069:
            r3 = move-exception
            if (r0 == 0) goto L_0x006f
            r0.endTransaction()     // Catch: all -> 0x006f
        L_0x006f:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(boolean, boolean):void");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.opt(c.d.a.f2770g)).longValue();
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c2 = (optJSONObject == null || optJSONObject.length() <= 0) ? str2 : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + longValue + "\", __sp=\"" + c2 + "\", __pp=\"" + str2 + "\" where __ii=\"" + str + "\"");
        } catch (Throwable unused) {
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0052, code lost:
        if (r3 != null) goto L_0x0054;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long a(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "select __f from __sd where __ii=\""
            java.lang.String r1 = "\""
            java.lang.String r5 = f.b.a.a.a.g(r0, r5, r1)
            r0 = 0
            r1 = 0
            android.content.Context r3 = com.umeng.analytics.pro.g.f2789d     // Catch: Exception -> 0x004c, all -> 0x0036
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)     // Catch: Exception -> 0x004c, all -> 0x0036
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: Exception -> 0x004c, all -> 0x0036
            r3.beginTransaction()     // Catch: Exception -> 0x002c, all -> 0x0034
            android.database.Cursor r0 = r3.rawQuery(r5, r0)     // Catch: Exception -> 0x002c, all -> 0x0034
            if (r0 == 0) goto L_0x002e
            r0.moveToFirst()     // Catch: Exception -> 0x002c, all -> 0x0034
            java.lang.String r5 = "__f"
            int r5 = r0.getColumnIndex(r5)     // Catch: Exception -> 0x002c, all -> 0x0034
            long r1 = r0.getLong(r5)     // Catch: Exception -> 0x002c, all -> 0x0034
            goto L_0x002e
        L_0x002c:
            goto L_0x004d
        L_0x002e:
            if (r0 == 0) goto L_0x0054
            r0.close()     // Catch: Exception -> 0x0057
            goto L_0x0054
        L_0x0034:
            r5 = move-exception
            goto L_0x0038
        L_0x0036:
            r5 = move-exception
            r3 = r0
        L_0x0038:
            if (r0 == 0) goto L_0x003d
            r0.close()     // Catch: Exception -> 0x0042
        L_0x003d:
            if (r3 == 0) goto L_0x0042
            r3.endTransaction()     // Catch: Exception -> 0x0042
        L_0x0042:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r5
        L_0x004c:
            r3 = r0
        L_0x004d:
            if (r0 == 0) goto L_0x0052
            r0.close()     // Catch: Exception -> 0x0057
        L_0x0052:
            if (r3 == 0) goto L_0x0057
        L_0x0054:
            r3.endTransaction()     // Catch: Exception -> 0x0057
        L_0x0057:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String):long");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0045, code lost:
        if (r0 == null) goto L_0x0036;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            boolean r1 = android.text.TextUtils.isEmpty(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            if (r1 != 0) goto L_0x002d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            java.lang.String r2 = "delete from __is where __ii=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            java.lang.String r4 = "\""
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            java.lang.String r4 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
        L_0x002d:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0040, all -> 0x0031
            goto L_0x0033
        L_0x0031:
            if (r0 == 0) goto L_0x0036
        L_0x0033:
            r0.endTransaction()     // Catch: all -> 0x0036
        L_0x0036:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            goto L_0x0048
        L_0x0040:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x0049
            com.umeng.analytics.pro.f.a(r4)     // Catch: all -> 0x0049
            if (r0 == 0) goto L_0x0036
            goto L_0x0033
        L_0x0048:
            return
        L_0x0049:
            r4 = move-exception
            if (r0 == 0) goto L_0x004f
            r0.endTransaction()     // Catch: all -> 0x004f
        L_0x004f:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(java.lang.String):void");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase, String str2) throws JSONException {
        JSONArray jSONArray;
        Cursor cursor = null;
        r5 = null;
        String str3 = null;
        try {
            if ("__a".equals(str2)) {
                jSONArray = jSONObject.optJSONArray("__a");
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
            } else if (c.d.a.f2766c.equals(str2)) {
                jSONArray = jSONObject.optJSONArray(c.d.a.f2766c);
                if (jSONArray == null || jSONArray.length() <= 0) {
                    return;
                }
            } else {
                jSONArray = null;
            }
            Cursor rawQuery = sQLiteDatabase.rawQuery("select " + str2 + " from " + c.d.a + " where __ii=\"" + str + "\"", null);
            if (rawQuery != null) {
                while (rawQuery.moveToNext()) {
                    try {
                        str3 = d(rawQuery.getString(rawQuery.getColumnIndex(str2)));
                    } catch (Throwable unused) {
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            if (!TextUtils.isEmpty(str3)) {
                jSONArray2 = new JSONArray(str3);
            }
            if (jSONArray2.length() <= 1000) {
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    try {
                        JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                        if (jSONObject2 != null) {
                            jSONArray2.put(jSONObject2);
                        }
                    } catch (JSONException unused2) {
                    }
                }
                String c2 = c(jSONArray2.toString());
                if (!TextUtils.isEmpty(c2)) {
                    sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + c2 + "\" where __ii=\"" + str + "\"");
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } else if (rawQuery != null) {
                rawQuery.close();
            }
        } catch (Throwable unused3) {
        }
    }

    public JSONObject a(boolean z) {
        a();
        this.f2795j.clear();
        JSONObject jSONObject = new JSONObject();
        if (!z) {
            a(jSONObject, z);
            b(jSONObject, (String) null);
            a(jSONObject, (String) null);
        } else {
            String a2 = a(jSONObject, z);
            if (!TextUtils.isEmpty(a2)) {
                b(jSONObject, a2);
                a(jSONObject, a2);
            }
        }
        return jSONObject;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:74:0x018e, code lost:
        if (r1 != null) goto L_0x0176;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(org.json.JSONObject r10, java.lang.String r11) {
        /*
        // Method dump skipped, instructions count: 423
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(org.json.JSONObject, java.lang.String):void");
    }

    private String a(JSONObject jSONObject, boolean z) {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        String str;
        String str2 = null;
        str2 = null;
        str2 = null;
        str2 = null;
        str2 = null;
        r0 = null;
        str2 = null;
        Cursor cursor2 = null;
        try {
            sQLiteDatabase = e.a(f2789d).a();
            try {
                sQLiteDatabase.beginTransaction();
                cursor = sQLiteDatabase.rawQuery("select *  from __sd", null);
                if (cursor != null) {
                    try {
                        JSONArray jSONArray = new JSONArray();
                        while (cursor.moveToNext()) {
                            JSONObject jSONObject2 = new JSONObject();
                            String string = cursor.getString(cursor.getColumnIndex(c.d.a.f2770g));
                            String string2 = cursor.getString(cursor.getColumnIndex("__e"));
                            str2 = cursor.getString(cursor.getColumnIndex("__ii"));
                            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                                if (Long.parseLong(string) - Long.parseLong(string2) > 0) {
                                    String string3 = cursor.getString(cursor.getColumnIndex("__a"));
                                    String string4 = cursor.getString(cursor.getColumnIndex(c.d.a.f2766c));
                                    String string5 = cursor.getString(cursor.getColumnIndex(c.d.a.f2767d));
                                    String string6 = cursor.getString(cursor.getColumnIndex(c.d.a.f2768e));
                                    this.f2794i.add(str2);
                                    String string7 = cursor.getString(cursor.getColumnIndex("__sp"));
                                    String string8 = cursor.getString(cursor.getColumnIndex("__pp"));
                                    jSONObject2.put("id", str2);
                                    jSONObject2.put(b.p, string2);
                                    jSONObject2.put(b.q, string);
                                    jSONObject2.put("duration", Long.parseLong(string) - Long.parseLong(string2));
                                    if (!TextUtils.isEmpty(string3)) {
                                        jSONObject2.put("pages", new JSONArray(d(string3)));
                                    }
                                    if (!TextUtils.isEmpty(string4) && AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                                        jSONObject2.put(b.t, new JSONArray(d(string4)));
                                    }
                                    if (!TextUtils.isEmpty(string5)) {
                                        jSONObject2.put(b.E, new JSONObject(d(string5)));
                                    }
                                    if (!TextUtils.isEmpty(string6)) {
                                        jSONObject2.put(b.A, new JSONArray(d(string6)));
                                    }
                                    if (!TextUtils.isEmpty(string7)) {
                                        jSONObject2.put(b.ar, new JSONObject(d(string7)));
                                    }
                                    if (!TextUtils.isEmpty(string8)) {
                                        jSONObject2.put(b.as, new JSONObject(d(string8)));
                                    }
                                    if (jSONObject2.length() > 0) {
                                        jSONArray.put(jSONObject2);
                                    }
                                }
                                if (z) {
                                    break;
                                }
                            }
                        }
                        if (this.f2794i.size() < 1) {
                            cursor.close();
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable unused) {
                            }
                            e.a(f2789d).b();
                            return str2;
                        } else if (jSONArray.length() > 0) {
                            jSONObject.put(b.n, jSONArray);
                        }
                    } catch (SQLiteDatabaseCorruptException unused2) {
                        try {
                            f.a(f2789d);
                        } finally {
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (sQLiteDatabase != null) {
                                try {
                                    sQLiteDatabase.endTransaction();
                                } catch (Throwable unused3) {
                                }
                            }
                            e.a(f2789d).b();
                        }
                    } catch (Throwable unused4) {
                        str = str2;
                        cursor2 = cursor;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable unused5) {
                            }
                        }
                        e.a(f2789d).b();
                        return str;
                    }
                }
                sQLiteDatabase.setTransactionSuccessful();
                if (cursor != null) {
                    cursor.close();
                }
            } catch (SQLiteDatabaseCorruptException unused6) {
                cursor = null;
            } catch (Throwable unused7) {
                str = null;
            }
        } catch (SQLiteDatabaseCorruptException unused8) {
            sQLiteDatabase = null;
            cursor = null;
        } catch (Throwable unused9) {
            sQLiteDatabase = null;
            str = null;
        }
        return str2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x005f, code lost:
        if (r0 == null) goto L_0x0050;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            if (r5 == 0) goto L_0x0018
            if (r4 == 0) goto L_0x0047
            java.lang.String r4 = "delete from __is"
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            goto L_0x0047
        L_0x0018:
            java.util.List<java.lang.String> r4 = r3.f2797l     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            int r4 = r4.size()     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            if (r4 <= 0) goto L_0x0047
            r5 = 0
        L_0x0021:
            if (r5 >= r4) goto L_0x0047
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            java.lang.String r2 = "delete from __is where __ii=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            java.util.List<java.lang.String> r2 = r3.f2797l     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            java.lang.Object r2 = r2.get(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            java.lang.String r2 = (java.lang.String) r2     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            java.lang.String r2 = "\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            java.lang.String r1 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            int r5 = r5 + 1
            goto L_0x0021
        L_0x0047:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x005a, all -> 0x004b
            goto L_0x004d
        L_0x004b:
            if (r0 == 0) goto L_0x0050
        L_0x004d:
            r0.endTransaction()     // Catch: all -> 0x0050
        L_0x0050:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            goto L_0x0062
        L_0x005a:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x0063
            com.umeng.analytics.pro.f.a(r4)     // Catch: all -> 0x0063
            if (r0 == 0) goto L_0x0050
            goto L_0x004d
        L_0x0062:
            return
        L_0x0063:
            r4 = move-exception
            if (r0 == 0) goto L_0x0069
            r0.endTransaction()     // Catch: all -> 0x0069
        L_0x0069:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(boolean, boolean):void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0078, code lost:
        if (r0 == null) goto L_0x0069;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(boolean r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r4 = "\""
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2789d     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r0.beginTransaction()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            if (r1 != 0) goto L_0x0060
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.String r2 = "delete from __er where __i=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.String r1 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.String r2 = "delete from __et where __i=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.String r1 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r0.execSQL(r1)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.util.List<java.lang.Integer> r1 = r3.f2795j     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.clear()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.<init>()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.String r2 = "delete from __sd where __ii=\""
            r1.append(r2)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.append(r5)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r1.append(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            java.lang.String r4 = r1.toString()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            r0.execSQL(r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
        L_0x0060:
            r0.setTransactionSuccessful()     // Catch: SQLiteDatabaseCorruptException -> 0x0073, all -> 0x0064
            goto L_0x0066
        L_0x0064:
            if (r0 == 0) goto L_0x0069
        L_0x0066:
            r0.endTransaction()     // Catch: all -> 0x0069
        L_0x0069:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            goto L_0x007b
        L_0x0073:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2789d     // Catch: all -> 0x007c
            com.umeng.analytics.pro.f.a(r4)     // Catch: all -> 0x007c
            if (r0 == 0) goto L_0x0069
            goto L_0x0066
        L_0x007b:
            return
        L_0x007c:
            r4 = move-exception
            if (r0 == 0) goto L_0x0082
            r0.endTransaction()     // Catch: all -> 0x0082
        L_0x0082:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2789d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(boolean, java.lang.String):void");
    }
}
