package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import java.io.File;

/* compiled from: OldUMIDTracker.java */
/* loaded from: classes.dex */
public class i extends a {
    public static final String a = "oldumid";
    public Context b;

    /* renamed from: c  reason: collision with root package name */
    public String f3284c;

    /* renamed from: d  reason: collision with root package name */
    public String f3285d;

    public i(Context context) {
        super(a);
        this.f3284c = null;
        this.f3285d = null;
        this.b = context;
    }

    private void b(String str) {
        File file = new File(str);
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    private void j() {
        try {
            b("/data/local/tmp/.um");
            HelperUtils.writeFile(new File("/data/local/tmp/.um/sysid.dat"), this.f3285d);
        } catch (Throwable unused) {
        }
    }

    private void k() {
        try {
            b("/sdcard/Android/obj/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/obj/.um/sysid.dat"), this.f3285d);
        } catch (Throwable unused) {
        }
    }

    private void l() {
        try {
            b("/sdcard/Android/data/.um");
            HelperUtils.writeFile(new File("/sdcard/Android/data/.um/sysid.dat"), this.f3285d);
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return this.f3284c;
    }

    public boolean g() {
        return h();
    }

    public boolean h() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.b, com.umeng.commonsdk.proguard.e.f3134f, null);
        this.f3285d = imprintProperty;
        if (TextUtils.isEmpty(imprintProperty)) {
            return false;
        }
        this.f3285d = DataHelper.encryptBySHA1(this.f3285d);
        String readFile = HelperUtils.readFile(new File("/sdcard/Android/data/.um/sysid.dat"));
        String readFile2 = HelperUtils.readFile(new File("/sdcard/Android/obj/.um/sysid.dat"));
        String readFile3 = HelperUtils.readFile(new File("/data/local/tmp/.um/sysid.dat"));
        if (TextUtils.isEmpty(readFile)) {
            l();
        } else if (!this.f3285d.equals(readFile)) {
            this.f3284c = readFile;
            return true;
        }
        if (TextUtils.isEmpty(readFile2)) {
            k();
        } else if (!this.f3285d.equals(readFile2)) {
            this.f3284c = readFile2;
            return true;
        }
        if (TextUtils.isEmpty(readFile3)) {
            j();
            return false;
        } else if (this.f3285d.equals(readFile3)) {
            return false;
        } else {
            this.f3284c = readFile3;
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
