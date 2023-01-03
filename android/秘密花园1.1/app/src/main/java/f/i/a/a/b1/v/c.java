package f.i.a.a.b1.v;

import f.i.a.a.h0;
import f.i.a.a.m1.u;
import java.io.IOException;

/* compiled from: OggExtractor.java */
/* loaded from: classes.dex */
public class c implements f.i.a.a.b1.g {
    public f.i.a.a.b1.h a;
    public h b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f4254c;

    @Override // f.i.a.a.b1.g
    public void a() {
    }

    public final boolean b(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        boolean z;
        e eVar = new e();
        if (eVar.a(dVar, true) && (eVar.b & 2) == 2) {
            int min = Math.min(eVar.f4262f, 8);
            u uVar = new u(min);
            dVar.d(uVar.a, 0, min, false);
            uVar.A(0);
            if (uVar.a() >= 5 && uVar.p() == 127 && uVar.q() == 1179402563) {
                this.b = new b();
            } else {
                uVar.A(0);
                try {
                    z = c.a.a.b.g.h.u1(1, uVar, true);
                } catch (h0 unused) {
                    z = false;
                }
                if (z) {
                    this.b = new j();
                } else {
                    uVar.A(0);
                    if (g.h(uVar)) {
                        this.b = new g();
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0160  */
    @Override // f.i.a.a.b1.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int c(f.i.a.a.b1.d r23, f.i.a.a.b1.m r24) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 366
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.v.c.c(f.i.a.a.b1.d, f.i.a.a.b1.m):int");
    }

    @Override // f.i.a.a.b1.g
    public void d(f.i.a.a.b1.h hVar) {
        this.a = hVar;
    }

    @Override // f.i.a.a.b1.g
    public void f(long j2, long j3) {
        h hVar = this.b;
        if (hVar != null) {
            d dVar = hVar.a;
            dVar.a.b();
            dVar.b.v();
            dVar.f4255c = -1;
            dVar.f4257e = false;
            if (j2 == 0) {
                hVar.f(!hVar.f4274l);
            } else if (hVar.f4270h != 0) {
                long j4 = (hVar.f4271i * j3) / 1000000;
                hVar.f4267e = j4;
                hVar.f4266d.d(j4);
                hVar.f4270h = 2;
            }
        }
    }

    @Override // f.i.a.a.b1.g
    public boolean i(f.i.a.a.b1.d dVar) throws IOException, InterruptedException {
        try {
            return b(dVar);
        } catch (h0 unused) {
            return false;
        }
    }
}
