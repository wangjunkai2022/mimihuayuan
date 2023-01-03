package f.i.a.a.l1;

import android.net.Uri;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.l1.c0;
import f.i.a.a.m1.h0;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ParsingLoadable.java */
/* loaded from: classes.dex */
public final class e0<T> implements c0.e {
    public final p a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final g0 f5499c;

    /* renamed from: d  reason: collision with root package name */
    public final a<? extends T> f5500d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public volatile T f5501e;

    /* compiled from: ParsingLoadable.java */
    /* loaded from: classes.dex */
    public interface a<T> {
        T a(Uri uri, InputStream inputStream) throws IOException;
    }

    public e0(m mVar, Uri uri, int i2, a<? extends T> aVar) {
        p pVar = new p(uri, 0, -1, null, 1);
        this.f5499c = new g0(mVar);
        this.a = pVar;
        this.b = i2;
        this.f5500d = aVar;
    }

    /* JADX INFO: finally extract failed */
    public static <T> T c(m mVar, a<? extends T> aVar, p pVar, int i2) throws IOException {
        g0 g0Var = new g0(mVar);
        g0Var.b = 0;
        o oVar = new o(g0Var, pVar);
        try {
            if (!oVar.f5600d) {
                oVar.a.b(oVar.b);
                oVar.f5600d = true;
            }
            Uri d2 = g0Var.d();
            h.t(d2);
            T t = (T) aVar.a(d2, oVar);
            h0.l(oVar);
            h.t(t);
            return t;
        } catch (Throwable th) {
            h0.l(oVar);
            throw th;
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void a() throws IOException {
        this.f5499c.b = 0;
        o oVar = new o(this.f5499c, this.a);
        try {
            if (!oVar.f5600d) {
                oVar.a.b(oVar.b);
                oVar.f5600d = true;
            }
            Uri d2 = this.f5499c.d();
            h.t(d2);
            this.f5501e = (T) this.f5500d.a(d2, oVar);
        } finally {
            h0.l(oVar);
        }
    }

    @Override // f.i.a.a.l1.c0.e
    public final void b() {
    }
}
