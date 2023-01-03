package f.i.a.a.b1.x;

import f.i.a.a.b0;
import f.i.a.a.b1.h;
import f.i.a.a.b1.p;
import f.i.a.a.b1.x.c0;
import f.i.a.a.m1.e0;

/* compiled from: SpliceInfoSectionReader.java */
/* loaded from: classes.dex */
public final class y implements v {
    public e0 a;
    public p b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4510c;

    @Override // f.i.a.a.b1.x.v
    public void b(e0 e0Var, h hVar, c0.d dVar) {
        this.a = e0Var;
        dVar.a();
        p q = hVar.q(dVar.c(), 4);
        this.b = q;
        q.d(b0.n(dVar.b(), "application/x-scte35", null, -1, null));
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x004c, code lost:
        if (r4 != androidx.recyclerview.widget.RecyclerView.FOREVER_NS) goto L_0x0050;
     */
    @Override // f.i.a.a.b1.x.v
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c(f.i.a.a.m1.u r11) {
        /*
            r10 = this;
            boolean r0 = r10.f4510c
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 != 0) goto L_0x0029
            f.i.a.a.m1.e0 r0 = r10.a
            long r3 = r0.c()
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0014
            return
        L_0x0014:
            f.i.a.a.b1.p r0 = r10.b
            r3 = 0
            f.i.a.a.m1.e0 r4 = r10.a
            long r4 = r4.c()
            java.lang.String r6 = "application/x-scte35"
            f.i.a.a.b0 r3 = f.i.a.a.b0.m(r3, r6, r4)
            r0.d(r3)
            r0 = 1
            r10.f4510c = r0
        L_0x0029:
            int r7 = r11.a()
            f.i.a.a.b1.p r0 = r10.b
            r0.a(r11, r7)
            f.i.a.a.b1.p r3 = r10.b
            f.i.a.a.m1.e0 r11 = r10.a
            long r4 = r11.f5661c
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0043
            long r0 = r11.f5661c
            long r4 = r11.b
            long r1 = r4 + r0
            goto L_0x004f
        L_0x0043:
            long r4 = r11.a
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r11 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r11 == 0) goto L_0x004f
            goto L_0x0050
        L_0x004f:
            r4 = r1
        L_0x0050:
            r6 = 1
            r8 = 0
            r9 = 0
            r3.c(r4, r6, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.x.y.c(f.i.a.a.m1.u):void");
    }
}
