package f.i.a.a.w0;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.j0;
import f.i.a.a.m1.h0;
import f.i.a.a.w0.o;
import f.i.a.a.w0.p;
import f.i.a.a.w0.r;
import f.i.a.a.w0.z;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: DefaultAudioSink.java */
/* loaded from: classes.dex */
public final class v implements p {
    public int A;
    public long C;
    @Nullable
    public ByteBuffer G;
    @Nullable
    public ByteBuffer H;
    public byte[] I;
    public int J;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean Q;
    public long R;
    @Nullable
    public final j a;
    public final b b;

    /* renamed from: f  reason: collision with root package name */
    public final m[] f5903f;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public p.c f5908k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public AudioTrack f5909l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public c f5910m;
    public c n;
    public AudioTrack o;
    @Nullable
    public j0 q;
    public long s;
    public long t;
    @Nullable
    public ByteBuffer u;
    public int v;
    public long w;
    public long x;
    public long y;
    public long z;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5900c = false;

    /* renamed from: h  reason: collision with root package name */
    public final ConditionVariable f5905h = new ConditionVariable(true);

    /* renamed from: i  reason: collision with root package name */
    public final r f5906i = new r(new f(null));

    /* renamed from: d  reason: collision with root package name */
    public final u f5901d = new u();

    /* renamed from: e  reason: collision with root package name */
    public final e0 f5902e = new e0();

    /* renamed from: g  reason: collision with root package name */
    public final m[] f5904g = {new y()};
    public float D = 1.0f;
    public int B = 0;
    public i p = i.f5865e;
    public int O = 0;
    public s P = new s(0, 0.0f);
    public j0 r = j0.f5383e;
    public int K = -1;
    public m[] E = new m[0];
    public ByteBuffer[] F = new ByteBuffer[0];

    /* renamed from: j  reason: collision with root package name */
    public final ArrayDeque<e> f5907j = new ArrayDeque<>();

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public class a extends Thread {
        public final /* synthetic */ AudioTrack a;

        public a(AudioTrack audioTrack) {
            this.a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.a.flush();
                this.a.release();
            } finally {
                v.this.f5905h.open();
            }
        }
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public interface b {
        j0 a(j0 j0Var);

        long b();

        long c(long j2);
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final boolean a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5911c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5912d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5913e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5914f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5915g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5916h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f5917i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f5918j;

        /* renamed from: k  reason: collision with root package name */
        public final m[] f5919k;

        public c(boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2, boolean z3, m[] mVarArr) {
            int i9;
            int i10;
            this.a = z;
            this.b = i2;
            this.f5911c = i3;
            this.f5912d = i4;
            this.f5913e = i5;
            this.f5914f = i6;
            this.f5915g = i7;
            if (i8 == 0) {
                if (z) {
                    int minBufferSize = AudioTrack.getMinBufferSize(i5, i6, i7);
                    h.v(minBufferSize != -2);
                    long j2 = (long) this.f5913e;
                    int i11 = this.f5912d;
                    i10 = h0.o(minBufferSize * 4, ((int) ((250000 * j2) / 1000000)) * i11, (int) Math.max((long) minBufferSize, ((j2 * 750000) / 1000000) * ((long) i11)));
                } else {
                    if (i7 != 5) {
                        if (i7 != 6) {
                            if (i7 == 7) {
                                i9 = 192000;
                            } else if (i7 == 8) {
                                i9 = 2250000;
                            } else if (i7 == 14) {
                                i9 = 3062500;
                            } else if (i7 == 17) {
                                i9 = 336000;
                            } else if (i7 != 18) {
                                throw new IllegalArgumentException();
                            }
                        }
                        i9 = 768000;
                    } else {
                        i9 = 80000;
                    }
                    i10 = (int) ((((long) (this.f5915g == 5 ? i9 * 2 : i9)) * 250000) / 1000000);
                }
                i8 = i10;
            }
            this.f5916h = i8;
            this.f5917i = z2;
            this.f5918j = z3;
            this.f5919k = mVarArr;
        }

        public boolean a(c cVar) {
            return cVar.f5915g == this.f5915g && cVar.f5913e == this.f5913e && cVar.f5914f == this.f5914f;
        }

        public long b(long j2) {
            return (j2 * 1000000) / ((long) this.f5913e);
        }
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public static class d implements b {
        public final m[] a;
        public final b0 b = new b0();

        /* renamed from: c  reason: collision with root package name */
        public final d0 f5920c;

        public d(m... mVarArr) {
            this.a = (m[]) Arrays.copyOf(mVarArr, mVarArr.length + 2);
            d0 d0Var = new d0();
            this.f5920c = d0Var;
            m[] mVarArr2 = this.a;
            mVarArr2[mVarArr.length] = this.b;
            mVarArr2[mVarArr.length + 1] = d0Var;
        }

        @Override // f.i.a.a.w0.v.b
        public j0 a(j0 j0Var) {
            b0 b0Var = this.b;
            b0Var.f5822i = j0Var.f5384c;
            b0Var.flush();
            d0 d0Var = this.f5920c;
            float f2 = j0Var.a;
            if (d0Var != null) {
                float n = h0.n(f2, 0.1f, 8.0f);
                if (d0Var.f5839d != n) {
                    d0Var.f5839d = n;
                    d0Var.f5843h = true;
                }
                d0Var.flush();
                d0 d0Var2 = this.f5920c;
                float f3 = j0Var.b;
                if (d0Var2 != null) {
                    float n2 = h0.n(f3, 0.1f, 8.0f);
                    if (d0Var2.f5840e != n2) {
                        d0Var2.f5840e = n2;
                        d0Var2.f5843h = true;
                    }
                    d0Var2.flush();
                    return new j0(n, n2, j0Var.f5384c);
                }
                throw null;
            }
            throw null;
        }

        @Override // f.i.a.a.w0.v.b
        public long b() {
            return this.b.p;
        }

        @Override // f.i.a.a.w0.v.b
        public long c(long j2) {
            d0 d0Var = this.f5920c;
            long j3 = d0Var.n;
            if (j3 < 1024) {
                return (long) (((double) d0Var.f5839d) * ((double) j2));
            }
            int i2 = d0Var.f5841f;
            int i3 = d0Var.f5838c;
            if (i2 == i3) {
                return h0.h0(j2, d0Var.f5848m, j3);
            }
            return h0.h0(j2, d0Var.f5848m * ((long) i2), j3 * ((long) i3));
        }

        public m[] d() {
            return this.a;
        }
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public static final class e {
        public final j0 a;
        public final long b;

        /* renamed from: c  reason: collision with root package name */
        public final long f5921c;

        public e(j0 j0Var, long j2, long j3, a aVar) {
            this.a = j0Var;
            this.b = j2;
            this.f5921c = j3;
        }
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public final class f implements r.a {
        public f(a aVar) {
        }

        @Override // f.i.a.a.w0.r.a
        public void a(int i2, long j2) {
            if (v.this.f5908k != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                v vVar = v.this;
                long j3 = elapsedRealtime - vVar.R;
                z.b bVar = (z.b) vVar.f5908k;
                o.a aVar = z.this.q0;
                if (aVar.b != null) {
                    aVar.a.post(new f(aVar, i2, j2, j3));
                }
                if (z.this == null) {
                    throw null;
                }
            }
        }

        @Override // f.i.a.a.w0.r.a
        public void b(long j2, long j3, long j4, long j5) {
            v vVar = v.this;
            c cVar = vVar.n;
            if (cVar.a) {
                long j6 = vVar.w / ((long) cVar.b);
            }
            v.this.f();
        }

        @Override // f.i.a.a.w0.r.a
        public void c(long j2, long j3, long j4, long j5) {
            v vVar = v.this;
            c cVar = vVar.n;
            if (cVar.a) {
                long j6 = vVar.w / ((long) cVar.b);
            }
            v.this.f();
        }

        @Override // f.i.a.a.w0.r.a
        public void d(long j2) {
        }
    }

    public v(@Nullable j jVar, m[] mVarArr) {
        d dVar = new d(mVarArr);
        this.a = jVar;
        this.b = dVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new a0(), this.f5901d, this.f5902e);
        Collections.addAll(arrayList, dVar.d());
        this.f5903f = (m[]) arrayList.toArray(new m[0]);
    }

    public final void a(j0 j0Var, long j2) {
        this.f5907j.add(new e(this.n.f5918j ? this.b.a(j0Var) : j0.f5383e, Math.max(0L, j2), this.n.b(f()), null));
        m[] mVarArr = this.n.f5919k;
        ArrayList arrayList = new ArrayList();
        for (m mVar : mVarArr) {
            if (mVar.isActive()) {
                arrayList.add(mVar);
            } else {
                mVar.flush();
            }
        }
        int size = arrayList.size();
        this.E = (m[]) arrayList.toArray(new m[size]);
        this.F = new ByteBuffer[size];
        e();
    }

    /* JADX WARNING: Removed duplicated region for block: B:100:0x0135  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00d1  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x00d4  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x00dd  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00e3  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00e5 A[FALL_THROUGH] */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x00e8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(int r19, int r20, int r21, int r22, @androidx.annotation.Nullable int[] r23, int r24, int r25) throws f.i.a.a.w0.p.a {
        /*
        // Method dump skipped, instructions count: 342
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.b(int, int, int, int, int[], int, int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean c() throws f.i.a.a.w0.p.d {
        /*
            r9 = this;
            int r0 = r9.K
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L_0x0016
            f.i.a.a.w0.v$c r0 = r9.n
            boolean r0 = r0.f5917i
            if (r0 == 0) goto L_0x000f
            r0 = 0
            goto L_0x0012
        L_0x000f:
            f.i.a.a.w0.m[] r0 = r9.E
            int r0 = r0.length
        L_0x0012:
            r9.K = r0
        L_0x0014:
            r0 = 1
            goto L_0x0017
        L_0x0016:
            r0 = 0
        L_0x0017:
            int r4 = r9.K
            f.i.a.a.w0.m[] r5 = r9.E
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L_0x003a
            r4 = r5[r4]
            if (r0 == 0) goto L_0x002a
            r4.c()
        L_0x002a:
            r9.l(r7)
            boolean r0 = r4.a()
            if (r0 != 0) goto L_0x0034
            return r3
        L_0x0034:
            int r0 = r9.K
            int r0 = r0 + r2
            r9.K = r0
            goto L_0x0014
        L_0x003a:
            java.nio.ByteBuffer r0 = r9.H
            if (r0 == 0) goto L_0x0046
            r9.p(r0, r7)
            java.nio.ByteBuffer r0 = r9.H
            if (r0 == 0) goto L_0x0046
            return r3
        L_0x0046:
            r9.K = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.c():boolean");
    }

    public void d() {
        if (i()) {
            this.w = 0;
            this.x = 0;
            this.y = 0;
            this.z = 0;
            this.A = 0;
            j0 j0Var = this.q;
            if (j0Var != null) {
                this.r = j0Var;
                this.q = null;
            } else if (!this.f5907j.isEmpty()) {
                this.r = this.f5907j.getLast().a;
            }
            this.f5907j.clear();
            this.s = 0;
            this.t = 0;
            this.f5902e.p = 0;
            e();
            this.G = null;
            this.H = null;
            this.M = false;
            this.L = false;
            this.K = -1;
            this.u = null;
            this.v = 0;
            this.B = 0;
            AudioTrack audioTrack = this.f5906i.f5881c;
            h.t(audioTrack);
            if (audioTrack.getPlayState() == 3) {
                this.o.pause();
            }
            AudioTrack audioTrack2 = this.o;
            this.o = null;
            c cVar = this.f5910m;
            if (cVar != null) {
                this.n = cVar;
                this.f5910m = null;
            }
            r rVar = this.f5906i;
            rVar.f5888j = 0;
            rVar.u = 0;
            rVar.t = 0;
            rVar.f5889k = 0;
            rVar.f5881c = null;
            rVar.f5884f = null;
            this.f5905h.close();
            new a(audioTrack2).start();
        }
    }

    public final void e() {
        int i2 = 0;
        while (true) {
            m[] mVarArr = this.E;
            if (i2 < mVarArr.length) {
                m mVar = mVarArr[i2];
                mVar.flush();
                this.F[i2] = mVar.b();
                i2++;
            } else {
                return;
            }
        }
    }

    public final long f() {
        c cVar = this.n;
        return cVar.a ? this.y / ((long) cVar.f5912d) : this.z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01d6, code lost:
        if (r4.b() == 0) goto L_0x01d8;
     */
    /* JADX WARNING: Removed duplicated region for block: B:145:0x032c A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01fa A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01fc  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean g(java.nio.ByteBuffer r24, long r25) throws f.i.a.a.w0.p.b, f.i.a.a.w0.p.d {
        /*
        // Method dump skipped, instructions count: 1031
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.g(java.nio.ByteBuffer, long):boolean");
    }

    public boolean h() {
        return i() && this.f5906i.c(f());
    }

    public final boolean i() {
        return this.o != null;
    }

    public void j() {
        this.N = true;
        if (i()) {
            q qVar = this.f5906i.f5884f;
            h.t(qVar);
            qVar.a();
            this.o.play();
        }
    }

    public final void k() {
        if (!this.M) {
            this.M = true;
            r rVar = this.f5906i;
            long f2 = f();
            rVar.x = rVar.b();
            rVar.v = SystemClock.elapsedRealtime() * 1000;
            rVar.y = f2;
            this.o.stop();
            this.v = 0;
        }
    }

    public final void l(long j2) throws p.d {
        ByteBuffer byteBuffer;
        int length = this.E.length;
        int i2 = length;
        while (i2 >= 0) {
            if (i2 > 0) {
                byteBuffer = this.F[i2 - 1];
            } else {
                byteBuffer = this.G;
                if (byteBuffer == null) {
                    byteBuffer = m.a;
                }
            }
            if (i2 == length) {
                p(byteBuffer, j2);
            } else {
                m mVar = this.E[i2];
                mVar.d(byteBuffer);
                ByteBuffer b2 = mVar.b();
                this.F[i2] = b2;
                if (b2.hasRemaining()) {
                    i2++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i2--;
            } else {
                return;
            }
        }
    }

    public void m() {
        d();
        AudioTrack audioTrack = this.f5909l;
        if (audioTrack != null) {
            this.f5909l = null;
            new w(this, audioTrack).start();
        }
        for (m mVar : this.f5903f) {
            mVar.reset();
        }
        for (m mVar2 : this.f5904g) {
            mVar2.reset();
        }
        this.O = 0;
        this.N = false;
    }

    public final void n() {
        if (i()) {
            if (h0.a >= 21) {
                this.o.setVolume(this.D);
                return;
            }
            AudioTrack audioTrack = this.o;
            float f2 = this.D;
            audioTrack.setStereoVolume(f2, f2);
        }
    }

    public boolean o(int i2, int i3) {
        if (!h0.T(i3)) {
            j jVar = this.a;
            if (jVar != null) {
                if ((Arrays.binarySearch(jVar.a, i3) >= 0) && (i2 == -1 || i2 <= this.a.b)) {
                    return true;
                }
            }
            return false;
        } else if (i3 != 4 || h0.a >= 21) {
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:46:0x00e4, code lost:
        if (r15 < r14) goto L_0x00fd;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void p(java.nio.ByteBuffer r13, long r14) throws f.i.a.a.w0.p.d {
        /*
        // Method dump skipped, instructions count: 299
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.p(java.nio.ByteBuffer, long):void");
    }
}
