package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;

/* compiled from: EncryptHelper.java */
/* loaded from: classes.dex */
public class w {
    public static String a = null;
    public static final String b = "umeng+";

    /* renamed from: c  reason: collision with root package name */
    public static final String f2945c = "ek__id";

    /* renamed from: d  reason: collision with root package name */
    public static final String f2946d = "ek_key";

    /* renamed from: e  reason: collision with root package name */
    public static w f2947e;

    public static w a() {
        if (f2947e == null) {
            synchronized (w.class) {
                if (f2947e == null) {
                    f2947e = new w();
                }
            }
        }
        return f2947e;
    }

    public String b(String str) {
        try {
            return TextUtils.isEmpty(a) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), a.getBytes()));
        } catch (Exception unused) {
            return null;
        }
    }

    public void a(Context context) {
        try {
            if (TextUtils.isEmpty(a)) {
                String multiProcessSP = UMUtils.getMultiProcessSP(context, "ek__id");
                if (TextUtils.isEmpty(multiProcessSP)) {
                    multiProcessSP = DeviceConfig.getDBencryptID(context);
                    if (!TextUtils.isEmpty(multiProcessSP)) {
                        UMUtils.setMultiProcessSP(context, "ek__id", multiProcessSP);
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
                    a = sb.toString();
                }
                if (TextUtils.isEmpty(a)) {
                    return;
                }
                a += new StringBuilder(a).reverse().toString();
                String multiProcessSP2 = UMUtils.getMultiProcessSP(context, "ek_key");
                if (TextUtils.isEmpty(multiProcessSP2)) {
                    UMUtils.setMultiProcessSP(context, "ek_key", a("umeng+"));
                } else {
                    "umeng+".equals(b(multiProcessSP2));
                }
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        try {
            return TextUtils.isEmpty(a) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), a.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }
}
