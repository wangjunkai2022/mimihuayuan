package f.i.a.a.b1.v;

import c.a.a.b.g.h;
import com.umeng.commonsdk.proguard.c;
import f.i.a.a.b1.d;
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
    public final long f4241c;

    /* renamed from: d  reason: collision with root package name */
    public final h f4242d;

    /* renamed from: e  reason: collision with root package name */
    public int f4243e;

    /* renamed from: f  reason: collision with root package name */
    public long f4244f;

    /* renamed from: g  reason: collision with root package name */
    public long f4245g;

    /* renamed from: h  reason: collision with root package name */
    public long f4246h;

    /* renamed from: i  reason: collision with root package name */
    public long f4247i;

    /* renamed from: j  reason: collision with root package name */
    public long f4248j;

    /* renamed from: k  reason: collision with root package name */
    public long f4249k;

    /* renamed from: l  reason: collision with root package name */
    public long f4250l;

    /* compiled from: DefaultOggSeeker.java */
    /* loaded from: classes.dex */
    public final class b implements n {
        public b(C0058a aVar) {
        }

        @Override // f.i.a.a.b1.n
        public boolean g() {
            return true;
        }

        @Override // f.i.a.a.b1.n
        public n.a h(long j2) {
            a aVar = a.this;
            long j3 = aVar.b;
            long j4 = aVar.f4241c;
            return new n.a(new o(j2, h0.p(((((j4 - j3) * ((((long) aVar.f4242d.f4271i) * j2) / 1000000)) / aVar.f4244f) + j3) - c.f3052d, j3, j4 - 1)));
        }

        @Override // f.i.a.a.b1.n
        public long j() {
            a aVar = a.this;
            return aVar.f4242d.a(aVar.f4244f);
        }
    }

    public a(h hVar, long j2, long j3, long j4, long j5, boolean z) {
        h.m(j2 >= 0 && j3 > j2);
        this.f4242d = hVar;
        this.b = j2;
        this.f4241c = j3;
        if (j4 == j3 - j2 || z) {
            this.f4244f = j5;
            this.f4243e = 4;
            return;
        }
        this.f4243e = 0;
    }

    @Override // f.i.a.a.b1.v.f
    public n a() {
        if (this.f4244f != 0) {
            return new b(null);
        }
        return null;
    }

    public final boolean b(d dVar, long j2) throws IOException, InterruptedException {
        int i2;
        long min = Math.min(j2 + 3, this.f4241c);
        int i3 = 2048;
        byte[] bArr = new byte[2048];
        while (true) {
            long j3 = dVar.f4042d;
            int i4 = 0;
            if (((long) i3) + j3 > min && (i3 = (int) (min - j3)) < 4) {
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

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00b8 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00b9  */
    @Override // f.i.a.a.b1.v.f
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long c(f.i.a.a.b1.d r24) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 319
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.v.a.c(f.i.a.a.b1.d):long");
    }

    @Override // f.i.a.a.b1.v.f
    public void d(long j2) {
        this.f4246h = h0.p(j2, 0, this.f4244f - 1);
        this.f4243e = 2;
        this.f4247i = this.b;
        this.f4248j = this.f4241c;
        this.f4249k = 0;
        this.f4250l = this.f4244f;
    }
}
