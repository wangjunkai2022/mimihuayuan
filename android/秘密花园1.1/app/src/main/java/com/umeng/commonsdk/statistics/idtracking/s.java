package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;

/* compiled from: UUIDTracker.java */
/* loaded from: classes.dex */
public class s extends a {
    public static final String a = "uuid";

    /* renamed from: e  reason: collision with root package name */
    public static final String f3214e = "yosuid";

    /* renamed from: f  reason: collision with root package name */
    public static final String f3215f = "23346339";
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public String f3216c;

    /* renamed from: d  reason: collision with root package name */
    public String f3217d;

    public s(Context context) {
        super(a);
        this.b = null;
        this.f3216c = null;
        this.f3217d = null;
        this.b = context;
        this.f3216c = null;
        this.f3217d = null;
    }

    public static String a(String str, String str2) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x011a, code lost:
        if (r1 == null) goto L98;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0109 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0102 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00de A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String b(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.idtracking.s.b(java.lang.String):java.lang.String");
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        SharedPreferences sharedPreferences;
        SharedPreferences.Editor edit;
        try {
            if (TextUtils.isEmpty(a("ro.yunos.version", "")) || this.b == null || (sharedPreferences = PreferenceWrapper.getDefault(this.b)) == null) {
                return null;
            }
            String string = sharedPreferences.getString(f3214e, "");
            if (TextUtils.isEmpty(string)) {
                String b = b(f3215f);
                this.f3217d = b;
                if (!TextUtils.isEmpty(b) && this.b != null && (edit = sharedPreferences.edit()) != null) {
                    edit.putString(f3214e, this.f3217d).commit();
                }
                return this.f3217d;
            }
            return string;
        } catch (Exception unused) {
            return null;
        }
    }
}
