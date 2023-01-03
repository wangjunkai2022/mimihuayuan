package com.tencent.smtt.sdk.a;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.smtt.sdk.TbsConfig;
import com.tencent.smtt.sdk.WebView;
import com.tencent.smtt.utils.FileProvider;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

/* compiled from: MttLoader.java */
/* loaded from: classes.dex */
public class c {

    /* compiled from: MttLoader.java */
    /* loaded from: classes.dex */
    public static class a {
        public int a = -1;
        public int b = -1;

        /* renamed from: c  reason: collision with root package name */
        public String f2528c = "";

        /* renamed from: d  reason: collision with root package name */
        public String f2529d = "0";

        /* renamed from: e  reason: collision with root package name */
        public String f2530e = null;
    }

    /* compiled from: MttLoader.java */
    /* loaded from: classes.dex */
    public static class b {
        public String a;
        public String b;

        public b() {
            this.a = "";
            this.b = "";
        }
    }

    public static boolean a(Context context, String str, int i2, String str2, HashMap<String, String> hashMap, Bundle bundle) {
        Set<String> keySet;
        try {
            Intent intent = new Intent("com.tencent.QQBrowser.action.sdk.document");
            if (hashMap != null && (keySet = hashMap.keySet()) != null) {
                for (String str3 : keySet) {
                    String str4 = hashMap.get(str3);
                    if (!TextUtils.isEmpty(str4)) {
                        intent.putExtra(str3, str4);
                    }
                }
            }
            new File(str);
            intent.putExtra("key_reader_sdk_id", 3);
            intent.putExtra("key_reader_sdk_type", i2);
            if (i2 == 0) {
                intent.putExtra("key_reader_sdk_path", str);
            } else if (i2 == 1) {
                intent.putExtra("key_reader_sdk_url", str);
            }
            intent.putExtra("key_reader_sdk_format", str2);
            if (context != null && context.getApplicationInfo().targetSdkVersion >= 24 && Build.VERSION.SDK_INT >= 24) {
                intent.addFlags(1);
            }
            Uri a2 = a(context, str);
            if (a2 == null) {
                return false;
            }
            intent.setDataAndType(a2, "mtt/" + str2);
            intent.putExtra("loginType", d(context.getApplicationContext()));
            if (bundle != null) {
                intent.putExtra("key_reader_sdk_extrals", bundle);
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean b(Context context) {
        return a(context).a != -1;
    }

    public static boolean c(Context context) {
        a a2 = a(context);
        boolean z = false;
        try {
            if (Long.valueOf(a2.f2529d).longValue() >= 6001500) {
                z = true;
            }
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
        }
        if (a2.b >= 601500) {
            return true;
        }
        return z;
    }

    public static int d(Context context) {
        String str = context.getApplicationInfo().processName;
        if (str.equals(TbsConfig.APP_QQ)) {
            return 13;
        }
        if (str.equals(TbsConfig.APP_QZONE)) {
            return 14;
        }
        if (str.equals("com.tencent.WBlog")) {
            return 15;
        }
        return str.equals(TbsConfig.APP_WX) ? 24 : 26;
    }

    public static Uri a(Context context, String str) {
        return FileProvider.a(context, str);
    }

    public static boolean a(Context context, String str, HashMap<String, String> hashMap) {
        boolean z;
        Set<String> keySet;
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setDataAndType(parse, "video/*");
        if (hashMap != null && (keySet = hashMap.keySet()) != null) {
            for (String str2 : keySet) {
                String str3 = hashMap.get(str2);
                if (!TextUtils.isEmpty(str3)) {
                    intent.putExtra(str2, str3);
                }
            }
        }
        try {
            intent.putExtra("loginType", d(context));
            intent.setComponent(new ComponentName(TbsConfig.APP_QB, "com.tencent.mtt.browser.video.H5VideoThrdcallActivity"));
            context.startActivity(intent);
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        if (!z) {
            try {
                intent.setComponent(null);
                context.startActivity(intent);
            } catch (Throwable th) {
                th.printStackTrace();
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:1|2|3|(3:7|8|(8:10|11|12|(1:14)|15|(1:17)(1:21)|18|19))|25|11|12|(0)|15|(0)(0)|18|19) */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(android.content.Context r5, java.lang.String r6, java.util.HashMap<java.lang.String, java.lang.String> r7, java.lang.String r8, com.tencent.smtt.sdk.WebView r9) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            android.content.pm.PackageManager r2 = r5.getPackageManager()     // Catch: java.lang.Throwable -> L1d
            if (r2 == 0) goto L1d
            java.lang.String r3 = "com.tencent.mtt"
            android.content.pm.PackageInfo r2 = r2.getPackageInfo(r3, r1)     // Catch: java.lang.Throwable -> L1d
            if (r2 == 0) goto L1d
            int r2 = r2.versionCode     // Catch: java.lang.Throwable -> L1d
            r3 = 601000(0x92ba8, float:8.4218E-40)
            if (r2 <= r3) goto L1d
            r2 = 1
            goto L1e
        L1d:
            r2 = 0
        L1e:
            java.lang.String r3 = "UTF-8"
            java.lang.String r1 = java.net.URLEncoder.encode(r6, r3)     // Catch: java.lang.Exception -> L29
            if (r2 == 0) goto L27
            r6 = r1
        L27:
            r1 = r2
            goto L2a
        L29:
        L2a:
            if (r1 == 0) goto L2f
            java.lang.String r1 = ",encoded=1"
            goto L31
        L2f:
            java.lang.String r1 = ""
        L31:
            java.lang.String r2 = "mttbrowser://url="
            java.lang.String r3 = ",product="
            java.lang.String r4 = "TBS"
            f.b.a.a.a.C(r0, r2, r6, r3, r4)
            java.lang.String r6 = ",packagename="
            r0.append(r6)
            java.lang.String r6 = r5.getPackageName()
            r0.append(r6)
            java.lang.String r6 = ",from="
            r0.append(r6)
            r0.append(r8)
            java.lang.String r6 = ",version="
            r0.append(r6)
            java.lang.String r6 = "4.3.0.1148"
            r0.append(r6)
            r0.append(r1)
            java.lang.String r6 = r0.toString()
            int r5 = a(r5, r6, r7, r9)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.smtt.sdk.a.c.a(android.content.Context, java.lang.String, java.util.HashMap, java.lang.String, com.tencent.smtt.sdk.WebView):int");
    }

    public static int a(Context context, String str, HashMap<String, String> hashMap, WebView webView) {
        Set<String> keySet;
        if (context == null) {
            return 3;
        }
        if (!a(str)) {
            str = f.b.a.a.a.f("http://", str);
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse == null) {
                return 2;
            }
            a a2 = a(context);
            int i2 = a2.a;
            if (i2 == -1) {
                return 4;
            }
            if (i2 != 2 || a2.b >= 33) {
                Intent intent = new Intent("android.intent.action.VIEW");
                int i3 = a2.a;
                if (i3 == 2) {
                    int i4 = a2.b;
                    if (i4 >= 33 && i4 <= 39) {
                        intent.setClassName(TbsConfig.APP_QB, "com.tencent.mtt.MainActivity");
                    } else {
                        int i5 = a2.b;
                        if (i5 >= 40 && i5 <= 45) {
                            intent.setClassName(TbsConfig.APP_QB, "com.tencent.mtt.SplashActivity");
                        } else if (a2.b >= 46) {
                            intent = new Intent("com.tencent.QQBrowser.action.VIEW");
                            b a3 = a(context, parse);
                            if (a3 != null && !TextUtils.isEmpty(a3.a)) {
                                intent.setClassName(a3.b, a3.a);
                            }
                        }
                    }
                } else if (i3 == 1) {
                    int i6 = a2.b;
                    if (i6 == 1) {
                        intent.setClassName("com.tencent.qbx5", "com.tencent.qbx5.MainActivity");
                    } else if (i6 == 2) {
                        intent.setClassName("com.tencent.qbx5", "com.tencent.qbx5.SplashActivity");
                    }
                } else if (i3 == 0) {
                    int i7 = a2.b;
                    if (i7 >= 4 && i7 <= 6) {
                        intent.setClassName("com.tencent.qbx", "com.tencent.qbx.SplashActivity");
                    } else if (a2.b > 6) {
                        intent = new Intent("com.tencent.QQBrowser.action.VIEW");
                        b a4 = a(context, parse);
                        if (a4 != null && !TextUtils.isEmpty(a4.a)) {
                            intent.setClassName(a4.b, a4.a);
                        }
                    }
                } else {
                    intent = new Intent("com.tencent.QQBrowser.action.VIEW");
                    b a5 = a(context, parse);
                    if (a5 != null && !TextUtils.isEmpty(a5.a)) {
                        intent.setClassName(a5.b, a5.a);
                    }
                }
                intent.setData(parse);
                if (hashMap != null && (keySet = hashMap.keySet()) != null) {
                    for (String str2 : keySet) {
                        String str3 = hashMap.get(str2);
                        if (!TextUtils.isEmpty(str3)) {
                            intent.putExtra(str2, str3);
                        }
                    }
                }
                try {
                    intent.putExtra("loginType", d(context));
                    intent.addFlags(268435456);
                    if (webView != null) {
                        intent.putExtra("AnchorPoint", new Point(webView.getScrollX(), webView.getScrollY()));
                        intent.putExtra("ContentSize", new Point(webView.getContentWidth(), webView.getContentHeight()));
                    }
                    context.startActivity(intent);
                    return 0;
                } catch (ActivityNotFoundException unused) {
                    return 4;
                }
            }
            return 5;
        } catch (Exception unused2) {
            return 2;
        }
    }

    public static b a(Context context, Uri uri) {
        Intent intent = new Intent("com.tencent.QQBrowser.action.VIEW");
        intent.setData(uri);
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.size() <= 0) {
            return null;
        }
        b bVar = new b();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str = resolveInfo.activityInfo.packageName;
            if (str.contains(TbsConfig.APP_QB)) {
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                bVar.a = activityInfo.name;
                bVar.b = activityInfo.packageName;
                return bVar;
            } else if (str.contains("com.tencent.qbx")) {
                ActivityInfo activityInfo2 = resolveInfo.activityInfo;
                bVar.a = activityInfo2.name;
                bVar.b = activityInfo2.packageName;
            }
        }
        return bVar;
    }

    public static a a(Context context) {
        boolean z = context.getApplicationContext().getSharedPreferences("x5_proxy_setting", 0).getBoolean("qb_install_status", false);
        a aVar = new a();
        if (z) {
            return aVar;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            PackageInfo packageInfo = null;
            try {
                packageInfo = packageManager.getPackageInfo(TbsConfig.APP_QB, 0);
                aVar.a = 2;
                aVar.f2530e = TbsConfig.APP_QB;
                aVar.f2528c = "ADRQB_";
                if (packageInfo != null && packageInfo.versionCode > 420000) {
                    aVar.b = packageInfo.versionCode;
                    aVar.f2528c += packageInfo.versionName.replaceAll("\\.", "");
                    aVar.f2529d = packageInfo.versionName.replaceAll("\\.", "");
                    return aVar;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            try {
                try {
                    try {
                        try {
                            try {
                                packageInfo = packageManager.getPackageInfo("com.tencent.qbx", 0);
                                aVar.a = 0;
                                aVar.f2530e = "com.tencent.qbx";
                                aVar.f2528c = "ADRQBX_";
                            } catch (PackageManager.NameNotFoundException unused2) {
                                packageInfo = packageManager.getPackageInfo("com.tencent.mtt.x86", 0);
                                aVar.f2530e = "com.tencent.mtt.x86";
                                aVar.a = 2;
                                aVar.f2528c = "ADRQB_";
                            }
                        } catch (PackageManager.NameNotFoundException unused3) {
                            packageInfo = packageManager.getPackageInfo(TbsConfig.APP_QB, 0);
                            aVar.f2530e = TbsConfig.APP_QB;
                            aVar.a = 2;
                            aVar.f2528c = "ADRQB_";
                        }
                    } catch (Exception unused4) {
                        b a2 = a(context, Uri.parse("http://mdc.html5.qq.com/mh?channel_id=50079&u="));
                        if (a2 != null && !TextUtils.isEmpty(a2.b)) {
                            PackageInfo packageInfo2 = packageManager.getPackageInfo(a2.b, 0);
                            try {
                                aVar.f2530e = a2.b;
                                aVar.a = 2;
                                aVar.f2528c = "ADRQB_";
                            } catch (Exception unused5) {
                            }
                            packageInfo = packageInfo2;
                        }
                    }
                } catch (PackageManager.NameNotFoundException unused6) {
                    packageInfo = packageManager.getPackageInfo("com.tencent.qbx5", 0);
                    aVar.a = 1;
                    aVar.f2530e = "com.tencent.qbx5";
                    aVar.f2528c = "ADRQBX5_";
                }
            } catch (Exception unused7) {
            }
            if (packageInfo != null) {
                aVar.b = packageInfo.versionCode;
                aVar.f2528c += packageInfo.versionName.replaceAll("\\.", "");
                aVar.f2529d = packageInfo.versionName.replaceAll("\\.", "");
            }
        } catch (Exception unused8) {
        }
        return aVar;
    }

    public static boolean a(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        String trim = str.trim();
        int indexOf = trim.toLowerCase().indexOf("://");
        int indexOf2 = trim.toLowerCase().indexOf(46);
        if (indexOf <= 0 || indexOf2 <= 0 || indexOf <= indexOf2) {
            return trim.toLowerCase().contains("://");
        }
        return false;
    }

    public static boolean a(Context context, long j2, long j3) {
        a a2 = a(context);
        boolean z = false;
        try {
            if (Long.valueOf(a2.f2529d).longValue() >= j2) {
                z = true;
            }
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
        }
        if (a2.b >= j3) {
            return true;
        }
        return z;
    }
}
