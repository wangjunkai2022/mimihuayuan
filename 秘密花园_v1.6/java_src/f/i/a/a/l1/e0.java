package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.l1.c0;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ParsingLoadable.java */
/* loaded from: classes.dex */
public final class e0<T> implements c0.e {
    public final p a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final g0 f5583c;

    /* renamed from: d  reason: collision with root package name */
    public final a<? extends T> f5584d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public volatile T f5585e;

    /* compiled from: ParsingLoadable.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        T a(Uri uri, InputStream inputStream) throws IOException;
    }

    public e0(m mVar, Uri uri, int i2, a<? extends T> aVar) {
        p pVar = new p(uri, 0L, -1L, null, 1);
        this.f5583c = new g0(mVar);
        this.a = pVar;
        this.b = i2;
        this.f5584d = aVar;
    }

    public static <T> T c(m mVar, a<? extends T> aVar, p pVar, int i2) throws IOException {
        g0 g0Var = new g0(mVar);
        g0Var.b = 0L;
        o oVar = new o(g0Var, pVar);
        try {
            if (!oVar.f5684d) {
                oVar.a.b(oVar.b);
                oVar.f5684d = true;
            }
            Uri d2 = g0Var.d();
            c.a.a.b.g.h.t(d2);
            T a2 = aVar.a(d2, oVar);
            f.i.a.a.m1.h0.l(oVar);
            c.a.a.b.g.h.t(a2);
            return a2;
        } catch (Throwable th) {
            f.i.a.a.m1.h0.l(oVar);
            throw th;
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void a() throws IOException {
        this.f5583c.b = 0L;
        o oVar = new o(this.f5583c, this.a);
        try {
            if (!oVar.f5684d) {
                oVar.a.b(oVar.b);
                oVar.f5684d = true;
            }
            Uri d2 = this.f5583c.d();
            c.a.a.b.g.h.t(d2);
            this.f5585e = this.f5584d.a(d2, oVar);
        } finally {
            f.i.a.a.m1.h0.l(oVar);
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void b() {
    }
}
