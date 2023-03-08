package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.u;
import f.i.b.v;
import f.i.b.z;
import java.io.IOException;

/* compiled from: TreeTypeAdapter.java */
/* loaded from: classes.dex */
public final class m<T> extends z<T> {
    public final v<T> a;
    public final f.i.b.n<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.b.j f6099c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.b.d0.a<T> f6100d;

    /* renamed from: g  reason: collision with root package name */
    public z<T> f6103g;

    /* renamed from: f  reason: collision with root package name */
    public final m<T>.b f6102f = new b(this, null);

    /* renamed from: e  reason: collision with root package name */
    public final a0 f6101e = null;

    /* compiled from: TreeTypeAdapter.java */
    /* loaded from: classes.dex */
    public final class b implements u, f.i.b.m {
        public b(m mVar, a aVar) {
        }
    }

    public m(v<T> vVar, f.i.b.n<T> nVar, f.i.b.j jVar, f.i.b.d0.a<T> aVar, a0 a0Var) {
        this.a = vVar;
        this.b = nVar;
        this.f6099c = jVar;
        this.f6100d = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0059  */
    @Override // f.i.b.z
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public T a(f.i.b.e0.a r4) throws java.io.IOException {
        /*
            r3 = this;
            f.i.b.n<T> r0 = r3.b
            if (r0 != 0) goto L1a
            f.i.b.z<T> r0 = r3.f6103g
            if (r0 == 0) goto L9
            goto L15
        L9:
            f.i.b.j r0 = r3.f6099c
            f.i.b.a0 r1 = r3.f6101e
            f.i.b.d0.a<T> r2 = r3.f6100d
            f.i.b.z r0 = r0.g(r1, r2)
            r3.f6103g = r0
        L15:
            java.lang.Object r4 = r0.a(r4)
            return r4
        L1a:
            r4.V()     // Catch: java.lang.NumberFormatException -> L29 java.io.IOException -> L30 f.i.b.e0.d -> L37 java.io.EOFException -> L3e
            r0 = 0
            f.i.b.z<f.i.b.o> r1 = f.i.b.c0.a0.o.X     // Catch: java.io.EOFException -> L27 java.lang.NumberFormatException -> L29 java.io.IOException -> L30 f.i.b.e0.d -> L37
            java.lang.Object r4 = r1.a(r4)     // Catch: java.io.EOFException -> L27 java.lang.NumberFormatException -> L29 java.io.IOException -> L30 f.i.b.e0.d -> L37
            f.i.b.o r4 = (f.i.b.o) r4     // Catch: java.io.EOFException -> L27 java.lang.NumberFormatException -> L29 java.io.IOException -> L30 f.i.b.e0.d -> L37
            goto L44
        L27:
            r4 = move-exception
            goto L40
        L29:
            r4 = move-exception
            f.i.b.w r0 = new f.i.b.w
            r0.<init>(r4)
            throw r0
        L30:
            r4 = move-exception
            f.i.b.p r0 = new f.i.b.p
            r0.<init>(r4)
            throw r0
        L37:
            r4 = move-exception
            f.i.b.w r0 = new f.i.b.w
            r0.<init>(r4)
            throw r0
        L3e:
            r4 = move-exception
            r0 = 1
        L40:
            if (r0 == 0) goto L5a
            f.i.b.q r4 = f.i.b.q.a
        L44:
            r0 = 0
            if (r4 == 0) goto L59
            boolean r1 = r4 instanceof f.i.b.q
            if (r1 == 0) goto L4c
            return r0
        L4c:
            f.i.b.n<T> r0 = r3.b
            f.i.b.d0.a<T> r1 = r3.f6100d
            java.lang.reflect.Type r1 = r1.b
            f.i.b.c0.a0.m<T>$b r2 = r3.f6102f
            java.lang.Object r4 = r0.a(r4, r1, r2)
            return r4
        L59:
            throw r0
        L5a:
            f.i.b.w r0 = new f.i.b.w
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.m.a(f.i.b.e0.a):java.lang.Object");
    }

    @Override // f.i.b.z
    public void b(f.i.b.e0.c cVar, T t) throws IOException {
        v<T> vVar = this.a;
        if (vVar == null) {
            z<T> zVar = this.f6103g;
            if (zVar == null) {
                zVar = this.f6099c.g(this.f6101e, this.f6100d);
                this.f6103g = zVar;
            }
            zVar.b(cVar, t);
        } else if (t == null) {
            cVar.I();
        } else {
            o.X.b(cVar, vVar.a(t, this.f6100d.b, this.f6102f));
        }
    }
}
