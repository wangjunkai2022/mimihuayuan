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
    public static final int f2863c = 1000;

    /* renamed from: d  reason: collision with root package name */
    public static Context f2864d = null;

    /* renamed from: e  reason: collision with root package name */
    public static String f2865e = null;

    /* renamed from: f  reason: collision with root package name */
    public static final String f2866f = "umeng+";

    /* renamed from: g  reason: collision with root package name */
    public static final String f2867g = "ek__id";

    /* renamed from: h  reason: collision with root package name */
    public static final String f2868h = "ek_key";

    /* renamed from: i  reason: collision with root package name */
    public List<String> f2869i;

    /* renamed from: j  reason: collision with root package name */
    public List<Integer> f2870j;

    /* renamed from: k  reason: collision with root package name */
    public String f2871k;

    /* renamed from: l  reason: collision with root package name */
    public List<String> f2872l;

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
        if (f2864d == null && context != null) {
            f2864d = context.getApplicationContext();
            gVar.k();
        }
        return gVar;
    }

    private void k() {
        synchronized (this) {
            l();
            this.f2869i.clear();
            this.f2872l.clear();
            this.f2870j.clear();
        }
    }

    private void l() {
        try {
            if (TextUtils.isEmpty(f2865e)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(f2864d, "ek__id");
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = DeviceConfig.getDBencryptID(f2864d);
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(f2864d, "ek__id", multiProcessSP);
                    }
                }
                if (!TextUtils.isEmpty(multiProcessSP)) {
                    String substring = multiProcessSP.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < substring.length(); i2++) {
                        char charAt = substring.charAt(i2);
                        if (Character.isDigit(charAt)) {
                            if (Integer.parseInt(Character.toString(charAt)) == 0) {
                                sb.append(0);
                            } else {
                                sb.append(10 - Integer.parseInt(Character.toString(charAt)));
                            }
                        } else {
                            sb.append(charAt);
                        }
                    }
                    f2865e = sb.toString();
                }
                if (TextUtils.isEmpty(f2865e)) {
                    return;
                }
                f2865e += new StringBuilder(f2865e).reverse().toString();
                String multiProcessSP2 = UMUtils.getMultiProcessSP(f2864d, "ek_key");
                if (TextUtils.isEmpty(multiProcessSP2)) {
                    UMUtils.setMultiProcessSP(f2864d, "ek_key", c("umeng+"));
                } else if (!"umeng+".equals(d(multiProcessSP2))) {
                    b(true, false);
                    a(true, false);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void b() {
        this.f2872l.clear();
    }

    public boolean c() {
        return this.f2872l.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x007d, code lost:
        if (r0 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d() {
        /*
            r7 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            com.umeng.analytics.pro.q r1 = com.umeng.analytics.pro.q.a()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r1 = r1.c()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            if (r2 == 0) goto L29
            r0.endTransaction()     // Catch: java.lang.Throwable -> L1f
        L1f:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            return
        L29:
            r2 = 2
            java.lang.String r3 = ""
            java.lang.String r4 = "-1"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4}     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r4 = 0
        L33:
            if (r4 >= r2) goto L65
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r5.<init>()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "update __et set __i=\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r5.append(r1)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "\" where "
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "__i"
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "=\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r6 = r3[r4]     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r6 = "\""
            r5.append(r6)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            r0.execSQL(r5)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            int r4 = r4 + 1
            goto L33
        L65:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteDatabaseCorruptException -> L78
            goto L6b
        L69:
            if (r0 == 0) goto L6e
        L6b:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L6e
        L6e:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L80
        L78:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L81
            com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L81
            if (r0 == 0) goto L6e
            goto L6b
        L80:
            return
        L81:
            r1 = move-exception
            if (r0 == 0) goto L87
            r0.endTransaction()     // Catch: java.lang.Throwable -> L87
        L87:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.d():void");
    }

    public boolean e() {
        return this.f2869i.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008a, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public org.json.JSONObject f() {
        /*
            r7 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r7.f2872l
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L98
            com.umeng.analytics.pro.e r2 = com.umeng.analytics.pro.e.a(r2)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L98
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L98
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r4.<init>()     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r5 = "select *  from __is where __ii=\""
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.util.List<java.lang.String> r5 = r7.f2872l     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r6 = 0
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r5 = "\""
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            android.database.Cursor r4 = r2.rawQuery(r4, r3)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            if (r4 == 0) goto L62
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            if (r5 == 0) goto L62
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            r5.<init>()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            int r3 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            int r6 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            r5.put(r1, r3)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            r3 = r5
        L62:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            if (r4 == 0) goto L6a
            r4.close()
        L6a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L6d
        L6d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto La7
        L77:
            r5 = r3
        L78:
            r3 = r4
            goto L83
        L7a:
            r5 = r3
        L7b:
            r3 = r4
            goto L9a
        L7d:
            r5 = r3
            goto L83
        L7f:
            r5 = r3
            goto L9a
        L81:
            r2 = r3
            r5 = r2
        L83:
            if (r3 == 0) goto L88
            r3.close()
        L88:
            if (r2 == 0) goto L8d
        L8a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L8d
        L8d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            r3 = r5
            goto La7
        L98:
            r2 = r3
            r5 = r2
        L9a:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> La8
            com.umeng.analytics.pro.f.a(r0)     // Catch: java.lang.Throwable -> La8
            if (r3 == 0) goto La4
            r3.close()
        La4:
            if (r2 == 0) goto L8d
            goto L8a
        La7:
            return r3
        La8:
            r0 = move-exception
            if (r3 == 0) goto Lae
            r3.close()
        Lae:
            if (r2 == 0) goto Lb3
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb3
        Lb3:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.f():org.json.JSONObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008a, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
        if (r2 != null) goto L30;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public org.json.JSONObject g() {
        /*
            r7 = this;
            java.lang.String r0 = "__vc"
            java.lang.String r1 = "__av"
            java.util.List<java.lang.String> r2 = r7.f2869i
            boolean r2 = r2.isEmpty()
            r3 = 0
            if (r2 == 0) goto Le
            return r3
        Le:
            android.content.Context r2 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L98
            com.umeng.analytics.pro.e r2 = com.umeng.analytics.pro.e.a(r2)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L98
            android.database.sqlite.SQLiteDatabase r2 = r2.a()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L98
            r2.beginTransaction()     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r4.<init>()     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r5 = "select *  from __sd where __ii=\""
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.util.List<java.lang.String> r5 = r7.f2869i     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r6 = 0
            java.lang.Object r5 = r5.get(r6)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r5 = "\""
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            android.database.Cursor r4 = r2.rawQuery(r4, r3)     // Catch: java.lang.Throwable -> L7d android.database.sqlite.SQLiteDatabaseCorruptException -> L7f
            if (r4 == 0) goto L62
            boolean r5 = r4.moveToNext()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            if (r5 == 0) goto L62
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            r5.<init>()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            int r3 = r4.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            int r6 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            java.lang.String r6 = r4.getString(r6)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            r5.put(r1, r3)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            r5.put(r0, r6)     // Catch: java.lang.Throwable -> L78 android.database.sqlite.SQLiteDatabaseCorruptException -> L7b
            r3 = r5
        L62:
            r2.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L77 android.database.sqlite.SQLiteDatabaseCorruptException -> L7a
            if (r4 == 0) goto L6a
            r4.close()
        L6a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L6d
        L6d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto La7
        L77:
            r5 = r3
        L78:
            r3 = r4
            goto L83
        L7a:
            r5 = r3
        L7b:
            r3 = r4
            goto L9a
        L7d:
            r5 = r3
            goto L83
        L7f:
            r5 = r3
            goto L9a
        L81:
            r2 = r3
            r5 = r2
        L83:
            if (r3 == 0) goto L88
            r3.close()
        L88:
            if (r2 == 0) goto L8d
        L8a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L8d
        L8d:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            r3 = r5
            goto La7
        L98:
            r2 = r3
            r5 = r2
        L9a:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> La8
            com.umeng.analytics.pro.f.a(r0)     // Catch: java.lang.Throwable -> La8
            if (r3 == 0) goto La4
            r3.close()
        La4:
            if (r2 == 0) goto L8d
            goto L8a
        La7:
            return r3
        La8:
            r0 = move-exception
            if (r3 == 0) goto Lae
            r3.close()
        Lae:
            if (r2 == 0) goto Lb3
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb3
        Lb3:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)
            r1.b()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.g():org.json.JSONObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0059, code lost:
        if (r0 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void h() {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.util.List<java.lang.Integer> r1 = r4.f2870j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r1 <= 0) goto L3c
            r1 = 0
        L17:
            java.util.List<java.lang.Integer> r2 = r4.f2870j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r1 >= r2) goto L3c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "delete from __et where rowid="
            r2.append(r3)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.util.List<java.lang.Integer> r3 = r4.f2870j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.append(r3)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.execSQL(r2)     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            int r1 = r1 + 1
            goto L17
        L3c:
            java.util.List<java.lang.Integer> r1 = r4.f2870j     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.clear()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L45 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            goto L47
        L45:
            if (r0 == 0) goto L4a
        L47:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L4a
        L4a:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L5c
        L54:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L5d
            com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r0 == 0) goto L4a
            goto L47
        L5c:
            return
        L5d:
            r1 = move-exception
            if (r0 == 0) goto L63
            r0.endTransaction()     // Catch: java.lang.Throwable -> L63
        L63:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.h():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void i() {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            java.lang.String r1 = "delete from __er"
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L17 android.database.sqlite.SQLiteDatabaseCorruptException -> L26
            goto L19
        L17:
            if (r0 == 0) goto L1c
        L19:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L1c
        L1c:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L2e
        L26:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L2f
            com.umeng.analytics.pro.f.a(r1)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L1c
            goto L19
        L2e:
            return
        L2f:
            r1 = move-exception
            if (r0 == 0) goto L35
            r0.endTransaction()     // Catch: java.lang.Throwable -> L35
        L35:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.i():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0064, code lost:
        if (r1 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void j() {
        /*
            r5 = this;
            java.lang.String r0 = "\""
            java.lang.String r1 = r5.f2871k
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            r2 = 0
            if (r1 != 0) goto L77
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L4e android.database.sqlite.SQLiteDatabaseCorruptException -> L5e
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = "delete from __er where __i=\""
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = r5.f2871k     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.execSQL(r3)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = "delete from __et where __i=\""
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r4 = r5.f2871k     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r4)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r3.append(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.execSQL(r0)     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4f android.database.sqlite.SQLiteDatabaseCorruptException -> L5f
            goto L51
        L4e:
            r1 = r2
        L4f:
            if (r1 == 0) goto L54
        L51:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L54
        L54:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            goto L77
        L5e:
            r1 = r2
        L5f:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L67
            com.umeng.analytics.pro.f.a(r0)     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L54
            goto L51
        L67:
            r0 = move-exception
            if (r1 == 0) goto L6d
            r1.endTransaction()     // Catch: java.lang.Throwable -> L6d
        L6d:
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)
            r1.b()
            throw r0
        L77:
            r5.f2871k = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.j():void");
    }

    public g() {
        this.f2869i = new ArrayList();
        this.f2870j = new ArrayList();
        this.f2871k = null;
        this.f2872l = new ArrayList();
    }

    private void b(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.get("__e")).longValue();
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c2 = (optJSONObject == null || optJSONObject.length() <= 0) ? "" : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("__ii", str);
            contentValues.put("__e", String.valueOf(longValue));
            contentValues.put("__sp", c2);
            contentValues.put("__pp", str2);
            contentValues.put("__av", UMGlobalContext.getInstance().getAppVersion());
            contentValues.put("__vc", UMUtils.getAppVersionCode(f2864d));
            sQLiteDatabase.insert(c.C0019c.a, null, contentValues);
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
            JSONObject optJSONObject = jSONObject.optJSONObject(c.d.a.f2843e);
            if (optJSONObject != null) {
                cursor = sQLiteDatabase.rawQuery("select __d from __sd where __ii=\"" + str + "\"", null);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            str2 = d(cursor.getString(cursor.getColumnIndex(c.d.a.f2843e)));
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
            JSONObject optJSONObject2 = jSONObject.optJSONObject(c.d.a.f2842d);
            if (optJSONObject2 != null) {
                String c3 = c(optJSONObject2.toString());
                if (!TextUtils.isEmpty(c3)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + c3 + "\" where __ii=\"" + str + "\"");
                }
            }
            long optLong = jSONObject.optLong(c.d.a.f2845g);
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(optLong) + "\" where __ii=\"" + str + "\"");
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable unused2) {
        }
    }

    public void a() {
        this.f2869i.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
        if (r2 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009a, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
        if (r2 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(org.json.JSONArray r11) {
        /*
            r10 = this;
            java.lang.String r0 = "__t"
            java.lang.String r1 = "__i"
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L98 android.database.sqlite.SQLiteDatabaseCorruptException -> La7
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r4 = 0
        L13:
            int r5 = r11.length()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            if (r4 >= r5) goto L8d
            org.json.JSONObject r5 = r11.getJSONObject(r4)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            android.content.ContentValues r6 = new android.content.ContentValues     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.<init>()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r5.optString(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r9 = "-1"
            if (r8 != 0) goto L34
            boolean r8 = r9.equals(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
        L34:
            com.umeng.analytics.pro.q r7 = com.umeng.analytics.pro.q.a()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = r7.b()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            boolean r8 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            if (r8 == 0) goto L43
            r7 = r9
        L43:
            r6.put(r1, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__e"
            java.lang.String r8 = "id"
            java.lang.String r8 = r5.optString(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            int r7 = r5.optInt(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r0, r7)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r8)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r1)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r5.remove(r0)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r7 = "__s"
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = r10.c(r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            r6.put(r7, r5)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
            java.lang.String r5 = "__et"
            r3.insert(r5, r2, r6)     // Catch: java.lang.Exception -> L8a java.lang.Throwable -> L94
        L8a:
            int r4 = r4 + 1
            goto L13
        L8d:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L94 android.database.sqlite.SQLiteDatabaseCorruptException -> L96
            r3.endTransaction()     // Catch: java.lang.Throwable -> L9d
            goto L9d
        L94:
            r2 = r3
            goto L98
        L96:
            r2 = r3
            goto La7
        L98:
            if (r2 == 0) goto L9d
        L9a:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L9d
        L9d:
            android.content.Context r11 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r11 = com.umeng.analytics.pro.e.a(r11)
            r11.b()
            goto Laf
        La7:
            android.content.Context r11 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> Lb0
            com.umeng.analytics.pro.f.a(r11)     // Catch: java.lang.Throwable -> Lb0
            if (r2 == 0) goto L9d
            goto L9a
        Laf:
            return
        Lb0:
            r11 = move-exception
            if (r2 == 0) goto Lb6
            r2.endTransaction()     // Catch: java.lang.Throwable -> Lb6
        Lb6:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(org.json.JSONArray):void");
    }

    public String d(String str) {
        try {
            return TextUtils.isEmpty(f2865e) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), f2865e.getBytes()));
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject b(boolean z) {
        JSONObject jSONObject = new JSONObject();
        b(jSONObject, z);
        return jSONObject;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0090, code lost:
        if (r1 != null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(org.json.JSONObject r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteDatabaseCorruptException -> L85
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteDatabaseCorruptException -> L85
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L70 android.database.sqlite.SQLiteDatabaseCorruptException -> L85
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            java.lang.String r2 = "select *  from __er"
            boolean r3 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            if (r3 != 0) goto L2c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            r2.<init>()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            java.lang.String r3 = "select *  from __er where __i=\""
            r2.append(r3)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            r2.append(r6)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            java.lang.String r6 = "\""
            r2.append(r6)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
        L2c:
            android.database.Cursor r0 = r1.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            if (r0 == 0) goto L65
            org.json.JSONArray r6 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            r6.<init>()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
        L37:
            boolean r2 = r0.moveToNext()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            if (r2 == 0) goto L5a
            java.lang.String r2 = "__a"
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            java.lang.String r2 = r0.getString(r2)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            if (r3 != 0) goto L37
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            java.lang.String r2 = r4.d(r2)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            r6.put(r3)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            goto L37
        L5a:
            int r2 = r6.length()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            if (r2 <= 0) goto L65
            java.lang.String r2 = "error"
            r5.put(r2, r6)     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
        L65:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L6e android.database.sqlite.SQLiteDatabaseCorruptException -> L86
            if (r0 == 0) goto L78
            r0.close()
            goto L78
        L6e:
            goto L71
        L70:
            r1 = r0
        L71:
            if (r0 == 0) goto L76
            r0.close()
        L76:
            if (r1 == 0) goto L7b
        L78:
            r1.endTransaction()     // Catch: java.lang.Throwable -> L7b
        L7b:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            goto L93
        L85:
            r1 = r0
        L86:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L94
            com.umeng.analytics.pro.f.a(r5)     // Catch: java.lang.Throwable -> L94
            if (r0 == 0) goto L90
            r0.close()
        L90:
            if (r1 == 0) goto L7b
            goto L78
        L93:
            return
        L94:
            r5 = move-exception
            if (r0 == 0) goto L9a
            r0.close()
        L9a:
            if (r1 == 0) goto L9f
            r1.endTransaction()     // Catch: java.lang.Throwable -> L9f
        L9f:
            android.content.Context r6 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.e.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(org.json.JSONObject, java.lang.String):void");
    }

    public String c(String str) {
        try {
            return TextUtils.isEmpty(f2865e) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), f2865e.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0056, code lost:
        if (r0 == null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
        if (r0 == null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(java.lang.String r5, java.lang.String r6, int r7) {
        /*
            r4 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            android.database.sqlite.SQLiteDatabase r1 = r1.a()     // Catch: java.lang.Throwable -> L56 android.database.sqlite.SQLiteDatabaseCorruptException -> L65
            r1.beginTransaction()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            android.content.ContentValues r2 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.<init>()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r3 = "__i"
            r2.put(r3, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = r4.c(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            if (r6 != 0) goto L4b
            java.lang.String r6 = "__a"
            r2.put(r6, r5)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__t"
            java.lang.Integer r6 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__av"
            android.content.Context r6 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__vc"
            android.content.Context r6 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r6 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r2.put(r5, r6)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            java.lang.String r5 = "__er"
            r1.insert(r5, r0, r2)     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
        L4b:
            r1.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L52 android.database.sqlite.SQLiteDatabaseCorruptException -> L54
            r1.endTransaction()     // Catch: java.lang.Throwable -> L5b
            goto L5b
        L52:
            r0 = r1
            goto L56
        L54:
            r0 = r1
            goto L65
        L56:
            if (r0 == 0) goto L5b
        L58:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L5b
        L5b:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            goto L6d
        L65:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L6f
            com.umeng.analytics.pro.f.a(r5)     // Catch: java.lang.Throwable -> L6f
            if (r0 == 0) goto L5b
            goto L58
        L6d:
            r5 = 0
            return r5
        L6f:
            r5 = move-exception
            if (r0 == 0) goto L75
            r0.endTransaction()     // Catch: java.lang.Throwable -> L75
        L75:
            android.content.Context r6 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r6 = com.umeng.analytics.pro.e.a(r6)
            r6.b()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String, java.lang.String, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c7, code lost:
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c9, code lost:
        r1.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e3, code lost:
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String b(org.json.JSONObject r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(org.json.JSONObject, boolean):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0085, code lost:
        if (r2 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0087, code lost:
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0099, code lost:
        if (r2 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(java.lang.String r7, org.json.JSONObject r8, com.umeng.analytics.pro.g.a r9) {
        /*
            r6 = this;
            java.lang.String r0 = "__e"
            r1 = 0
            if (r8 != 0) goto L6
            return r1
        L6:
            r2 = 0
            android.content.Context r3 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L85 android.database.sqlite.SQLiteDatabaseCorruptException -> L94
            r3.beginTransaction()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            com.umeng.analytics.pro.g$a r4 = com.umeng.analytics.pro.g.a.BEGIN     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r4) goto L4f
            java.lang.Object r8 = r8.opt(r0)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.Long r8 = (java.lang.Long) r8     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            long r8 = r8.longValue()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            android.content.ContentValues r4 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.<init>()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r5 = "__ii"
            r4.put(r5, r7)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r0, r7)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__av"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__vc"
            android.content.Context r8 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r8 = com.umeng.commonsdk.utils.UMUtils.getAppVersionCode(r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r4.put(r7, r8)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            java.lang.String r7 = "__sd"
            r3.insert(r7, r2, r4)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L4f:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.INSTANTSESSIONBEGIN     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L57
            r6.b(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L57:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.END     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L5f
            r6.a(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L5f:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.PAGE     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L69
            java.lang.String r9 = "__a"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L69:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.AUTOPAGE     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L73
            java.lang.String r9 = "__b"
            r6.a(r7, r8, r3, r9)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            goto L7a
        L73:
            com.umeng.analytics.pro.g$a r0 = com.umeng.analytics.pro.g.a.NEWSESSION     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            if (r9 != r0) goto L7a
            r6.c(r7, r8, r3)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
        L7a:
            r3.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteDatabaseCorruptException -> L83
            r3.endTransaction()     // Catch: java.lang.Throwable -> L8a
            goto L8a
        L81:
            r2 = r3
            goto L85
        L83:
            r2 = r3
            goto L94
        L85:
            if (r2 == 0) goto L8a
        L87:
            r2.endTransaction()     // Catch: java.lang.Throwable -> L8a
        L8a:
            android.content.Context r7 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r7 = com.umeng.analytics.pro.e.a(r7)
            r7.b()
            goto L9c
        L94:
            android.content.Context r7 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L9d
            com.umeng.analytics.pro.f.a(r7)     // Catch: java.lang.Throwable -> L9d
            if (r2 == 0) goto L8a
            goto L87
        L9c:
            return r1
        L9d:
            r7 = move-exception
            if (r2 == 0) goto La3
            r2.endTransaction()     // Catch: java.lang.Throwable -> La3
        La3:
            android.content.Context r8 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r8 = com.umeng.analytics.pro.e.a(r8)
            r8.b()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String, org.json.JSONObject, com.umeng.analytics.pro.g$a):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
        if (r0 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(boolean r3, boolean r4) {
        /*
            r2 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r4 == 0) goto L18
            if (r3 == 0) goto L4d
            java.lang.String r3 = "delete from __sd"
            r0.execSQL(r3)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            goto L4d
        L18:
            java.util.List<java.lang.String> r3 = r2.f2869i     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r3 <= 0) goto L4d
            r3 = 0
        L21:
            java.util.List<java.lang.String> r4 = r2.f2869i     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            if (r3 >= r4) goto L4d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r4.<init>()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r1 = "delete from __sd where __ii=\""
            r4.append(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.util.List<java.lang.String> r1 = r2.f2869i     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.Object r1 = r1.get(r3)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r4.append(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r1 = "\""
            r4.append(r1)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            int r3 = r3 + 1
            goto L21
        L4d:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L51 android.database.sqlite.SQLiteDatabaseCorruptException -> L60
            goto L53
        L51:
            if (r0 == 0) goto L56
        L53:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L56
        L56:
            android.content.Context r3 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)
            r3.b()
            goto L68
        L60:
            android.content.Context r3 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L69
            com.umeng.analytics.pro.f.a(r3)     // Catch: java.lang.Throwable -> L69
            if (r0 == 0) goto L56
            goto L53
        L68:
            return
        L69:
            r3 = move-exception
            if (r0 == 0) goto L6f
            r0.endTransaction()     // Catch: java.lang.Throwable -> L6f
        L6f:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.b(boolean, boolean):void");
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        try {
            long longValue = ((Long) jSONObject.opt(c.d.a.f2845g)).longValue();
            JSONObject optJSONObject = jSONObject.optJSONObject("__sp");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("__pp");
            String str2 = "";
            String c2 = (optJSONObject == null || optJSONObject.length() <= 0) ? "" : c(optJSONObject.toString());
            if (optJSONObject2 != null && optJSONObject2.length() > 0) {
                str2 = c(optJSONObject2.toString());
            }
            sQLiteDatabase.execSQL("update __sd set __f=\"" + longValue + "\", __sp=\"" + c2 + "\", __pp=\"" + str2 + "\" where __ii=\"" + str + "\"");
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
        if (r3 != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long a(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = "select __f from __sd where __ii=\""
            java.lang.String r1 = "\""
            java.lang.String r5 = f.b.a.a.a.g(r0, r5, r1)
            r0 = 0
            r1 = 0
            android.content.Context r3 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L4c
            com.umeng.analytics.pro.e r3 = com.umeng.analytics.pro.e.a(r3)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L4c
            android.database.sqlite.SQLiteDatabase r3 = r3.a()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L4c
            r3.beginTransaction()     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L34
            android.database.Cursor r0 = r3.rawQuery(r5, r0)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L34
            if (r0 == 0) goto L2e
            r0.moveToFirst()     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L34
            java.lang.String r5 = "__f"
            int r5 = r0.getColumnIndex(r5)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L34
            long r1 = r0.getLong(r5)     // Catch: java.lang.Exception -> L2c java.lang.Throwable -> L34
            goto L2e
        L2c:
            goto L4d
        L2e:
            if (r0 == 0) goto L54
            r0.close()     // Catch: java.lang.Exception -> L57
            goto L54
        L34:
            r5 = move-exception
            goto L38
        L36:
            r5 = move-exception
            r3 = r0
        L38:
            if (r0 == 0) goto L3d
            r0.close()     // Catch: java.lang.Exception -> L42
        L3d:
            if (r3 == 0) goto L42
            r3.endTransaction()     // Catch: java.lang.Exception -> L42
        L42:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r0 = com.umeng.analytics.pro.e.a(r0)
            r0.b()
            throw r5
        L4c:
            r3 = r0
        L4d:
            if (r0 == 0) goto L52
            r0.close()     // Catch: java.lang.Exception -> L57
        L52:
            if (r3 == 0) goto L57
        L54:
            r3.endTransaction()     // Catch: java.lang.Exception -> L57
        L57:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(java.lang.String):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
        if (r0 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            boolean r1 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            if (r1 != 0) goto L2d
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r1.<init>()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            java.lang.String r2 = "delete from __is where __ii=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r1.append(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            java.lang.String r4 = "\""
            r1.append(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
        L2d:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L31 android.database.sqlite.SQLiteDatabaseCorruptException -> L40
            goto L33
        L31:
            if (r0 == 0) goto L36
        L33:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L36
        L36:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            goto L48
        L40:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L49
            com.umeng.analytics.pro.f.a(r4)     // Catch: java.lang.Throwable -> L49
            if (r0 == 0) goto L36
            goto L33
        L48:
            return
        L49:
            r4 = move-exception
            if (r0 == 0) goto L4f
            r0.endTransaction()     // Catch: java.lang.Throwable -> L4f
        L4f:
            android.content.Context r0 = com.umeng.analytics.pro.g.f2864d
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
            } else if (c.d.a.f2841c.equals(str2)) {
                jSONArray = jSONObject.optJSONArray(c.d.a.f2841c);
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
            if (jSONArray2.length() > 1000) {
                if (rawQuery != null) {
                    rawQuery.close();
                    return;
                }
                return;
            }
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
        } catch (Throwable unused3) {
        }
    }

    public JSONObject a(boolean z) {
        a();
        this.f2870j.clear();
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

    /* JADX WARN: Code restructure failed: missing block: B:74:0x018e, code lost:
        if (r1 != null) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(org.json.JSONObject r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(org.json.JSONObject, java.lang.String):void");
    }

    private String a(JSONObject jSONObject, boolean z) {
        SQLiteDatabase sQLiteDatabase;
        String str;
        Cursor cursor;
        Cursor cursor2 = null;
        r0 = null;
        r0 = null;
        r0 = null;
        r0 = null;
        r0 = null;
        cursor2 = null;
        String str2 = null;
        try {
            sQLiteDatabase = e.a(f2864d).a();
            try {
                sQLiteDatabase.beginTransaction();
                cursor = sQLiteDatabase.rawQuery("select *  from __sd", null);
                if (cursor != null) {
                    try {
                        JSONArray jSONArray = new JSONArray();
                        while (cursor.moveToNext()) {
                            JSONObject jSONObject2 = new JSONObject();
                            String string = cursor.getString(cursor.getColumnIndex(c.d.a.f2845g));
                            String string2 = cursor.getString(cursor.getColumnIndex("__e"));
                            str2 = cursor.getString(cursor.getColumnIndex("__ii"));
                            if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                                if (Long.parseLong(string) - Long.parseLong(string2) > 0) {
                                    String string3 = cursor.getString(cursor.getColumnIndex("__a"));
                                    String string4 = cursor.getString(cursor.getColumnIndex(c.d.a.f2841c));
                                    String string5 = cursor.getString(cursor.getColumnIndex(c.d.a.f2842d));
                                    String string6 = cursor.getString(cursor.getColumnIndex(c.d.a.f2843e));
                                    this.f2869i.add(str2);
                                    String string7 = cursor.getString(cursor.getColumnIndex("__sp"));
                                    String string8 = cursor.getString(cursor.getColumnIndex("__pp"));
                                    jSONObject2.put("id", str2);
                                    jSONObject2.put(com.umeng.analytics.pro.b.p, string2);
                                    jSONObject2.put(com.umeng.analytics.pro.b.q, string);
                                    jSONObject2.put("duration", Long.parseLong(string) - Long.parseLong(string2));
                                    if (!TextUtils.isEmpty(string3)) {
                                        jSONObject2.put("pages", new JSONArray(d(string3)));
                                    }
                                    if (!TextUtils.isEmpty(string4) && AnalyticsConfig.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.t, new JSONArray(d(string4)));
                                    }
                                    if (!TextUtils.isEmpty(string5)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.E, new JSONObject(d(string5)));
                                    }
                                    if (!TextUtils.isEmpty(string6)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.A, new JSONArray(d(string6)));
                                    }
                                    if (!TextUtils.isEmpty(string7)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.ar, new JSONObject(d(string7)));
                                    }
                                    if (!TextUtils.isEmpty(string8)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.as, new JSONObject(d(string8)));
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
                        if (this.f2869i.size() < 1) {
                            cursor.close();
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable unused) {
                            }
                            e.a(f2864d).b();
                            return str2;
                        } else if (jSONArray.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.b.n, jSONArray);
                        }
                    } catch (SQLiteDatabaseCorruptException unused2) {
                        try {
                            f.a(f2864d);
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
                            e.a(f2864d).b();
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
                        e.a(f2864d).b();
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

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
        if (r0 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(boolean r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            if (r5 == 0) goto L18
            if (r4 == 0) goto L47
            java.lang.String r4 = "delete from __is"
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            goto L47
        L18:
            java.util.List<java.lang.String> r4 = r3.f2872l     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            if (r4 <= 0) goto L47
            r5 = 0
        L21:
            if (r5 >= r4) goto L47
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            r1.<init>()     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            java.lang.String r2 = "delete from __is where __ii=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            java.util.List<java.lang.String> r2 = r3.f2872l     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            java.lang.Object r2 = r2.get(r5)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            r1.append(r2)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            java.lang.String r2 = "\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            int r5 = r5 + 1
            goto L21
        L47:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L4b android.database.sqlite.SQLiteDatabaseCorruptException -> L5a
            goto L4d
        L4b:
            if (r0 == 0) goto L50
        L4d:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L50
        L50:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            goto L62
        L5a:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L63
            com.umeng.analytics.pro.f.a(r4)     // Catch: java.lang.Throwable -> L63
            if (r0 == 0) goto L50
            goto L4d
        L62:
            return
        L63:
            r4 = move-exception
            if (r0 == 0) goto L69
            r0.endTransaction()     // Catch: java.lang.Throwable -> L69
        L69:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0078, code lost:
        if (r0 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(boolean r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.String r4 = "\""
            r0 = 0
            android.content.Context r1 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            com.umeng.analytics.pro.e r1 = com.umeng.analytics.pro.e.a(r1)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            android.database.sqlite.SQLiteDatabase r0 = r1.a()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.beginTransaction()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            if (r1 != 0) goto L60
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r2 = "delete from __er where __i=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r2 = "delete from __et where __i=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.execSQL(r1)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.util.List<java.lang.Integer> r1 = r3.f2870j     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.clear()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.<init>()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r2 = "delete from __sd where __ii=\""
            r1.append(r2)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r5)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r1.append(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            r0.execSQL(r4)     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
        L60:
            r0.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L64 android.database.sqlite.SQLiteDatabaseCorruptException -> L73
            goto L66
        L64:
            if (r0 == 0) goto L69
        L66:
            r0.endTransaction()     // Catch: java.lang.Throwable -> L69
        L69:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r4 = com.umeng.analytics.pro.e.a(r4)
            r4.b()
            goto L7b
        L73:
            android.content.Context r4 = com.umeng.analytics.pro.g.f2864d     // Catch: java.lang.Throwable -> L7c
            com.umeng.analytics.pro.f.a(r4)     // Catch: java.lang.Throwable -> L7c
            if (r0 == 0) goto L69
            goto L66
        L7b:
            return
        L7c:
            r4 = move-exception
            if (r0 == 0) goto L82
            r0.endTransaction()     // Catch: java.lang.Throwable -> L82
        L82:
            android.content.Context r5 = com.umeng.analytics.pro.g.f2864d
            com.umeng.analytics.pro.e r5 = com.umeng.analytics.pro.e.a(r5)
            r5.b()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.g.a(boolean, java.lang.String):void");
    }
}
