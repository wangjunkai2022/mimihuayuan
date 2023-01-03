package i.m0.d;

import i.b0;
import i.e0;
import i.f;
import i.h0;
import i.m0.e.d;
import i.m0.e.g;
import i.t;
import i.y;
import java.io.IOException;

/* compiled from: ConnectInterceptor.kt */
/* loaded from: classes.dex */
public final class a implements y {
    public static final a a = new a();

    @Override // i.y
    public h0 a(y.a aVar) throws IOException {
        g gVar = (g) aVar;
        e0 e0Var = gVar.f6590f;
        m mVar = gVar.f6587c;
        boolean z = true;
        boolean z2 = !h.o.c.g.a(e0Var.f6432c, "GET");
        synchronized (mVar.a) {
            if (!mVar.f6584m) {
                if (mVar.f6579h != null) {
                    z = false;
                }
                if (!z) {
                    throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()".toString());
                }
            } else {
                throw new IllegalStateException("released".toString());
            }
        }
        d dVar = mVar.f6577f;
        if (dVar != null) {
            b0 b0Var = mVar.n;
            if (b0Var != null) {
                try {
                    d h2 = dVar.b(aVar.a(), aVar.b(), aVar.c(), b0Var.B, b0Var.f6370f, z2).h(b0Var, aVar);
                    f fVar = mVar.o;
                    t tVar = mVar.b;
                    d dVar2 = mVar.f6577f;
                    if (dVar2 != null) {
                        c cVar = new c(mVar, fVar, tVar, dVar2, h2);
                        synchronized (mVar.a) {
                            mVar.f6579h = cVar;
                            mVar.f6580i = false;
                            mVar.f6581j = false;
                        }
                        return gVar.e(e0Var, mVar, cVar);
                    }
                    h.o.c.g.e();
                    throw null;
                } catch (k e2) {
                    dVar.e();
                    throw e2;
                } catch (IOException e3) {
                    dVar.e();
                    throw new k(e3);
                }
            } else {
                h.o.c.g.f("client");
                throw null;
            }
        } else {
            h.o.c.g.e();
            throw null;
        }
    }
}
