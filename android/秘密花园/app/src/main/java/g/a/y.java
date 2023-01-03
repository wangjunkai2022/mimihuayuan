package g.a;

import g.a.f1.j;
import java.io.File;

/* compiled from: RealmCache.java */
/* loaded from: classes.dex */
public class y implements Runnable {
    public final /* synthetic */ File a;
    public final /* synthetic */ b0 b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f6318c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f6319d = null;

    public y(File file, b0 b0Var, boolean z, String str) {
        this.a = file;
        this.b = b0Var;
        this.f6318c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        File file = this.a;
        if (file != null) {
            z.a(this.b.f6198d, file);
        }
        if (!this.f6318c) {
            return;
        }
        if (this.b == null) {
            throw null;
        } else if (j.a(false) != null) {
            z.a(this.f6319d, new File((String) null));
        } else {
            throw null;
        }
    }
}
