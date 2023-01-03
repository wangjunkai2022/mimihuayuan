package l.m0.a;

import java.lang.reflect.Type;
import l.e;
import m.g;

/* compiled from: RxJavaCallAdapter.java */
/* loaded from: classes2.dex */
public final class i<R> implements e<R, Object> {
    public final Type a;
    public final g b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f7201c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f7202d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f7203e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7204f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7205g;

    public i(Type type, g gVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.a = type;
        this.b = gVar;
        this.f7201c = z;
        this.f7202d = z2;
        this.f7203e = z3;
        this.f7204f = z4;
        this.f7205g = z5;
    }

    @Override // l.e
    public Type a() {
        return this.a;
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004a  */
    @Override // l.e
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object b(l.d<R> r3) {
        /*
            r2 = this;
            boolean r0 = r2.f7201c
            if (r0 == 0) goto L_0x000a
            l.m0.a.d r0 = new l.m0.a.d
            r0.<init>(r3)
            goto L_0x000f
        L_0x000a:
            l.m0.a.e r0 = new l.m0.a.e
            r0.<init>(r3)
        L_0x000f:
            boolean r3 = r2.f7202d
            if (r3 == 0) goto L_0x001a
            l.m0.a.h r3 = new l.m0.a.h
            r3.<init>(r0)
        L_0x0018:
            r0 = r3
            goto L_0x0024
        L_0x001a:
            boolean r3 = r2.f7203e
            if (r3 == 0) goto L_0x0024
            l.m0.a.a r3 = new l.m0.a.a
            r3.<init>(r0)
            goto L_0x0018
        L_0x0024:
            m.e r3 = new m.e
            m.n.c<m.e$a, m.e$a> r1 = m.q.l.b
            if (r1 == 0) goto L_0x0030
            java.lang.Object r0 = r1.a(r0)
            m.e$a r0 = (m.e.a) r0
        L_0x0030:
            r3.<init>(r0)
            m.g r0 = r2.b
            if (r0 == 0) goto L_0x003b
            m.e r3 = r3.d(r0)
        L_0x003b:
            boolean r0 = r2.f7204f
            if (r0 == 0) goto L_0x004a
            m.h r0 = new m.h
            m.o.a.f r1 = new m.o.a.f
            r1.<init>(r3)
            r0.<init>(r1)
            return r0
        L_0x004a:
            boolean r0 = r2.f7205g
            if (r0 == 0) goto L_0x006a
            m.b r0 = new m.b
            r0.<init>(r3)
            m.c r3 = new m.c     // Catch: NullPointerException -> 0x0068, all -> 0x0059
            r3.<init>(r0)     // Catch: NullPointerException -> 0x0068, all -> 0x0059
            return r3
        L_0x0059:
            r3 = move-exception
            m.q.l.a(r3)
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "Actually not, but can't pass out an exception otherwise..."
            r0.<init>(r1)
            r0.initCause(r3)
            throw r0
        L_0x0068:
            r3 = move-exception
            throw r3
        L_0x006a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: l.m0.a.i.b(l.d):java.lang.Object");
    }
}
