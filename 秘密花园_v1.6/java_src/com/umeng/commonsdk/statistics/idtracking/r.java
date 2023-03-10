package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.os.Environment;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;
import java.io.FileInputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: UTDIdTracker.java */
/* loaded from: classes.dex */
public class r extends a {
    public static final String a = "utdid";
    public static final String b = "android.permission.WRITE_EXTERNAL_STORAGE";

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f3291c = Pattern.compile("UTDID\">([^<]+)");

    /* renamed from: d  reason: collision with root package name */
    public Context f3292d;

    public r(Context context) {
        super(a);
        this.f3292d = context;
    }

    private String b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = f3291c.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private String g() {
        File h2 = h();
        if (h2 != null && h2.exists()) {
            try {
                FileInputStream fileInputStream = new FileInputStream(h2);
                String b2 = b(HelperUtils.readStreamToString(fileInputStream));
                HelperUtils.safeClose(fileInputStream);
                return b2;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private File h() {
        if (DeviceConfig.checkPermission(this.f3292d, "android.permission.WRITE_EXTERNAL_STORAGE") && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, this.f3292d);
        } catch (Exception unused) {
            return g();
        }
    }
}
