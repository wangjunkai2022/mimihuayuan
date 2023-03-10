package i.m0.e;

import androidx.core.app.NotificationCompat;
import i.e0;
import i.h0;
import i.m0.d.m;
import i.y;
import java.util.List;
/* compiled from: RealInterceptorChain.kt */
/* loaded from: classes.dex */
public final class g implements y.a {
    public int a;
    public final List<y> b;

    /* renamed from: c  reason: collision with root package name */
    public final m f6671c;

    /* renamed from: d  reason: collision with root package name */
    public final i.m0.d.c f6672d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6673e;

    /* renamed from: f  reason: collision with root package name */
    public final e0 f6674f;

    /* renamed from: g  reason: collision with root package name */
    public final i.f f6675g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6676h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6677i;

    /* renamed from: j  reason: collision with root package name */
    public final int f6678j;

    /* JADX WARN: Multi-variable type inference failed */
    public g(List<? extends y> list, m mVar, i.m0.d.c cVar, int i2, e0 e0Var, i.f fVar, int i3, int i4, int i5) {
        if (list == 0) {
            h.o.c.g.f("interceptors");
            throw null;
        } else if (mVar == null) {
            h.o.c.g.f("transmitter");
            throw null;
        } else if (e0Var == null) {
            h.o.c.g.f("request");
            throw null;
        } else if (fVar == null) {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else {
            this.b = list;
            this.f6671c = mVar;
            this.f6672d = cVar;
            this.f6673e = i2;
            this.f6674f = e0Var;
            this.f6675g = fVar;
            this.f6676h = i3;
            this.f6677i = i4;
            this.f6678j = i5;
        }
    }

    @Override // i.y.a
    public e0 S() {
        return this.f6674f;
    }

    @Override // i.y.a
    public int a() {
        return this.f6676h;
    }

    @Override // i.y.a
    public int b() {
        return this.f6677i;
    }

    @Override // i.y.a
    public int c() {
        return this.f6678j;
    }

    @Override // i.y.a
    public h0 d(e0 e0Var) {
        if (e0Var != null) {
            return e(e0Var, this.f6671c, this.f6672d);
        }
        h.o.c.g.f("request");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final i.h0 e(i.e0 r16, i.m0.d.m r17, i.m0.d.c r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.g.e(i.e0, i.m0.d.m, i.m0.d.c):i.h0");
    }
}
