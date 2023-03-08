package f.i.a.a.b1.v;

import f.i.a.a.b1.n;
import f.i.a.a.b1.o;
import f.i.a.a.m1.h0;
import java.io.IOException;

/* compiled from: DefaultOggSeeker.java */
/* loaded from: classes.dex */
public final class a implements f {
    public final e a = new e();
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f4316c;

    /* renamed from: d  reason: collision with root package name */
    public final h f4317d;

    /* renamed from: e  reason: collision with root package name */
    public int f4318e;

    /* renamed from: f  reason: collision with root package name */
    public long f4319f;

    /* renamed from: g  reason: collision with root package name */
    public long f4320g;

    /* renamed from: h  reason: collision with root package name */
    public long f4321h;

    /* renamed from: i  reason: collision with root package name */
    public long f4322i;

    /* renamed from: j  reason: collision with root package name */
    public long f4323j;

    /* renamed from: k  reason: collision with root package name */
    public long f4324k;

    /* renamed from: l  reason: collision with root package name */
    public long f4325l;

    /* compiled from: DefaultOggSeeker.java */
    /* loaded from: classes.dex */
    public final class b implements n {
        public b(C0065a c0065a) {
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return true;
        }

        @Override // f.i.a.a.b1.n
        public n.a h(long j2) {
            a aVar = a.this;
            long j3 = aVar.b;
            long j4 = aVar.f4316c;
            return new n.a(new o(j2, h0.p(((((j4 - j3) * ((aVar.f4317d.f4346i * j2) / 1000000)) / aVar.f4319f) + j3) - com.umeng.commonsdk.proguard.c.f3127d, j3, j4 - 1)));
        }

        @Override // f.i.a.a.b1.n
        public long j() {
            a aVar = a.this;
            return aVar.f4317d.a(aVar.f4319f);
        }
    }

    public a(h hVar, long j2, long j3, long j4, long j5, boolean z) {
        c.a.a.b.g.h.m(j2 >= 0 && j3 > j2);
        this.f4317d = hVar;
        this.b = j2;
        this.f4316c = j3;
        if (j4 != j3 - j2 && !z) {
            this.f4318e = 0;
            return;
        }
        this.f4319f = j5;
        this.f4318e = 4;
    }

    @Override // f.i.a.a.b1.v.f
    public n a() {
        if (this.f4319f != 0) {
            return new b(null);
        }
        return null;
    }

    public final boolean b(f.i.a.a.b1.d dVar, long j2) throws IOException, InterruptedException {
        int i2;
        long min = Math.min(j2 + 3, this.f4316c);
        int i3 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            long j3 = dVar.f4117d;
            int i4 = 0;
            if (i3 + j3 > min && (i3 = (int) (min - j3)) < 4) {
                return false;
            }
            dVar.d(bArr, 0, i3, false);
            while (true) {
                i2 = i3 - 3;
                if (i4 < i2) {
                    if (bArr[i4] == 79 && bArr[i4 + 1] == 103 && bArr[i4 + 2] == 103 && bArr[i4 + 3] == 83) {
                        dVar.h(i4);
                        return true;
                    }
                    i4++;
                }
            }
            dVar.h(i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b9  */
    @Override // f.i.a.a.b1.v.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long c(f.i.a.a.b1.d r24) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.v.a.c(f.i.a.a.b1.d):long");
    }

    @Override // f.i.a.a.b1.v.f
    public void d(long j2) {
        this.f4321h = h0.p(j2, 0L, this.f4319f - 1);
        this.f4318e = 2;
        this.f4322i = this.b;
        this.f4323j = this.f4316c;
        this.f4324k = 0L;
        this.f4325l = this.f4319f;
    }
}
