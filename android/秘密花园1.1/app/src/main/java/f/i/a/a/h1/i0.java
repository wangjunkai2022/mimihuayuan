package f.i.a.a.h1;

import f.i.a.a.b1.p;

/* compiled from: SampleMetadataQueue.java */
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: i  reason: collision with root package name */
    public int f4796i;

    /* renamed from: j  reason: collision with root package name */
    public int f4797j;

    /* renamed from: k  reason: collision with root package name */
    public int f4798k;

    /* renamed from: l  reason: collision with root package name */
    public int f4799l;
    public boolean o;
    public f.i.a.a.b0 r;
    public int s;
    public int a = 1000;
    public int[] b = new int[1000];

    /* renamed from: c  reason: collision with root package name */
    public long[] f4790c = new long[1000];

    /* renamed from: f  reason: collision with root package name */
    public long[] f4793f = new long[1000];

    /* renamed from: e  reason: collision with root package name */
    public int[] f4792e = new int[1000];

    /* renamed from: d  reason: collision with root package name */
    public int[] f4791d = new int[1000];

    /* renamed from: g  reason: collision with root package name */
    public p.a[] f4794g = new p.a[1000];

    /* renamed from: h  reason: collision with root package name */
    public f.i.a.a.b0[] f4795h = new f.i.a.a.b0[1000];

    /* renamed from: m  reason: collision with root package name */
    public long f4800m = Long.MIN_VALUE;
    public long n = Long.MIN_VALUE;
    public boolean q = true;
    public boolean p = true;

    /* compiled from: SampleMetadataQueue.java */
    /* loaded from: classes.dex */
    public static final class a {
        public int a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public p.a f4801c;
    }

    public final long a(int i2) {
        int i3;
        this.f4800m = Math.max(this.f4800m, d(i2));
        this.f4796i -= i2;
        this.f4797j += i2;
        int i4 = this.f4798k + i2;
        this.f4798k = i4;
        int i5 = this.a;
        if (i4 >= i5) {
            this.f4798k = i4 - i5;
        }
        int i6 = this.f4799l - i2;
        this.f4799l = i6;
        if (i6 < 0) {
            this.f4799l = 0;
        }
        if (this.f4796i == 0) {
            int i7 = this.f4798k;
            if (i7 == 0) {
                i7 = this.a;
            }
            return this.f4790c[i7 - 1] + this.f4791d[i3];
        }
        return this.f4790c[this.f4798k];
    }

    public long b(int i2) {
        int i3 = this.f4797j;
        int i4 = this.f4796i;
        int i5 = (i3 + i4) - i2;
        boolean z = false;
        c.a.a.b.g.h.m(i5 >= 0 && i5 <= i4 - this.f4799l);
        int i6 = this.f4796i - i5;
        this.f4796i = i6;
        this.n = Math.max(this.f4800m, d(i6));
        if (i5 == 0 && this.o) {
            z = true;
        }
        this.o = z;
        int i7 = this.f4796i;
        if (i7 == 0) {
            return 0L;
        }
        int e2 = e(i7 - 1);
        return this.f4790c[e2] + this.f4791d[e2];
    }

    public final int c(int i2, int i3, long j2, boolean z) {
        int i4 = -1;
        for (int i5 = 0; i5 < i3 && this.f4793f[i2] <= j2; i5++) {
            if (!z || (this.f4792e[i2] & 1) != 0) {
                i4 = i5;
            }
            i2++;
            if (i2 == this.a) {
                i2 = 0;
            }
        }
        return i4;
    }

    public final long d(int i2) {
        long j2 = Long.MIN_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int e2 = e(i2 - 1);
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = Math.max(j2, this.f4793f[e2]);
            if ((this.f4792e[e2] & 1) != 0) {
                break;
            }
            e2--;
            if (e2 == -1) {
                e2 = this.a - 1;
            }
        }
        return j2;
    }

    public final int e(int i2) {
        int i3 = this.f4798k + i2;
        int i4 = this.a;
        return i3 < i4 ? i3 : i3 - i4;
    }

    public synchronized boolean f() {
        return this.f4799l != this.f4796i;
    }
}
