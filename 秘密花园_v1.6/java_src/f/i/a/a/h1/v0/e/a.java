package f.i.a.a.h1.v0.e;

import android.net.Uri;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.b1.u.k;
import f.i.a.a.e1.c0;
import f.i.a.a.e1.y;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* compiled from: SsManifest.java */
/* loaded from: classes.dex */
public class a implements y<a> {
    public final int a;
    public final int b;

    /* renamed from: c  reason: collision with root package name */
    public final int f5247c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f5248d;

    /* renamed from: e  reason: collision with root package name */
    public final C0077a f5249e;

    /* renamed from: f  reason: collision with root package name */
    public final b[] f5250f;

    /* renamed from: g  reason: collision with root package name */
    public final long f5251g;

    /* renamed from: h  reason: collision with root package name */
    public final long f5252h;

    /* compiled from: SsManifest.java */
    /* renamed from: f.i.a.a.h1.v0.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0077a {
        public final UUID a;
        public final byte[] b;

        /* renamed from: c  reason: collision with root package name */
        public final k[] f5253c;

        public C0077a(UUID uuid, byte[] bArr, k[] kVarArr) {
            this.a = uuid;
            this.b = bArr;
            this.f5253c = kVarArr;
        }
    }

    /* compiled from: SsManifest.java */
    /* loaded from: classes.dex */
    public static class b {
        public final int a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5254c;

        /* renamed from: d  reason: collision with root package name */
        public final String f5255d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5256e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5257f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5258g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5259h;

        /* renamed from: i  reason: collision with root package name */
        public final String f5260i;

        /* renamed from: j  reason: collision with root package name */
        public final b0[] f5261j;

        /* renamed from: k  reason: collision with root package name */
        public final int f5262k;

        /* renamed from: l  reason: collision with root package name */
        public final String f5263l;

        /* renamed from: m  reason: collision with root package name */
        public final String f5264m;
        public final List<Long> n;
        public final long[] o;
        public final long p;

        public b(String str, String str2, int i2, String str3, long j2, String str4, int i3, int i4, int i5, int i6, String str5, b0[] b0VarArr, List<Long> list, long[] jArr, long j3) {
            this.f5263l = str;
            this.f5264m = str2;
            this.a = i2;
            this.b = str3;
            this.f5254c = j2;
            this.f5255d = str4;
            this.f5256e = i3;
            this.f5257f = i4;
            this.f5258g = i5;
            this.f5259h = i6;
            this.f5260i = str5;
            this.f5261j = b0VarArr;
            this.n = list;
            this.o = jArr;
            this.p = j3;
            this.f5262k = list.size();
        }

        public Uri a(int i2, int i3) {
            h.v(this.f5261j != null);
            h.v(this.n != null);
            h.v(i3 < this.n.size());
            String num = Integer.toString(this.f5261j[i2].f4093e);
            String l2 = this.n.get(i3).toString();
            return h.g1(this.f5263l, this.f5264m.replace("{bitrate}", num).replace("{Bitrate}", num).replace("{start time}", l2).replace("{start_time}", l2));
        }

        public b b(b0[] b0VarArr) {
            return new b(this.f5263l, this.f5264m, this.a, this.b, this.f5254c, this.f5255d, this.f5256e, this.f5257f, this.f5258g, this.f5259h, this.f5260i, b0VarArr, this.n, this.o, this.p);
        }

        public long c(int i2) {
            if (i2 == this.f5262k - 1) {
                return this.p;
            }
            long[] jArr = this.o;
            return jArr[i2 + 1] - jArr[i2];
        }

        public int d(long j2) {
            return h0.f(this.o, j2, true, true);
        }
    }

    public a(int i2, int i3, long j2, long j3, long j4, int i4, boolean z, C0077a c0077a, b[] bVarArr) {
        long h0 = j3 == 0 ? -9223372036854775807L : h0.h0(j3, 1000000L, j2);
        long h02 = j4 != 0 ? h0.h0(j4, 1000000L, j2) : -9223372036854775807L;
        this.a = i2;
        this.b = i3;
        this.f5251g = h0;
        this.f5252h = h02;
        this.f5247c = i4;
        this.f5248d = z;
        this.f5249e = c0077a;
        this.f5250f = bVarArr;
    }

    @Override // f.i.a.a.e1.y
    public a a(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVar = null;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            c0 c0Var = (c0) arrayList.get(i2);
            b bVar2 = this.f5250f[c0Var.b];
            if (bVar2 != bVar && bVar != null) {
                arrayList2.add(bVar.b((b0[]) arrayList3.toArray(new b0[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f5261j[c0Var.f4712c]);
            i2++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.b((b0[]) arrayList3.toArray(new b0[0])));
        }
        return new a(this.a, this.b, this.f5251g, this.f5252h, this.f5247c, this.f5248d, this.f5249e, (b[]) arrayList2.toArray(new b[0]));
    }

    public a(int i2, int i3, long j2, long j3, int i4, boolean z, C0077a c0077a, b[] bVarArr) {
        this.a = i2;
        this.b = i3;
        this.f5251g = j2;
        this.f5252h = j3;
        this.f5247c = i4;
        this.f5248d = z;
        this.f5249e = c0077a;
        this.f5250f = bVarArr;
    }
}
