package f.i.a.a.w0;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.annotation.Nullable;
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
    public int B;
    public long C;
    public float D;
    public m[] E;
    public ByteBuffer[] F;
    @Nullable
    public ByteBuffer G;
    @Nullable
    public ByteBuffer H;
    public byte[] I;
    public int J;
    public int K;
    public boolean L;
    public boolean M;
    public boolean N;
    public int O;
    public s P;
    public boolean Q;
    public long R;
    @Nullable
    public final j a;
    public final b b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f5984c;

    /* renamed from: d  reason: collision with root package name */
    public final u f5985d;

    /* renamed from: e  reason: collision with root package name */
    public final e0 f5986e;

    /* renamed from: f  reason: collision with root package name */
    public final m[] f5987f;

    /* renamed from: g  reason: collision with root package name */
    public final m[] f5988g;

    /* renamed from: h  reason: collision with root package name */
    public final ConditionVariable f5989h;

    /* renamed from: i  reason: collision with root package name */
    public final r f5990i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayDeque<e> f5991j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public p.c f5992k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public AudioTrack f5993l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public c f5994m;
    public c n;
    public AudioTrack o;
    public i p;
    @Nullable
    public j0 q;
    public j0 r;
    public long s;
    public long t;
    @Nullable
    public ByteBuffer u;
    public int v;
    public long w;
    public long x;
    public long y;
    public long z;

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
                v.this.f5989h.open();
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
        public final int f5995c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5996d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5997e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5998f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5999g;

        /* renamed from: h  reason: collision with root package name */
        public final int f6000h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f6001i;

        /* renamed from: j  reason: collision with root package name */
        public final boolean f6002j;

        /* renamed from: k  reason: collision with root package name */
        public final m[] f6003k;

        public c(boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z2, boolean z3, m[] mVarArr) {
            int i9;
            int i10;
            this.a = z;
            this.b = i2;
            this.f5995c = i3;
            this.f5996d = i4;
            this.f5997e = i5;
            this.f5998f = i6;
            this.f5999g = i7;
            if (i8 == 0) {
                if (z) {
                    int minBufferSize = AudioTrack.getMinBufferSize(i5, i6, i7);
                    c.a.a.b.g.h.v(minBufferSize != -2);
                    long j2 = this.f5997e;
                    int i11 = this.f5996d;
                    i10 = h0.o(minBufferSize * 4, ((int) ((250000 * j2) / 1000000)) * i11, (int) Math.max(minBufferSize, ((j2 * 750000) / 1000000) * i11));
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
                    i10 = (int) (((this.f5999g == 5 ? i9 * 2 : i9) * 250000) / 1000000);
                }
                i8 = i10;
            }
            this.f6000h = i8;
            this.f6001i = z2;
            this.f6002j = z3;
            this.f6003k = mVarArr;
        }

        public boolean a(c cVar) {
            return cVar.f5999g == this.f5999g && cVar.f5997e == this.f5997e && cVar.f5998f == this.f5998f;
        }

        public long b(long j2) {
            return (j2 * 1000000) / this.f5997e;
        }
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public static class d implements b {
        public final m[] a;
        public final b0 b = new b0();

        /* renamed from: c  reason: collision with root package name */
        public final d0 f6004c;

        public d(m... mVarArr) {
            this.a = (m[]) Arrays.copyOf(mVarArr, mVarArr.length + 2);
            d0 d0Var = new d0();
            this.f6004c = d0Var;
            m[] mVarArr2 = this.a;
            mVarArr2[mVarArr.length] = this.b;
            mVarArr2[mVarArr.length + 1] = d0Var;
        }

        @Override // f.i.a.a.w0.v.b
        public j0 a(j0 j0Var) {
            b0 b0Var = this.b;
            b0Var.f5906i = j0Var.f5468c;
            b0Var.flush();
            d0 d0Var = this.f6004c;
            float f2 = j0Var.a;
            if (d0Var != null) {
                float n = h0.n(f2, 0.1f, 8.0f);
                if (d0Var.f5923d != n) {
                    d0Var.f5923d = n;
                    d0Var.f5927h = true;
                }
                d0Var.flush();
                d0 d0Var2 = this.f6004c;
                float f3 = j0Var.b;
                if (d0Var2 != null) {
                    float n2 = h0.n(f3, 0.1f, 8.0f);
                    if (d0Var2.f5924e != n2) {
                        d0Var2.f5924e = n2;
                        d0Var2.f5927h = true;
                    }
                    d0Var2.flush();
                    return new j0(n, n2, j0Var.f5468c);
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
            d0 d0Var = this.f6004c;
            long j3 = d0Var.n;
            if (j3 >= 1024) {
                int i2 = d0Var.f5925f;
                int i3 = d0Var.f5922c;
                if (i2 == i3) {
                    return h0.h0(j2, d0Var.f5932m, j3);
                }
                return h0.h0(j2, d0Var.f5932m * i2, j3 * i3);
            }
            return (long) (d0Var.f5923d * j2);
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
        public final long f6005c;

        public e(j0 j0Var, long j2, long j3, a aVar) {
            this.a = j0Var;
            this.b = j2;
            this.f6005c = j3;
        }
    }

    /* compiled from: DefaultAudioSink.java */
    /* loaded from: classes.dex */
    public final class f implements r.a {
        public f(a aVar) {
        }

        @Override // f.i.a.a.w0.r.a
        public void a(final int i2, final long j2) {
            if (v.this.f5992k != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                v vVar = v.this;
                final long j3 = elapsedRealtime - vVar.R;
                z.b bVar = (z.b) vVar.f5992k;
                final o.a aVar = z.this.q0;
                if (aVar.b != null) {
                    aVar.a.post(new Runnable() { // from class: f.i.a.a.w0.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            o.a.this.c(i2, j2, j3);
                        }
                    });
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
                long j6 = vVar.w / cVar.b;
            }
            v.this.f();
        }

        @Override // f.i.a.a.w0.r.a
        public void c(long j2, long j3, long j4, long j5) {
            v vVar = v.this;
            c cVar = vVar.n;
            if (cVar.a) {
                long j6 = vVar.w / cVar.b;
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
        this.f5984c = false;
        this.f5989h = new ConditionVariable(true);
        this.f5990i = new r(new f(null));
        this.f5985d = new u();
        this.f5986e = new e0();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new a0(), this.f5985d, this.f5986e);
        Collections.addAll(arrayList, dVar.d());
        this.f5987f = (m[]) arrayList.toArray(new m[0]);
        this.f5988g = new m[]{new y()};
        this.D = 1.0f;
        this.B = 0;
        this.p = i.f5949e;
        this.O = 0;
        this.P = new s(0, 0.0f);
        this.r = j0.f5467e;
        this.K = -1;
        this.E = new m[0];
        this.F = new ByteBuffer[0];
        this.f5991j = new ArrayDeque<>();
    }

    public final void a(j0 j0Var, long j2) {
        this.f5991j.add(new e(this.n.f6002j ? this.b.a(j0Var) : j0.f5467e, Math.max(0L, j2), this.n.b(f()), null));
        m[] mVarArr = this.n.f6003k;
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

    /* JADX WARN: Removed duplicated region for block: B:103:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00e5 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(int r19, int r20, int r21, int r22, @androidx.annotation.Nullable int[] r23, int r24, int r25) throws f.i.a.a.w0.p.a {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.b(int, int, int, int, int[], int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0034 -> B:9:0x0014). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() throws f.i.a.a.w0.p.d {
        /*
            r9 = this;
            int r0 = r9.K
            r1 = -1
            r2 = 1
            r3 = 0
            if (r0 != r1) goto L16
            f.i.a.a.w0.v$c r0 = r9.n
            boolean r0 = r0.f6001i
            if (r0 == 0) goto Lf
            r0 = 0
            goto L12
        Lf:
            f.i.a.a.w0.m[] r0 = r9.E
            int r0 = r0.length
        L12:
            r9.K = r0
        L14:
            r0 = 1
            goto L17
        L16:
            r0 = 0
        L17:
            int r4 = r9.K
            f.i.a.a.w0.m[] r5 = r9.E
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L3a
            r4 = r5[r4]
            if (r0 == 0) goto L2a
            r4.c()
        L2a:
            r9.l(r7)
            boolean r0 = r4.a()
            if (r0 != 0) goto L34
            return r3
        L34:
            int r0 = r9.K
            int r0 = r0 + r2
            r9.K = r0
            goto L14
        L3a:
            java.nio.ByteBuffer r0 = r9.H
            if (r0 == 0) goto L46
            r9.p(r0, r7)
            java.nio.ByteBuffer r0 = r9.H
            if (r0 == 0) goto L46
            return r3
        L46:
            r9.K = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.c():boolean");
    }

    public void d() {
        if (i()) {
            this.w = 0L;
            this.x = 0L;
            this.y = 0L;
            this.z = 0L;
            this.A = 0;
            j0 j0Var = this.q;
            if (j0Var != null) {
                this.r = j0Var;
                this.q = null;
            } else if (!this.f5991j.isEmpty()) {
                this.r = this.f5991j.getLast().a;
            }
            this.f5991j.clear();
            this.s = 0L;
            this.t = 0L;
            this.f5986e.p = 0L;
            e();
            this.G = null;
            this.H = null;
            this.M = false;
            this.L = false;
            this.K = -1;
            this.u = null;
            this.v = 0;
            this.B = 0;
            AudioTrack audioTrack = this.f5990i.f5965c;
            c.a.a.b.g.h.t(audioTrack);
            if (audioTrack.getPlayState() == 3) {
                this.o.pause();
            }
            AudioTrack audioTrack2 = this.o;
            this.o = null;
            c cVar = this.f5994m;
            if (cVar != null) {
                this.n = cVar;
                this.f5994m = null;
            }
            r rVar = this.f5990i;
            rVar.f5972j = 0L;
            rVar.u = 0;
            rVar.t = 0;
            rVar.f5973k = 0L;
            rVar.f5965c = null;
            rVar.f5968f = null;
            this.f5989h.close();
            new a(audioTrack2).start();
        }
    }

    public final void e() {
        int i2 = 0;
        while (true) {
            m[] mVarArr = this.E;
            if (i2 >= mVarArr.length) {
                return;
            }
            m mVar = mVarArr[i2];
            mVar.flush();
            this.F[i2] = mVar.b();
            i2++;
        }
    }

    public final long f() {
        c cVar = this.n;
        return cVar.a ? this.y / cVar.f5996d : this.z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01d6, code lost:
        if (r4.b() == 0) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x032c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01fa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean g(java.nio.ByteBuffer r24, long r25) throws f.i.a.a.w0.p.b, f.i.a.a.w0.p.d {
        /*
            Method dump skipped, instructions count: 1031
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.g(java.nio.ByteBuffer, long):boolean");
    }

    public boolean h() {
        return i() && this.f5990i.c(f());
    }

    public final boolean i() {
        return this.o != null;
    }

    public void j() {
        this.N = true;
        if (i()) {
            q qVar = this.f5990i.f5968f;
            c.a.a.b.g.h.t(qVar);
            qVar.a();
            this.o.play();
        }
    }

    public final void k() {
        if (this.M) {
            return;
        }
        this.M = true;
        r rVar = this.f5990i;
        long f2 = f();
        rVar.x = rVar.b();
        rVar.v = SystemClock.elapsedRealtime() * 1000;
        rVar.y = f2;
        this.o.stop();
        this.v = 0;
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
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i2--;
        }
    }

    public void m() {
        d();
        AudioTrack audioTrack = this.f5993l;
        if (audioTrack != null) {
            this.f5993l = null;
            new w(this, audioTrack).start();
        }
        for (m mVar : this.f5987f) {
            mVar.reset();
        }
        for (m mVar2 : this.f5988g) {
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
        if (h0.T(i3)) {
            return i3 != 4 || h0.a >= 21;
        }
        j jVar = this.a;
        if (jVar != null) {
            if ((Arrays.binarySearch(jVar.a, i3) >= 0) && (i2 == -1 || i2 <= this.a.b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e4, code lost:
        if (r15 < r14) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(java.nio.ByteBuffer r13, long r14) throws f.i.a.a.w0.p.d {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.v.p(java.nio.ByteBuffer, long):void");
    }
}
