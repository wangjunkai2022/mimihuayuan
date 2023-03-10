package f.i.a.a.c1;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.b0;
import f.i.a.a.c0;
import f.i.a.a.c1.d;
import f.i.a.a.m1.d0;
import f.i.a.a.m1.h0;
import f.i.a.a.p;
import f.i.a.a.q;
import f.i.a.a.w;
import f.i.a.a.y0.e;
import f.i.a.a.z0.f;
import f.i.a.a.z0.g;
import f.i.a.a.z0.j;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MediaCodecRenderer.java */
/* loaded from: classes.dex */
public abstract class b extends p {
    public static final byte[] o0 = h0.x("0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78");
    public long A;
    public float B;
    @Nullable
    public MediaCodec C;
    @Nullable
    public b0 D;
    public float E;
    @Nullable
    public ArrayDeque<f.i.a.a.c1.a> F;
    @Nullable
    public a G;
    @Nullable
    public f.i.a.a.c1.a H;
    public int I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public ByteBuffer[] S;
    public ByteBuffer[] T;
    public long U;
    public int V;
    public int W;
    public ByteBuffer X;
    public boolean Y;
    public boolean Z;
    public boolean a0;
    public int b0;
    public int c0;
    public int d0;
    public boolean e0;
    public boolean f0;
    public long g0;
    public long h0;
    public boolean i0;

    /* renamed from: j  reason: collision with root package name */
    public final c f4611j;
    public boolean j0;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final g<j> f4612k;
    public boolean k0;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f4613l;
    public boolean l0;

    /* renamed from: m  reason: collision with root package name */
    public final boolean f4614m;
    public boolean m0;
    public final float n;
    public f.i.a.a.y0.d n0;
    public final e o;
    public final e p;
    public final c0 q;
    public final d0<b0> r;
    public final ArrayList<Long> s;
    public final MediaCodec.BufferInfo t;
    @Nullable
    public b0 u;
    public b0 v;
    @Nullable
    public f<j> w;
    @Nullable
    public f<j> x;
    @Nullable
    public MediaCrypto y;
    public boolean z;

    public b(int i2, c cVar, @Nullable g<j> gVar, boolean z, boolean z2, float f2) {
        super(i2);
        if (cVar != null) {
            this.f4611j = cVar;
            this.f4612k = gVar;
            this.f4613l = z;
            this.f4614m = z2;
            this.n = f2;
            this.o = new e(0);
            this.p = new e(0);
            this.q = new c0();
            this.r = new d0<>();
            this.s = new ArrayList<>();
            this.t = new MediaCodec.BufferInfo();
            this.b0 = 0;
            this.c0 = 0;
            this.d0 = 0;
            this.E = -1.0f;
            this.B = 1.0f;
            this.A = -9223372036854775807L;
            return;
        }
        throw null;
    }

    @Override // f.i.a.a.p
    public void A() {
        try {
            d0();
        } finally {
            i0(null);
        }
    }

    @Override // f.i.a.a.p
    public final int F(b0 b0Var) throws w {
        try {
            return k0(this.f4611j, this.f4612k, b0Var);
        } catch (d.c e2) {
            throw w.a(e2, this.f5843c);
        }
    }

    @Override // f.i.a.a.p
    public final int H() {
        return 8;
    }

    public abstract int I(MediaCodec mediaCodec, f.i.a.a.c1.a aVar, b0 b0Var, b0 b0Var2);

    public abstract void J(f.i.a.a.c1.a aVar, MediaCodec mediaCodec, b0 b0Var, MediaCrypto mediaCrypto, float f2);

    public final void K() throws w {
        if (this.e0) {
            this.c0 = 1;
            this.d0 = 3;
            return;
        }
        d0();
        T();
    }

    public final void L() throws w {
        if (h0.a < 23) {
            K();
        } else if (this.e0) {
            this.c0 = 1;
            this.d0 = 2;
        } else {
            m0();
        }
    }

    public final boolean M() throws w {
        boolean N = N();
        if (N) {
            T();
        }
        return N;
    }

    public boolean N() {
        if (this.C == null) {
            return false;
        }
        if (this.d0 != 3 && !this.L && (!this.M || !this.f0)) {
            this.C.flush();
            f0();
            g0();
            this.U = -9223372036854775807L;
            this.f0 = false;
            this.e0 = false;
            this.l0 = true;
            this.P = false;
            this.Q = false;
            this.Y = false;
            this.Z = false;
            this.k0 = false;
            this.s.clear();
            this.h0 = -9223372036854775807L;
            this.g0 = -9223372036854775807L;
            this.c0 = 0;
            this.d0 = 0;
            this.b0 = this.a0 ? 1 : 0;
            return false;
        }
        d0();
        return true;
    }

    public final List<f.i.a.a.c1.a> O(boolean z) throws d.c {
        List<f.i.a.a.c1.a> R = R(this.f4611j, this.u, z);
        if (R.isEmpty() && z) {
            R = R(this.f4611j, this.u, false);
            if (!R.isEmpty()) {
                StringBuilder o = f.b.a.a.a.o("Drm session requires secure decoder for ");
                o.append(this.u.f4097i);
                o.append(", but no secure decoder available. Trying to proceed with ");
                o.append(R);
                o.append(".");
                o.toString();
            }
        }
        return R;
    }

    public boolean P() {
        return false;
    }

    public abstract float Q(float f2, b0 b0Var, b0[] b0VarArr);

    public abstract List<f.i.a.a.c1.a> R(c cVar, b0 b0Var, boolean z) throws d.c;

    public final void S(f.i.a.a.c1.a aVar, MediaCrypto mediaCrypto) throws Exception {
        MediaCodec mediaCodec;
        long elapsedRealtime;
        int i2;
        String str = aVar.a;
        float Q = h0.a < 23 ? -1.0f : Q(this.B, this.u, this.f5846f);
        float f2 = Q <= this.n ? -1.0f : Q;
        try {
            elapsedRealtime = SystemClock.elapsedRealtime();
            h.g("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
        } catch (Exception e2) {
            e = e2;
            mediaCodec = null;
        }
        try {
            h.N();
            h.g("configureCodec");
            J(aVar, mediaCodec, this.u, mediaCrypto, f2);
            h.N();
            h.g("startCodec");
            mediaCodec.start();
            h.N();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (h0.a < 21) {
                this.S = mediaCodec.getInputBuffers();
                this.T = mediaCodec.getOutputBuffers();
            }
            this.C = mediaCodec;
            this.H = aVar;
            this.E = f2;
            this.D = this.u;
            if (h0.a <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (h0.f5747d.startsWith("SM-T585") || h0.f5747d.startsWith("SM-A510") || h0.f5747d.startsWith("SM-A520") || h0.f5747d.startsWith("SM-J700"))) {
                i2 = 2;
            } else {
                i2 = (h0.a >= 24 || !(("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) && ("flounder".equals(h0.b) || "flounder_lte".equals(h0.b) || "grouper".equals(h0.b) || "tilapia".equals(h0.b)))) ? 0 : 1;
            }
            this.I = i2;
            this.J = h0.f5747d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
            this.K = h0.a < 21 && this.D.f4099k.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
            int i3 = h0.a;
            this.L = i3 < 18 || (i3 == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (h0.a == 19 && h0.f5747d.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
            this.M = (h0.a <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (h0.a <= 19 && (("hb2000".equals(h0.b) || "stvm8".equals(h0.b)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
            this.N = h0.a == 21 && "OMX.google.aac.decoder".equals(str);
            this.O = h0.a <= 18 && this.D.v == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
            String str2 = aVar.a;
            this.R = ((h0.a <= 25 && "OMX.rk.video_decoder.avc".equals(str2)) || ((h0.a <= 17 && "OMX.allwinner.video.decoder.avc".equals(str2)) || ("Amazon".equals(h0.f5746c) && "AFTS".equals(h0.f5747d) && aVar.f4608f))) || P();
            f0();
            g0();
            this.U = this.f5844d == 2 ? SystemClock.elapsedRealtime() + 1000 : -9223372036854775807L;
            this.a0 = false;
            this.b0 = 0;
            this.f0 = false;
            this.e0 = false;
            this.c0 = 0;
            this.d0 = 0;
            this.P = false;
            this.Q = false;
            this.Y = false;
            this.Z = false;
            this.l0 = true;
            this.n0.a++;
            V(str, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Exception e3) {
            e = e3;
            if (mediaCodec != null) {
                if (h0.a < 21) {
                    this.S = null;
                    this.T = null;
                }
                mediaCodec.release();
            }
            throw e;
        }
    }

    public final void T() throws w {
        if (this.C != null || this.u == null) {
            return;
        }
        h0(this.x);
        String str = this.u.f4097i;
        f<j> fVar = this.w;
        if (fVar != null) {
            boolean z = false;
            if (this.y == null) {
                j a2 = fVar.a();
                if (a2 == null) {
                    if (this.w.b() == null) {
                        return;
                    }
                } else {
                    try {
                        MediaCrypto mediaCrypto = new MediaCrypto(a2.a, a2.b);
                        this.y = mediaCrypto;
                        this.z = !a2.f6086c && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (MediaCryptoException e2) {
                        throw w.a(e2, this.f5843c);
                    }
                }
            }
            if ("Amazon".equals(h0.f5746c) && ("AFTM".equals(h0.f5747d) || "AFTB".equals(h0.f5747d))) {
                z = true;
            }
            if (z) {
                int c2 = this.w.c();
                if (c2 == 1) {
                    throw w.a(this.w.b(), this.f5843c);
                }
                if (c2 != 4) {
                    return;
                }
            }
        }
        try {
            U(this.y, this.z);
        } catch (a e3) {
            throw w.a(e3, this.f5843c);
        }
    }

    public final void U(MediaCrypto mediaCrypto, boolean z) throws a {
        if (this.F == null) {
            try {
                List<f.i.a.a.c1.a> O = O(z);
                ArrayDeque<f.i.a.a.c1.a> arrayDeque = new ArrayDeque<>();
                this.F = arrayDeque;
                if (this.f4614m) {
                    arrayDeque.addAll(O);
                } else if (!O.isEmpty()) {
                    this.F.add(O.get(0));
                }
                this.G = null;
            } catch (d.c e2) {
                throw new a(this.u, e2, z, -49998);
            }
        }
        if (!this.F.isEmpty()) {
            while (this.C == null) {
                f.i.a.a.c1.a peekFirst = this.F.peekFirst();
                if (!j0(peekFirst)) {
                    return;
                }
                try {
                    S(peekFirst, mediaCrypto);
                } catch (Exception e3) {
                    String str = "Failed to initialize decoder: " + peekFirst;
                    this.F.removeFirst();
                    b0 b0Var = this.u;
                    String str2 = peekFirst.a;
                    a aVar = new a("Decoder init failed: " + str2 + ", " + b0Var, e3, b0Var.f4097i, z, str2, (h0.a < 21 || !(e3 instanceof MediaCodec.CodecException)) ? null : ((MediaCodec.CodecException) e3).getDiagnosticInfo(), null);
                    a aVar2 = this.G;
                    if (aVar2 == null) {
                        this.G = aVar;
                    } else {
                        this.G = new a(aVar2.getMessage(), aVar2.getCause(), aVar2.a, aVar2.b, aVar2.f4615c, aVar2.f4616d, aVar);
                    }
                    if (this.F.isEmpty()) {
                        throw this.G;
                    }
                }
            }
            this.F = null;
            return;
        }
        throw new a(this.u, null, z, -49999);
    }

    public abstract void V(String str, long j2, long j3);

    /* JADX WARN: Code restructure failed: missing block: B:65:0x00bc, code lost:
        if (r6.o == r3.o) goto L68;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void W(f.i.a.a.b0 r6) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.c1.b.W(f.i.a.a.b0):void");
    }

    public abstract void X(MediaCodec mediaCodec, MediaFormat mediaFormat) throws w;

    public abstract void Y(long j2);

    public abstract void Z(e eVar);

    @Override // f.i.a.a.p0
    public boolean a() {
        return this.j0;
    }

    public final void a0() throws w {
        int i2 = this.d0;
        if (i2 == 1) {
            M();
        } else if (i2 == 2) {
            m0();
        } else if (i2 != 3) {
            this.j0 = true;
            e0();
        } else {
            d0();
            T();
        }
    }

    public abstract boolean b0(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z, boolean z2, b0 b0Var) throws w;

    public final boolean c0(boolean z) throws w {
        this.p.i();
        int E = E(this.q, this.p, z);
        if (E == -5) {
            W(this.q.a);
            return true;
        } else if (E == -4 && this.p.h()) {
            this.i0 = true;
            a0();
            return false;
        } else {
            return false;
        }
    }

    @Override // f.i.a.a.p0
    public boolean d() {
        if (this.u == null || this.k0) {
            return false;
        }
        if (!(g() ? this.f5849i : this.f5845e.d())) {
            if (!(this.W >= 0) && (this.U == -9223372036854775807L || SystemClock.elapsedRealtime() >= this.U)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [f.i.a.a.z0.f, android.media.MediaCrypto] */
    public void d0() {
        this.F = null;
        this.H = null;
        this.D = null;
        f0();
        g0();
        if (h0.a < 21) {
            this.S = null;
            this.T = null;
        }
        this.k0 = false;
        this.U = -9223372036854775807L;
        this.s.clear();
        this.h0 = -9223372036854775807L;
        this.g0 = -9223372036854775807L;
        try {
            if (this.C != null) {
                this.n0.b++;
                this.C.stop();
                this.C.release();
            }
            this.C = null;
            try {
                if (this.y != null) {
                    this.y.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.C = null;
            try {
                if (this.y != null) {
                    this.y.release();
                }
                throw th;
            } finally {
            }
        }
    }

    public void e0() throws w {
    }

    public final void f0() {
        this.V = -1;
        this.o.f6039c = null;
    }

    public final void g0() {
        this.W = -1;
        this.X = null;
    }

    public final void h0(@Nullable f<j> fVar) {
        f<j> fVar2 = this.w;
        this.w = fVar;
        if (fVar2 == null || fVar2 == this.x || fVar2 == fVar) {
            return;
        }
        ((f.i.a.a.z0.d) this.f4612k).b(fVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x01be A[LOOP:0: B:14:0x0027->B:110:0x01be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x01c2 A[EDGE_INSN: B:260:0x01c2->B:111:0x01c2 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x041e A[EDGE_INSN: B:263:0x041e->B:244:0x041e ?: BREAK  , SYNTHETIC] */
    @Override // f.i.a.a.p0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i(long r26, long r28) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.c1.b.i(long, long):void");
    }

    public final void i0(@Nullable f<j> fVar) {
        f<j> fVar2 = this.x;
        this.x = null;
        if (fVar2 == null || fVar2 == this.w) {
            return;
        }
        ((f.i.a.a.z0.d) this.f4612k).b(fVar2);
    }

    public boolean j0(f.i.a.a.c1.a aVar) {
        return true;
    }

    public abstract int k0(c cVar, g<j> gVar, b0 b0Var) throws d.c;

    @Override // f.i.a.a.p, f.i.a.a.p0
    public final void l(float f2) throws w {
        this.B = f2;
        if (this.C == null || this.d0 == 3 || this.f5844d == 0) {
            return;
        }
        l0();
    }

    public final void l0() throws w {
        if (h0.a < 23) {
            return;
        }
        float Q = Q(this.B, this.D, this.f5846f);
        float f2 = this.E;
        if (f2 == Q) {
            return;
        }
        if (Q == -1.0f) {
            K();
        } else if (f2 != -1.0f || Q > this.n) {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", Q);
            this.C.setParameters(bundle);
            this.E = Q;
        }
    }

    @TargetApi(23)
    public final void m0() throws w {
        j a2 = this.x.a();
        if (a2 == null) {
            d0();
            T();
        } else if (q.f5852e.equals(a2.a)) {
            d0();
            T();
        } else if (M()) {
        } else {
            try {
                this.y.setMediaDrmSession(a2.b);
                h0(this.x);
                this.c0 = 0;
                this.d0 = 0;
            } catch (MediaCryptoException e2) {
                throw w.a(e2, this.f5843c);
            }
        }
    }

    @Nullable
    public final b0 n0(long j2) {
        b0 b0Var;
        d0<b0> d0Var = this.r;
        synchronized (d0Var) {
            b0Var = null;
            while (d0Var.f5744d > 0 && j2 - d0Var.a[d0Var.f5743c] >= 0) {
                b0[] b0VarArr = d0Var.b;
                int i2 = d0Var.f5743c;
                b0 b0Var2 = b0VarArr[i2];
                b0VarArr[i2] = null;
                d0Var.f5743c = (i2 + 1) % b0VarArr.length;
                d0Var.f5744d--;
                b0Var = b0Var2;
            }
        }
        b0 b0Var3 = b0Var;
        if (b0Var3 != null) {
            this.v = b0Var3;
        }
        return b0Var3;
    }

    @Override // f.i.a.a.p
    public void x() {
        this.u = null;
        if (this.x == null && this.w == null) {
            N();
        } else {
            A();
        }
    }

    /* compiled from: MediaCodecRenderer.java */
    /* loaded from: classes.dex */
    public static class a extends Exception {
        public final String a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final String f4615c;

        /* renamed from: d  reason: collision with root package name */
        public final String f4616d;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a(f.i.a.a.b0 r11, java.lang.Throwable r12, boolean r13, int r14) {
            /*
                r10 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "Decoder init failed: ["
                r0.append(r1)
                r0.append(r14)
                java.lang.String r1 = "], "
                r0.append(r1)
                r0.append(r11)
                java.lang.String r3 = r0.toString()
                java.lang.String r5 = r11.f4097i
                if (r14 >= 0) goto L20
                java.lang.String r11 = "neg_"
                goto L22
            L20:
                java.lang.String r11 = ""
            L22:
                java.lang.String r0 = "com.google.android.exoplayer.MediaCodecTrackRenderer_"
                java.lang.StringBuilder r11 = f.b.a.a.a.r(r0, r11)
                int r14 = java.lang.Math.abs(r14)
                r11.append(r14)
                java.lang.String r8 = r11.toString()
                r9 = 0
                r7 = 0
                r2 = r10
                r4 = r12
                r6 = r13
                r2.<init>(r3, r4, r5, r6, r7, r8, r9)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.c1.b.a.<init>(f.i.a.a.b0, java.lang.Throwable, boolean, int):void");
        }

        public a(String str, Throwable th, String str2, boolean z, @Nullable String str3, @Nullable String str4, @Nullable a aVar) {
            super(str, th);
            this.a = str2;
            this.b = z;
            this.f4615c = str3;
            this.f4616d = str4;
        }
    }
}
