package g.a;

import java.io.File;

/* compiled from: RealmCache.java */
/* loaded from: classes.dex */
public class y implements Runnable {
    public final /* synthetic */ File a;
    public final /* synthetic */ b0 b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f6393c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f6394d = null;

    public y(File file, b0 b0Var, boolean z, String str) {
        this.a = file;
        this.b = b0Var;
        this.f6393c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        File file = this.a;
        if (file != null) {
            z.a(this.b.f6273d, file);
        }
        if (this.f6393c) {
            if (this.b == null) {
                throw null;
            }
            if (g.a.f1.j.a(false) != null) {
                z.a(this.f6394d, new File((String) null));
                return;
            }
            throw null;
        }
    }
}
