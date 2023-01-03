package f.i.a.a.d1.j;

import f.i.a.a.d1.a;
import f.i.a.a.d1.b;
import f.i.a.a.d1.d;
import f.i.a.a.d1.j.d;
import f.i.a.a.d1.j.f;
import f.i.a.a.m1.e0;
import f.i.a.a.m1.t;
import f.i.a.a.m1.u;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: SpliceInfoDecoder.java */
/* loaded from: classes.dex */
public final class c implements b {
    public final u a = new u();
    public final t b = new t();

    /* renamed from: c  reason: collision with root package name */
    public e0 f4582c;

    @Override // f.i.a.a.d1.b
    public a a(d dVar) {
        int i2;
        int i3;
        int i4;
        long j2;
        boolean z;
        long j3;
        ArrayList arrayList;
        boolean z2;
        boolean z3;
        int i5;
        long j4;
        long j5;
        boolean z4;
        int i6;
        int i7;
        int i8;
        long j6;
        boolean z5;
        List list;
        boolean z6;
        boolean z7;
        boolean z8;
        long j7;
        long j8;
        boolean z9;
        e0 e0Var = this.f4582c;
        if (e0Var == null || dVar.f4541f != e0Var.c()) {
            e0 e0Var2 = new e0(dVar.f5956d);
            this.f4582c = e0Var2;
            e0Var2.a(dVar.f5956d - dVar.f4541f);
        }
        ByteBuffer byteBuffer = dVar.f5955c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.a.y(array, limit);
        this.b.i(array, limit);
        this.b.l(39);
        long f2 = (((long) this.b.f(1)) << 32) | ((long) this.b.f(32));
        this.b.l(20);
        int f3 = this.b.f(12);
        int f4 = this.b.f(8);
        this.a.B(14);
        a.b bVar = null;
        if (f4 == 0) {
            bVar = new e();
        } else if (f4 != 255) {
            long j9 = 128;
            if (f4 == 4) {
                u uVar = this.a;
                int p = uVar.p();
                ArrayList arrayList2 = new ArrayList(p);
                int i9 = 0;
                while (i9 < p) {
                    long q = uVar.q();
                    boolean z10 = (uVar.p() & 128) != 0;
                    ArrayList arrayList3 = new ArrayList();
                    if (!z10) {
                        int p2 = uVar.p();
                        boolean z11 = (p2 & 128) != 0;
                        boolean z12 = (p2 & 64) != 0;
                        boolean z13 = (p2 & 32) != 0;
                        long q2 = z12 ? uVar.q() : -9223372036854775807L;
                        if (!z12) {
                            int p3 = uVar.p();
                            ArrayList arrayList4 = new ArrayList(p3);
                            int i10 = 0;
                            while (i10 < p3) {
                                arrayList4.add(new f.b(uVar.p(), uVar.q(), null));
                                i10++;
                                p3 = p3;
                                p = p;
                            }
                            i5 = p;
                            arrayList3 = arrayList4;
                        } else {
                            i5 = p;
                        }
                        if (z13) {
                            long p4 = (long) uVar.p();
                            j4 = 128;
                            z4 = (p4 & 128) != 0;
                            j5 = ((((p4 & 1) << 32) | uVar.q()) * 1000) / 90;
                        } else {
                            j4 = 128;
                            z4 = false;
                            j5 = -9223372036854775807L;
                        }
                        int u = uVar.u();
                        int p5 = uVar.p();
                        i2 = uVar.p();
                        z = z4;
                        j2 = j5;
                        arrayList = arrayList3;
                        i4 = u;
                        z3 = z11;
                        z2 = z12;
                        j3 = q2;
                        i3 = p5;
                    } else {
                        i5 = p;
                        j4 = j9;
                        arrayList = arrayList3;
                        z3 = false;
                        z2 = false;
                        j3 = -9223372036854775807L;
                        z = false;
                        j2 = -9223372036854775807L;
                        i4 = 0;
                        i3 = 0;
                        i2 = 0;
                    }
                    arrayList2.add(new f.c(q, z10, z3, z2, arrayList, j3, z, j2, i4, i3, i2));
                    i9++;
                    j9 = j4;
                    p = i5;
                }
                bVar = new f(arrayList2);
            } else if (f4 == 5) {
                u uVar2 = this.a;
                e0 e0Var3 = this.f4582c;
                long q3 = uVar2.q();
                boolean z14 = (uVar2.p() & 128) != 0;
                List emptyList = Collections.emptyList();
                if (!z14) {
                    int p6 = uVar2.p();
                    boolean z15 = (p6 & 128) != 0;
                    boolean z16 = (p6 & 64) != 0;
                    boolean z17 = (p6 & 32) != 0;
                    boolean z18 = (p6 & 16) != 0;
                    long a = (!z16 || z18) ? -9223372036854775807L : g.a(uVar2, f2);
                    if (!z16) {
                        int p7 = uVar2.p();
                        ArrayList arrayList5 = new ArrayList(p7);
                        for (int i11 = 0; i11 < p7; i11++) {
                            int p8 = uVar2.p();
                            long a2 = !z18 ? g.a(uVar2, f2) : -9223372036854775807L;
                            arrayList5.add(new d.b(p8, a2, e0Var3.b(a2), null));
                        }
                        emptyList = arrayList5;
                    }
                    if (z17) {
                        long p9 = (long) uVar2.p();
                        z9 = (p9 & 128) != 0;
                        j8 = ((((p9 & 1) << 32) | uVar2.q()) * 1000) / 90;
                    } else {
                        z9 = false;
                        j8 = -9223372036854775807L;
                    }
                    int u2 = uVar2.u();
                    int p10 = uVar2.p();
                    i6 = uVar2.p();
                    i8 = u2;
                    z5 = z9;
                    list = emptyList;
                    j6 = j8;
                    i7 = p10;
                    z6 = z18;
                    z8 = z15;
                    z7 = z16;
                    j7 = a;
                } else {
                    list = emptyList;
                    j7 = -9223372036854775807L;
                    z8 = false;
                    z7 = false;
                    z6 = false;
                    z5 = false;
                    j6 = -9223372036854775807L;
                    i8 = 0;
                    i7 = 0;
                    i6 = 0;
                }
                bVar = new d(q3, z14, z8, z7, z6, j7, e0Var3.b(j7), list, z5, j6, i8, i7, i6);
            } else if (f4 == 6) {
                u uVar3 = this.a;
                e0 e0Var4 = this.f4582c;
                long a3 = g.a(uVar3, f2);
                bVar = new g(a3, e0Var4.b(a3));
            }
        } else {
            u uVar4 = this.a;
            long q4 = uVar4.q();
            int i12 = f3 - 4;
            byte[] bArr = new byte[i12];
            System.arraycopy(uVar4.a, uVar4.b, bArr, 0, i12);
            uVar4.b += i12;
            bVar = new a(q4, bArr, f2);
        }
        return bVar == null ? new a(new a.b[0]) : new a(bVar);
    }
}
