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
    public final int f5238c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f5239d;

    /* renamed from: e  reason: collision with root package name */
    public final C0077a f5240e;

    /* renamed from: f  reason: collision with root package name */
    public final b[] f5241f;

    /* renamed from: g  reason: collision with root package name */
    public final long f5242g;

    /* renamed from: h  reason: collision with root package name */
    public final long f5243h;

    /* compiled from: SsManifest.java */
    /* renamed from: f.i.a.a.h1.v0.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0077a {
        public final UUID a;
        public final byte[] b;

        /* renamed from: c  reason: collision with root package name */
        public final k[] f5244c;

        public C0077a(UUID uuid, byte[] bArr, k[] kVarArr) {
            this.a = uuid;
            this.b = bArr;
            this.f5244c = kVarArr;
        }
    }

    /* compiled from: SsManifest.java */
    /* loaded from: classes.dex */
    public static class b {
        public final int a;
        public final String b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5245c;

        /* renamed from: d  reason: collision with root package name */
        public final String f5246d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5247e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5248f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5249g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5250h;

        /* renamed from: i  reason: collision with root package name */
        public final String f5251i;

        /* renamed from: j  reason: collision with root package name */
        public final b0[] f5252j;

        /* renamed from: k  reason: collision with root package name */
        public final int f5253k;

        /* renamed from: l  reason: collision with root package name */
        public final String f5254l;

        /* renamed from: m  reason: collision with root package name */
        public final String f5255m;
        public final List<Long> n;
        public final long[] o;
        public final long p;

        public b(String str, String str2, int i2, String str3, long j2, String str4, int i3, int i4, int i5, int i6, String str5, b0[] b0VarArr, List<Long> list, long[] jArr, long j3) {
            this.f5254l = str;
            this.f5255m = str2;
            this.a = i2;
            this.b = str3;
            this.f5245c = j2;
            this.f5246d = str4;
            this.f5247e = i3;
            this.f5248f = i4;
            this.f5249g = i5;
            this.f5250h = i6;
            this.f5251i = str5;
            this.f5252j = b0VarArr;
            this.n = list;
            this.o = jArr;
            this.p = j3;
            this.f5253k = list.size();
        }

        public Uri a(int i2, int i3) {
            h.v(this.f5252j != null);
            h.v(this.n != null);
            h.v(i3 < this.n.size());
            String num = Integer.toString(this.f5252j[i2].f4084e);
            String l2 = this.n.get(i3).toString();
            return h.e1(this.f5254l, this.f5255m.replace("{bitrate}", num).replace("{Bitrate}", num).replace("{start time}", l2).replace("{start_time}", l2));
        }

        public b b(b0[] b0VarArr) {
            return new b(this.f5254l, this.f5255m, this.a, this.b, this.f5245c, this.f5246d, this.f5247e, this.f5248f, this.f5249g, this.f5250h, this.f5251i, b0VarArr, this.n, this.o, this.p);
        }

        public long c(int i2) {
            if (i2 == this.f5253k - 1) {
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
        this.f5242g = h0;
        this.f5243h = h02;
        this.f5238c = i4;
        this.f5239d = z;
        this.f5240e = c0077a;
        this.f5241f = bVarArr;
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
            b bVar2 = this.f5241f[c0Var.b];
            if (bVar2 != bVar && bVar != null) {
                arrayList2.add(bVar.b((b0[]) arrayList3.toArray(new b0[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f5252j[c0Var.f4703c]);
            i2++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.b((b0[]) arrayList3.toArray(new b0[0])));
        }
        return new a(this.a, this.b, this.f5242g, this.f5243h, this.f5238c, this.f5239d, this.f5240e, (b[]) arrayList2.toArray(new b[0]));
    }

    public a(int i2, int i3, long j2, long j3, int i4, boolean z, C0077a c0077a, b[] bVarArr) {
        this.a = i2;
        this.b = i3;
        this.f5242g = j2;
        this.f5243h = j3;
        this.f5238c = i4;
        this.f5239d = z;
        this.f5240e = c0077a;
        this.f5241f = bVarArr;
    }
}
