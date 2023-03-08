package f.i.a.a.d1.j;

import f.i.a.a.d1.a;
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
public final class c implements f.i.a.a.d1.b {
    public final u a = new u();
    public final t b = new t();

    /* renamed from: c  reason: collision with root package name */
    public e0 f4657c;

    @Override // f.i.a.a.d1.b
    public f.i.a.a.d1.a a(f.i.a.a.d1.d dVar) {
        int i2;
        long j2;
        ArrayList arrayList;
        boolean z;
        boolean z2;
        long j3;
        boolean z3;
        long j4;
        int i3;
        int i4;
        int i5;
        boolean z4;
        long j5;
        List list;
        long j6;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        long j7;
        int i6;
        int i7;
        int i8;
        boolean z9;
        long j8;
        e0 e0Var = this.f4657c;
        if (e0Var == null || dVar.f4616f != e0Var.c()) {
            e0 e0Var2 = new e0(dVar.f6031d);
            this.f4657c = e0Var2;
            e0Var2.a(dVar.f6031d - dVar.f4616f);
        }
        ByteBuffer byteBuffer = dVar.f6030c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        this.a.y(array, limit);
        this.b.i(array, limit);
        this.b.l(39);
        long f2 = (this.b.f(1) << 32) | this.b.f(32);
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
                    if (z10) {
                        i2 = p;
                        j2 = j9;
                        arrayList = arrayList3;
                        z = false;
                        z2 = false;
                        j3 = -9223372036854775807L;
                        z3 = false;
                        j4 = -9223372036854775807L;
                        i3 = 0;
                        i4 = 0;
                        i5 = 0;
                    } else {
                        int p2 = uVar.p();
                        boolean z11 = (p2 & 128) != 0;
                        boolean z12 = (p2 & 64) != 0;
                        boolean z13 = (p2 & 32) != 0;
                        long q2 = z12 ? uVar.q() : -9223372036854775807L;
                        if (z12) {
                            i2 = p;
                        } else {
                            int p3 = uVar.p();
                            ArrayList arrayList4 = new ArrayList(p3);
                            int i10 = 0;
                            while (i10 < p3) {
                                arrayList4.add(new f.b(uVar.p(), uVar.q(), null));
                                i10++;
                                p3 = p3;
                                p = p;
                            }
                            i2 = p;
                            arrayList3 = arrayList4;
                        }
                        if (z13) {
                            long p4 = uVar.p();
                            j2 = 128;
                            z4 = (p4 & 128) != 0;
                            j5 = ((((p4 & 1) << 32) | uVar.q()) * 1000) / 90;
                        } else {
                            j2 = 128;
                            z4 = false;
                            j5 = -9223372036854775807L;
                        }
                        z3 = z4;
                        j4 = j5;
                        arrayList = arrayList3;
                        i3 = uVar.u();
                        z = z11;
                        z2 = z12;
                        j3 = q2;
                        i4 = uVar.p();
                        i5 = uVar.p();
                    }
                    arrayList2.add(new f.c(q, z10, z, z2, arrayList, j3, z3, j4, i3, i4, i5));
                    i9++;
                    j9 = j2;
                    p = i2;
                }
                bVar = new f(arrayList2);
            } else if (f4 == 5) {
                u uVar2 = this.a;
                e0 e0Var3 = this.f4657c;
                long q3 = uVar2.q();
                boolean z14 = (uVar2.p() & 128) != 0;
                List emptyList = Collections.emptyList();
                if (z14) {
                    list = emptyList;
                    j6 = -9223372036854775807L;
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    z8 = false;
                    j7 = -9223372036854775807L;
                    i6 = 0;
                    i7 = 0;
                    i8 = 0;
                } else {
                    int p5 = uVar2.p();
                    boolean z15 = (p5 & 128) != 0;
                    boolean z16 = (p5 & 64) != 0;
                    boolean z17 = (p5 & 32) != 0;
                    boolean z18 = (p5 & 16) != 0;
                    long a = (!z16 || z18) ? -9223372036854775807L : g.a(uVar2, f2);
                    if (!z16) {
                        int p6 = uVar2.p();
                        ArrayList arrayList5 = new ArrayList(p6);
                        for (int i11 = 0; i11 < p6; i11++) {
                            int p7 = uVar2.p();
                            long a2 = !z18 ? g.a(uVar2, f2) : -9223372036854775807L;
                            arrayList5.add(new d.b(p7, a2, e0Var3.b(a2), null));
                        }
                        emptyList = arrayList5;
                    }
                    if (z17) {
                        long p8 = uVar2.p();
                        z9 = (p8 & 128) != 0;
                        j8 = ((((p8 & 1) << 32) | uVar2.q()) * 1000) / 90;
                    } else {
                        z9 = false;
                        j8 = -9223372036854775807L;
                    }
                    int u = uVar2.u();
                    int p9 = uVar2.p();
                    i6 = u;
                    z8 = z9;
                    i8 = uVar2.p();
                    list = emptyList;
                    j7 = j8;
                    i7 = p9;
                    z7 = z18;
                    z5 = z15;
                    z6 = z16;
                    j6 = a;
                }
                bVar = new d(q3, z14, z5, z6, z7, j6, e0Var3.b(j6), list, z8, j7, i6, i7, i8);
            } else if (f4 == 6) {
                u uVar3 = this.a;
                e0 e0Var4 = this.f4657c;
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
        return bVar == null ? new f.i.a.a.d1.a(new a.b[0]) : new f.i.a.a.d1.a(bVar);
    }
}
