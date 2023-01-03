package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.proguard.e;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;

/* compiled from: OldUMIDTracker.java */
/* loaded from: classes.dex */
public class i extends a {
    public static final String a = "oldumid";
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public String f3209c = null;

    /* renamed from: d  reason: collision with root package name */
    public String f3210d = null;

    public i(Context context) {
        super(a);
        this.b = context;
    }

    private void b(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    private void j() {
        try {
            b("/data/local/tmp/.um");
            HelperUtils.writeFile(new File("/data/local/tmp/.um/sysid.dat"), this.f3210d);
        } catch (Throwable unused) {
        }
    }

    private void k() {
        try {
            b("/sdcard/Android/obj/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/obj/.um/sysid.dat"), this.f3210d);
        } catch (Throwable unused) {
        }
    }

    private void l() {
        try {
            b("/sdcard/Android/data/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/data/.um/sysid.dat"), this.f3210d);
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return this.f3209c;
    }

    public boolean g() {
        return h();
    }

    public boolean h() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.b, e.f3059f, null);
        this.f3210d = imprintProperty;
        if (TextUtils.isEmpty(imprintProperty)) {
            return false;
        }
        this.f3210d = DataHelper.encryptBySHA1(this.f3210d);
        String readFile = HelperUtils.readFile(new File("/sdcard/Android/data/.um/sysid.dat"));
        String readFile2 = HelperUtils.readFile(new File("/sdcard/Android/obj/.um/sysid.dat"));
        String readFile3 = HelperUtils.readFile(new File("/data/local/tmp/.um/sysid.dat"));
        if (TextUtils.isEmpty(readFile)) {
            l();
        } else if (!this.f3210d.equals(readFile)) {
            this.f3209c = readFile;
            return true;
        }
        if (TextUtils.isEmpty(readFile2)) {
            k();
        } else if (!this.f3210d.equals(readFile2)) {
            this.f3209c = readFile2;
            return true;
        }
        if (TextUtils.isEmpty(readFile3)) {
            j();
            return false;
        } else if (this.f3210d.equals(readFile3)) {
            return false;
        } else {
            this.f3209c = readFile3;
            return true;
        }
    }

    public void i() {
        try {
            l();
            k();
            j();
        } catch (Exception unused) {
        }
    }
}
