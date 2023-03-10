package l.m0.a;

import java.lang.reflect.Type;
/* compiled from: RxJavaCallAdapter.java */
/* loaded from: classes2.dex */
public final class i<R> implements l.e<R, Object> {
    public final Type a;
    public final m.g b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f7285c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f7286d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f7287e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7288f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7289g;

    public i(Type type, m.g gVar, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.a = type;
        this.b = gVar;
        this.f7285c = z;
        this.f7286d = z2;
        this.f7287e = z3;
        this.f7288f = z4;
        this.f7289g = z5;
    }

    @Override // l.e
    public Type a() {
        return this.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a  */
    @Override // l.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(l.d<R> r3) {
        /*
            r2 = this;
            boolean r0 = r2.f7285c
            if (r0 == 0) goto La
            l.m0.a.d r0 = new l.m0.a.d
            r0.<init>(r3)
            goto Lf
        La:
            l.m0.a.e r0 = new l.m0.a.e
            r0.<init>(r3)
        Lf:
            boolean r3 = r2.f7286d
            if (r3 == 0) goto L1a
            l.m0.a.h r3 = new l.m0.a.h
            r3.<init>(r0)
        L18:
            r0 = r3
            goto L24
        L1a:
            boolean r3 = r2.f7287e
            if (r3 == 0) goto L24
            l.m0.a.a r3 = new l.m0.a.a
            r3.<init>(r0)
            goto L18
        L24:
            m.e r3 = new m.e
            m.n.c<m.e$a, m.e$a> r1 = m.q.l.b
            if (r1 == 0) goto L30
            java.lang.Object r0 = r1.a(r0)
            m.e$a r0 = (m.e.a) r0
        L30:
            r3.<init>(r0)
            m.g r0 = r2.b
            if (r0 == 0) goto L3b
            m.e r3 = r3.d(r0)
        L3b:
            boolean r0 = r2.f7288f
            if (r0 == 0) goto L4a
            m.h r0 = new m.h
            m.o.a.f r1 = new m.o.a.f
            r1.<init>(r3)
            r0.<init>(r1)
            return r0
        L4a:
            boolean r0 = r2.f7289g
            if (r0 == 0) goto L6a
            m.b r0 = new m.b
            r0.<init>(r3)
            m.c r3 = new m.c     // Catch: java.lang.Throwable -> L59 java.lang.NullPointerException -> L68
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L59 java.lang.NullPointerException -> L68
            return r3
        L59:
            r3 = move-exception
            m.q.l.a(r3)
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            java.lang.String r1 = "Actually not, but can't pass out an exception otherwise..."
            r0.<init>(r1)
            r0.initCause(r3)
            throw r0
        L68:
            r3 = move-exception
            throw r3
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: l.m0.a.i.b(l.d):java.lang.Object");
    }
}
