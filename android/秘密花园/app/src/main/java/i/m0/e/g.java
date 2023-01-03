package i.m0.e;

import androidx.core.app.NotificationCompat;
import i.e0;
import i.f;
import i.h0;
import i.m0.d.c;
import i.m0.d.m;
import i.y;
import java.util.List;

/* compiled from: RealInterceptorChain.kt */
/* loaded from: classes.dex */
public final class g implements y.a {
    public int a;
    public final List<y> b;

    /* renamed from: c  reason: collision with root package name */
    public final m f6587c;

    /* renamed from: d  reason: collision with root package name */
    public final c f6588d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6589e;

    /* renamed from: f  reason: collision with root package name */
    public final e0 f6590f;

    /* renamed from: g  reason: collision with root package name */
    public final f f6591g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6592h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6593i;

    /* renamed from: j  reason: collision with root package name */
    public final int f6594j;

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: java.util.List<? extends i.y> */
    /* JADX WARN: Multi-variable type inference failed */
    public g(List<? extends y> list, m mVar, c cVar, int i2, e0 e0Var, f fVar, int i3, int i4, int i5) {
        if (list == 0) {
            h.o.c.g.f("interceptors");
            throw null;
        } else if (mVar == null) {
            h.o.c.g.f("transmitter");
            throw null;
        } else if (e0Var == null) {
            h.o.c.g.f("request");
            throw null;
        } else if (fVar != null) {
            this.b = list;
            this.f6587c = mVar;
            this.f6588d = cVar;
            this.f6589e = i2;
            this.f6590f = e0Var;
            this.f6591g = fVar;
            this.f6592h = i3;
            this.f6593i = i4;
            this.f6594j = i5;
        } else {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        }
    }

    @Override // i.y.a
    public e0 S() {
        return this.f6590f;
    }

    @Override // i.y.a
    public int a() {
        return this.f6592h;
    }

    @Override // i.y.a
    public int b() {
        return this.f6593i;
    }

    @Override // i.y.a
    public int c() {
        return this.f6594j;
    }

    @Override // i.y.a
    public h0 d(e0 e0Var) {
        if (e0Var != null) {
            return e(e0Var, this.f6587c, this.f6588d);
        }
        h.o.c.g.f("request");
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0109  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final i.h0 e(i.e0 r16, i.m0.d.m r17, i.m0.d.c r18) throws java.io.IOException {
        /*
        // Method dump skipped, instructions count: 320
        */
        throw new UnsupportedOperationException("Method not decompiled: i.m0.e.g.e(i.e0, i.m0.d.m, i.m0.d.c):i.h0");
    }
}
