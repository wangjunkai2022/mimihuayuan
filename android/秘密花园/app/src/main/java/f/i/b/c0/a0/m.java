package f.i.b.c0.a0;

import f.i.b.a0;
import f.i.b.e0.c;
import f.i.b.j;
import f.i.b.n;
import f.i.b.u;
import f.i.b.v;
import f.i.b.z;
import java.io.IOException;

/* compiled from: TreeTypeAdapter.java */
/* loaded from: classes.dex */
public final class m<T> extends z<T> {
    public final v<T> a;
    public final n<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final j f6024c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.b.d0.a<T> f6025d;

    /* renamed from: g  reason: collision with root package name */
    public z<T> f6028g;

    /* renamed from: f  reason: collision with root package name */
    public final m<T>.b f6027f = new b(this, null);

    /* renamed from: e  reason: collision with root package name */
    public final a0 f6026e = null;

    /* compiled from: TreeTypeAdapter.java */
    /* loaded from: classes.dex */
    public final class b implements u, f.i.b.m {
        public b(m mVar, a aVar) {
        }
    }

    public m(v<T> vVar, n<T> nVar, j jVar, f.i.b.d0.a<T> aVar, a0 a0Var) {
        this.a = vVar;
        this.b = nVar;
        this.f6024c = jVar;
        this.f6025d = aVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0059  */
    @Override // f.i.b.z
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public T a(f.i.b.e0.a r4) throws java.io.IOException {
        /*
            r3 = this;
            f.i.b.n<T> r0 = r3.b
            if (r0 != 0) goto L_0x001a
            f.i.b.z<T> r0 = r3.f6028g
            if (r0 == 0) goto L_0x0009
            goto L_0x0015
        L_0x0009:
            f.i.b.j r0 = r3.f6024c
            f.i.b.a0 r1 = r3.f6026e
            f.i.b.d0.a<T> r2 = r3.f6025d
            f.i.b.z r0 = r0.g(r1, r2)
            r3.f6028g = r0
        L_0x0015:
            java.lang.Object r4 = r0.a(r4)
            return r4
        L_0x001a:
            r4.V()     // Catch: EOFException -> 0x003e, d -> 0x0037, IOException -> 0x0030, NumberFormatException -> 0x0029
            r0 = 0
            f.i.b.z<f.i.b.o> r1 = f.i.b.c0.a0.o.X     // Catch: EOFException -> 0x0027, d -> 0x0037, IOException -> 0x0030, NumberFormatException -> 0x0029
            java.lang.Object r4 = r1.a(r4)     // Catch: EOFException -> 0x0027, d -> 0x0037, IOException -> 0x0030, NumberFormatException -> 0x0029
            f.i.b.o r4 = (f.i.b.o) r4     // Catch: EOFException -> 0x0027, d -> 0x0037, IOException -> 0x0030, NumberFormatException -> 0x0029
            goto L_0x0044
        L_0x0027:
            r4 = move-exception
            goto L_0x0040
        L_0x0029:
            r4 = move-exception
            f.i.b.w r0 = new f.i.b.w
            r0.<init>(r4)
            throw r0
        L_0x0030:
            r4 = move-exception
            f.i.b.p r0 = new f.i.b.p
            r0.<init>(r4)
            throw r0
        L_0x0037:
            r4 = move-exception
            f.i.b.w r0 = new f.i.b.w
            r0.<init>(r4)
            throw r0
        L_0x003e:
            r4 = move-exception
            r0 = 1
        L_0x0040:
            if (r0 == 0) goto L_0x005a
            f.i.b.q r4 = f.i.b.q.a
        L_0x0044:
            r0 = 0
            if (r4 == 0) goto L_0x0059
            boolean r1 = r4 instanceof f.i.b.q
            if (r1 == 0) goto L_0x004c
            return r0
        L_0x004c:
            f.i.b.n<T> r0 = r3.b
            f.i.b.d0.a<T> r1 = r3.f6025d
            java.lang.reflect.Type r1 = r1.b
            f.i.b.c0.a0.m<T>$b r2 = r3.f6027f
            java.lang.Object r4 = r0.a(r4, r1, r2)
            return r4
        L_0x0059:
            throw r0
        L_0x005a:
            f.i.b.w r0 = new f.i.b.w
            r0.<init>(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.b.c0.a0.m.a(f.i.b.e0.a):java.lang.Object");
    }

    @Override // f.i.b.z
    public void b(c cVar, T t) throws IOException {
        v<T> vVar = this.a;
        if (vVar == null) {
            z<T> zVar = this.f6028g;
            if (zVar == null) {
                zVar = this.f6024c.g(this.f6026e, this.f6025d);
                this.f6028g = zVar;
            }
            zVar.b(cVar, t);
        } else if (t == null) {
            cVar.I();
        } else {
            o.X.b(cVar, vVar.a(t, this.f6025d.b, this.f6027f));
        }
    }
}
