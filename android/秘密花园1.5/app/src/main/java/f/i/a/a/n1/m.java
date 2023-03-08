package f.i.a.a.n1;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.c1.d;
import f.i.a.a.m1.h0;
import f.i.a.a.n1.o;
import f.i.a.a.n1.s;
import f.i.a.a.w;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaCodecVideoRenderer.java */
/* loaded from: classes.dex */
public class m extends f.i.a.a.c1.b {
    public static final int[] b1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public static boolean c1;
    public static boolean d1;
    public Surface A0;
    public int B0;
    public boolean C0;
    public long D0;
    public long E0;
    public long F0;
    public int G0;
    public int H0;
    public int I0;
    public long J0;
    public int K0;
    public float L0;
    public int M0;
    public int N0;
    public int O0;
    public float P0;
    public int Q0;
    public int R0;
    public int S0;
    public float T0;
    public boolean U0;
    public int V0;
    public c W0;
    public long X0;
    public long Y0;
    public int Z0;
    @Nullable
    public n a1;
    public final Context p0;
    public final o q0;
    public final s.a r0;
    public final long s0;
    public final int t0;
    public final boolean u0;
    public final long[] v0;
    public final long[] w0;
    public b x0;
    public boolean y0;
    public Surface z0;

    /* compiled from: MediaCodecVideoRenderer.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5815c;

        public b(int i2, int i3, int i4) {
            this.a = i2;
            this.b = i3;
            this.f5815c = i4;
        }
    }

    /* compiled from: MediaCodecVideoRenderer.java */
    @TargetApi(23)
    /* loaded from: classes.dex */
    public final class c implements MediaCodec.OnFrameRenderedListener {
        public c(MediaCodec mediaCodec, a aVar) {
            mediaCodec.setOnFrameRenderedListener(this, new Handler());
        }

        @Override // android.media.MediaCodec.OnFrameRenderedListener
        public void onFrameRendered(@NonNull MediaCodec mediaCodec, long j2, long j3) {
            m mVar = m.this;
            if (this != mVar.W0) {
                return;
            }
            mVar.z0(j2);
        }
    }

    public m(Context context, f.i.a.a.c1.c cVar, long j2, @Nullable f.i.a.a.z0.g<f.i.a.a.z0.j> gVar, boolean z, boolean z2, @Nullable Handler handler, @Nullable s sVar, int i2) {
        super(2, cVar, gVar, z, z2, 30.0f);
        this.s0 = j2;
        this.t0 = i2;
        Context applicationContext = context.getApplicationContext();
        this.p0 = applicationContext;
        this.q0 = new o(applicationContext);
        this.r0 = new s.a(handler, sVar);
        this.u0 = "NVIDIA".equals(h0.f5737c);
        this.v0 = new long[10];
        this.w0 = new long[10];
        this.Y0 = -9223372036854775807L;
        this.X0 = -9223372036854775807L;
        this.E0 = -9223372036854775807L;
        this.M0 = -1;
        this.N0 = -1;
        this.P0 = -1.0f;
        this.L0 = -1.0f;
        this.B0 = 1;
        p0();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int r0(f.i.a.a.c1.a aVar, String str, int i2, int i3) {
        char c2;
        int i4;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        int i5 = 4;
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 != 0 && c2 != 1) {
            if (c2 == 2) {
                if ("BRAVIA 4K 2015".equals(h0.f5738d) || ("Amazon".equals(h0.f5737c) && ("KFSOWI".equals(h0.f5738d) || ("AFTS".equals(h0.f5738d) && aVar.f4599f)))) {
                    return -1;
                }
                i4 = h0.i(i3, 16) * h0.i(i2, 16) * 16 * 16;
                i5 = 2;
                return (i4 * 3) / (i5 * 2);
            } else if (c2 != 3) {
                if (c2 == 4 || c2 == 5) {
                    i4 = i2 * i3;
                    return (i4 * 3) / (i5 * 2);
                }
                return -1;
            }
        }
        i4 = i2 * i3;
        i5 = 2;
        return (i4 * 3) / (i5 * 2);
    }

    public static int s0(f.i.a.a.c1.a aVar, b0 b0Var) {
        if (b0Var.f4089j != -1) {
            int size = b0Var.f4090k.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += b0Var.f4090k.get(i3).length;
            }
            return b0Var.f4089j + i2;
        }
        return r0(aVar, b0Var.f4088i, b0Var.n, b0Var.o);
    }

    public static boolean t0(long j2) {
        return j2 < -30000;
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p
    public void A() {
        try {
            super.A();
        } finally {
            Surface surface = this.A0;
            if (surface != null) {
                if (this.z0 == surface) {
                    this.z0 = null;
                }
                this.A0.release();
                this.A0 = null;
            }
        }
    }

    public final void A0(MediaCodec mediaCodec, int i2, int i3) {
        this.M0 = i2;
        this.N0 = i3;
        this.P0 = this.L0;
        if (h0.a >= 21) {
            int i4 = this.K0;
            if (i4 == 90 || i4 == 270) {
                int i5 = this.M0;
                this.M0 = this.N0;
                this.N0 = i5;
                this.P0 = 1.0f / this.P0;
            }
        } else {
            this.O0 = this.K0;
        }
        mediaCodec.setVideoScalingMode(this.B0);
    }

    @Override // f.i.a.a.p
    public void B() {
        this.G0 = 0;
        this.F0 = SystemClock.elapsedRealtime();
        this.J0 = SystemClock.elapsedRealtime() * 1000;
    }

    public void B0(MediaCodec mediaCodec, int i2) {
        w0();
        c.a.a.b.g.h.g("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, true);
        c.a.a.b.g.h.N();
        this.J0 = SystemClock.elapsedRealtime() * 1000;
        this.n0.f6025e++;
        this.H0 = 0;
        v0();
    }

    @Override // f.i.a.a.p
    public void C() {
        this.E0 = -9223372036854775807L;
        u0();
    }

    @TargetApi(21)
    public void C0(MediaCodec mediaCodec, int i2, long j2) {
        w0();
        c.a.a.b.g.h.g("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i2, j2);
        c.a.a.b.g.h.N();
        this.J0 = SystemClock.elapsedRealtime() * 1000;
        this.n0.f6025e++;
        this.H0 = 0;
        v0();
    }

    @Override // f.i.a.a.p
    public void D(b0[] b0VarArr, long j2) throws w {
        if (this.Y0 == -9223372036854775807L) {
            this.Y0 = j2;
            return;
        }
        int i2 = this.Z0;
        long[] jArr = this.v0;
        if (i2 == jArr.length) {
            long j3 = jArr[i2 - 1];
        } else {
            this.Z0 = i2 + 1;
        }
        long[] jArr2 = this.v0;
        int i3 = this.Z0;
        jArr2[i3 - 1] = j2;
        this.w0[i3 - 1] = this.X0;
    }

    public final void D0() {
        this.E0 = this.s0 > 0 ? SystemClock.elapsedRealtime() + this.s0 : -9223372036854775807L;
    }

    public final boolean E0(f.i.a.a.c1.a aVar) {
        return h0.a >= 23 && !this.U0 && !q0(aVar.a) && (!aVar.f4599f || k.b(this.p0));
    }

    public void F0(int i2) {
        f.i.a.a.y0.d dVar = this.n0;
        dVar.f6027g += i2;
        this.G0 += i2;
        int i3 = this.H0 + i2;
        this.H0 = i3;
        dVar.f6028h = Math.max(i3, dVar.f6028h);
        int i4 = this.t0;
        if (i4 <= 0 || this.G0 < i4) {
            return;
        }
        u0();
    }

    @Override // f.i.a.a.c1.b
    public int I(MediaCodec mediaCodec, f.i.a.a.c1.a aVar, b0 b0Var, b0 b0Var2) {
        if (aVar.d(b0Var, b0Var2, true)) {
            int i2 = b0Var2.n;
            b bVar = this.x0;
            if (i2 > bVar.a || b0Var2.o > bVar.b || s0(aVar, b0Var2) > this.x0.f5815c) {
                return 0;
            }
            return b0Var.w(b0Var2) ? 3 : 2;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x0131 A[EDGE_INSN: B:122:0x0131->B:73:0x0131 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x011c A[SYNTHETIC] */
    @Override // f.i.a.a.c1.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void J(f.i.a.a.c1.a r25, android.media.MediaCodec r26, f.i.a.a.b0 r27, android.media.MediaCrypto r28, float r29) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.n1.m.J(f.i.a.a.c1.a, android.media.MediaCodec, f.i.a.a.b0, android.media.MediaCrypto, float):void");
    }

    @Override // f.i.a.a.c1.b
    @CallSuper
    public boolean N() {
        try {
            return super.N();
        } finally {
            this.I0 = 0;
        }
    }

    @Override // f.i.a.a.c1.b
    public boolean P() {
        return this.U0;
    }

    @Override // f.i.a.a.c1.b
    public float Q(float f2, b0 b0Var, b0[] b0VarArr) {
        float f3 = -1.0f;
        for (b0 b0Var2 : b0VarArr) {
            float f4 = b0Var2.p;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            return -1.0f;
        }
        return f3 * f2;
    }

    @Override // f.i.a.a.c1.b
    public List<f.i.a.a.c1.a> R(f.i.a.a.c1.c cVar, b0 b0Var, boolean z) throws d.c {
        return Collections.unmodifiableList(cVar.a(b0Var.f4088i, z, this.U0));
    }

    @Override // f.i.a.a.c1.b
    public void V(final String str, final long j2, final long j3) {
        final s.a aVar = this.r0;
        if (aVar.b != null) {
            aVar.a.post(new Runnable() { // from class: f.i.a.a.n1.d
                @Override // java.lang.Runnable
                public final void run() {
                    s.a.this.a(str, j2, j3);
                }
            });
        }
        this.y0 = q0(str);
    }

    @Override // f.i.a.a.c1.b
    public void W(final b0 b0Var) throws w {
        super.W(b0Var);
        final s.a aVar = this.r0;
        if (aVar.b != null) {
            aVar.a.post(new Runnable() { // from class: f.i.a.a.n1.a
                @Override // java.lang.Runnable
                public final void run() {
                    s.a.this.e(b0Var);
                }
            });
        }
        this.L0 = b0Var.r;
        this.K0 = b0Var.q;
    }

    @Override // f.i.a.a.c1.b
    public void X(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        A0(mediaCodec, integer, integer2);
    }

    @Override // f.i.a.a.c1.b
    @CallSuper
    public void Y(long j2) {
        this.I0--;
        while (true) {
            int i2 = this.Z0;
            if (i2 == 0 || j2 < this.w0[0]) {
                return;
            }
            long[] jArr = this.v0;
            this.Y0 = jArr[0];
            int i3 = i2 - 1;
            this.Z0 = i3;
            System.arraycopy(jArr, 1, jArr, 0, i3);
            long[] jArr2 = this.w0;
            System.arraycopy(jArr2, 1, jArr2, 0, this.Z0);
        }
    }

    @Override // f.i.a.a.c1.b
    @CallSuper
    public void Z(f.i.a.a.y0.e eVar) {
        this.I0++;
        this.X0 = Math.max(eVar.f6031d, this.X0);
        if (h0.a >= 23 || !this.U0) {
            return;
        }
        z0(eVar.f6031d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0080, code lost:
        if ((t0(r14) && r9 - r22.J0 > 100000) != false) goto L110;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x018d  */
    @Override // f.i.a.a.c1.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean b0(long r23, long r25, android.media.MediaCodec r27, java.nio.ByteBuffer r28, int r29, int r30, long r31, boolean r33, boolean r34, f.i.a.a.b0 r35) throws f.i.a.a.w {
        /*
            Method dump skipped, instructions count: 509
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.n1.m.b0(long, long, android.media.MediaCodec, java.nio.ByteBuffer, int, int, long, boolean, boolean, f.i.a.a.b0):boolean");
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p0
    public boolean d() {
        Surface surface;
        if (super.d() && (this.C0 || (((surface = this.A0) != null && this.z0 == surface) || this.C == null || this.U0))) {
            this.E0 = -9223372036854775807L;
            return true;
        } else if (this.E0 == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.E0) {
                return true;
            }
            this.E0 = -9223372036854775807L;
            return false;
        }
    }

    @Override // f.i.a.a.c1.b
    @CallSuper
    public void d0() {
        try {
            super.d0();
        } finally {
            this.I0 = 0;
        }
    }

    @Override // f.i.a.a.p, f.i.a.a.n0.b
    public void j(int i2, @Nullable Object obj) throws w {
        if (i2 != 1) {
            if (i2 != 4) {
                if (i2 == 6) {
                    this.a1 = (n) obj;
                    return;
                }
                return;
            }
            int intValue = ((Integer) obj).intValue();
            this.B0 = intValue;
            MediaCodec mediaCodec = this.C;
            if (mediaCodec != null) {
                mediaCodec.setVideoScalingMode(intValue);
                return;
            }
            return;
        }
        Surface surface = (Surface) obj;
        if (surface == null) {
            Surface surface2 = this.A0;
            if (surface2 != null) {
                surface = surface2;
            } else {
                f.i.a.a.c1.a aVar = this.H;
                if (aVar != null && E0(aVar)) {
                    surface = k.c(this.p0, aVar.f4599f);
                    this.A0 = surface;
                }
            }
        }
        if (this.z0 != surface) {
            this.z0 = surface;
            int i3 = this.f5835d;
            MediaCodec mediaCodec2 = this.C;
            if (mediaCodec2 != null) {
                if (h0.a >= 23 && surface != null && !this.y0) {
                    mediaCodec2.setOutputSurface(surface);
                } else {
                    d0();
                    T();
                }
            }
            if (surface != null && surface != this.A0) {
                x0();
                o0();
                if (i3 == 2) {
                    D0();
                    return;
                }
                return;
            }
            p0();
            o0();
        } else if (surface == null || surface == this.A0) {
        } else {
            x0();
            if (this.C0) {
                s.a aVar2 = this.r0;
                Surface surface3 = this.z0;
                if (aVar2.b != null) {
                    aVar2.a.post(new f.i.a.a.n1.b(aVar2, surface3));
                }
            }
        }
    }

    @Override // f.i.a.a.c1.b
    public boolean j0(f.i.a.a.c1.a aVar) {
        return this.z0 != null || E0(aVar);
    }

    @Override // f.i.a.a.c1.b
    public int k0(f.i.a.a.c1.c cVar, f.i.a.a.z0.g<f.i.a.a.z0.j> gVar, b0 b0Var) throws d.c {
        boolean z;
        int i2 = 0;
        if (f.i.a.a.m1.r.j(b0Var.f4088i)) {
            f.i.a.a.z0.e eVar = b0Var.f4091l;
            if (eVar != null) {
                z = false;
                for (int i3 = 0; i3 < eVar.f6072d; i3++) {
                    z |= eVar.a[i3].f6076f;
                }
            } else {
                z = false;
            }
            List<f.i.a.a.c1.a> R = R(cVar, b0Var, z);
            if (R.isEmpty()) {
                return (!z || cVar.a(b0Var.f4088i, false, false).isEmpty()) ? 1 : 2;
            } else if (f.i.a.a.p.G(gVar, eVar)) {
                f.i.a.a.c1.a aVar = R.get(0);
                boolean b2 = aVar.b(b0Var);
                int i4 = aVar.c(b0Var) ? 16 : 8;
                if (b2) {
                    List<f.i.a.a.c1.a> a2 = cVar.a(b0Var.f4088i, z, true);
                    if (!a2.isEmpty()) {
                        f.i.a.a.c1.a aVar2 = a2.get(0);
                        if (aVar2.b(b0Var) && aVar2.c(b0Var)) {
                            i2 = 32;
                        }
                    }
                }
                return (b2 ? 4 : 3) | i4 | i2;
            } else {
                return 2;
            }
        }
        return 0;
    }

    public final void o0() {
        MediaCodec mediaCodec;
        this.C0 = false;
        if (h0.a < 23 || !this.U0 || (mediaCodec = this.C) == null) {
            return;
        }
        this.W0 = new c(mediaCodec, null);
    }

    public final void p0() {
        this.Q0 = -1;
        this.R0 = -1;
        this.T0 = -1.0f;
        this.S0 = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:414:0x0639 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean q0(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 2364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.n1.m.q0(java.lang.String):boolean");
    }

    public final void u0() {
        if (this.G0 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            final long j2 = elapsedRealtime - this.F0;
            final s.a aVar = this.r0;
            final int i2 = this.G0;
            if (aVar.b != null) {
                aVar.a.post(new Runnable() { // from class: f.i.a.a.n1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        s.a.this.c(i2, j2);
                    }
                });
            }
            this.G0 = 0;
            this.F0 = elapsedRealtime;
        }
    }

    public void v0() {
        if (this.C0) {
            return;
        }
        this.C0 = true;
        s.a aVar = this.r0;
        Surface surface = this.z0;
        if (aVar.b != null) {
            aVar.a.post(new f.i.a.a.n1.b(aVar, surface));
        }
    }

    public final void w0() {
        if (this.M0 == -1 && this.N0 == -1) {
            return;
        }
        if (this.Q0 == this.M0 && this.R0 == this.N0 && this.S0 == this.O0 && this.T0 == this.P0) {
            return;
        }
        this.r0.h(this.M0, this.N0, this.O0, this.P0);
        this.Q0 = this.M0;
        this.R0 = this.N0;
        this.S0 = this.O0;
        this.T0 = this.P0;
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p
    public void x() {
        this.X0 = -9223372036854775807L;
        this.Y0 = -9223372036854775807L;
        this.Z0 = 0;
        p0();
        o0();
        o oVar = this.q0;
        if (oVar.a != null) {
            o.a aVar = oVar.f5816c;
            if (aVar != null) {
                aVar.a.unregisterDisplayListener(aVar);
            }
            oVar.b.b.sendEmptyMessage(2);
        }
        this.W0 = null;
        try {
            super.x();
            final s.a aVar2 = this.r0;
            final f.i.a.a.y0.d dVar = this.n0;
            if (aVar2 != null) {
                synchronized (dVar) {
                }
                if (aVar2.b != null) {
                    aVar2.a.post(new Runnable() { // from class: f.i.a.a.n1.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            s.a.this.b(dVar);
                        }
                    });
                    return;
                }
                return;
            }
            throw null;
        } catch (Throwable th) {
            final s.a aVar3 = this.r0;
            final f.i.a.a.y0.d dVar2 = this.n0;
            if (aVar3 != null) {
                synchronized (dVar2) {
                    if (aVar3.b != null) {
                        aVar3.a.post(new Runnable() { // from class: f.i.a.a.n1.f
                            @Override // java.lang.Runnable
                            public final void run() {
                                s.a.this.b(dVar2);
                            }
                        });
                    }
                    throw th;
                }
            }
            throw null;
        }
    }

    public final void x0() {
        if (this.Q0 == -1 && this.R0 == -1) {
            return;
        }
        this.r0.h(this.Q0, this.R0, this.S0, this.T0);
    }

    @Override // f.i.a.a.p
    public void y(boolean z) throws w {
        this.n0 = new f.i.a.a.y0.d();
        int i2 = this.V0;
        int i3 = this.b.a;
        this.V0 = i3;
        this.U0 = i3 != 0;
        if (this.V0 != i2) {
            d0();
        }
        final s.a aVar = this.r0;
        final f.i.a.a.y0.d dVar = this.n0;
        if (aVar.b != null) {
            aVar.a.post(new Runnable() { // from class: f.i.a.a.n1.e
                @Override // java.lang.Runnable
                public final void run() {
                    s.a.this.d(dVar);
                }
            });
        }
        o oVar = this.q0;
        oVar.f5822i = false;
        if (oVar.a != null) {
            oVar.b.b.sendEmptyMessage(1);
            o.a aVar2 = oVar.f5816c;
            if (aVar2 != null) {
                aVar2.a.registerDisplayListener(aVar2, null);
            }
            oVar.b();
        }
    }

    public final void y0(long j2, long j3, b0 b0Var) {
        n nVar = this.a1;
        if (nVar != null) {
            nVar.a(j2, j3, b0Var);
        }
    }

    @Override // f.i.a.a.p
    public void z(long j2, boolean z) throws w {
        this.i0 = false;
        this.j0 = false;
        M();
        this.r.b();
        o0();
        this.D0 = -9223372036854775807L;
        this.H0 = 0;
        this.X0 = -9223372036854775807L;
        int i2 = this.Z0;
        if (i2 != 0) {
            this.Y0 = this.v0[i2 - 1];
            this.Z0 = 0;
        }
        if (z) {
            D0();
        } else {
            this.E0 = -9223372036854775807L;
        }
    }

    public void z0(long j2) {
        b0 n0 = n0(j2);
        if (n0 != null) {
            A0(this.C, n0.n, n0.o);
        }
        w0();
        v0();
        Y(j2);
    }
}
