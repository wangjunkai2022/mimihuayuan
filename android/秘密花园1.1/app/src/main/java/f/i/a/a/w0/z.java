package f.i.a.a.w0;

import android.app.UiModeManager;
import android.content.Context;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import f.i.a.a.c1.d;
import f.i.a.a.j0;
import f.i.a.a.m1.h0;
import f.i.a.a.w0.o;
import f.i.a.a.w0.p;
import f.i.a.a.w0.v;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;

/* compiled from: MediaCodecAudioRenderer.java */
/* loaded from: classes.dex */
public class z extends f.i.a.a.c1.b implements f.i.a.a.m1.q {
    public int A0;
    public int B0;
    public long C0;
    public boolean D0;
    public boolean E0;
    public long F0;
    public int G0;
    public final Context p0;
    public final o.a q0;
    public final p r0;
    public final long[] s0;
    public int t0;
    public boolean u0;
    public boolean v0;
    public boolean w0;
    public MediaFormat x0;
    public int y0;
    public int z0;

    /* compiled from: MediaCodecAudioRenderer.java */
    /* loaded from: classes.dex */
    public final class b implements p.c {
        public b(a aVar) {
        }
    }

    public z(Context context, f.i.a.a.c1.c cVar, @Nullable f.i.a.a.z0.g<f.i.a.a.z0.j> gVar, boolean z, boolean z2, @Nullable Handler handler, @Nullable o oVar, p pVar) {
        super(1, cVar, gVar, z, z2, 44100.0f);
        this.p0 = context.getApplicationContext();
        this.r0 = pVar;
        this.F0 = -9223372036854775807L;
        this.s0 = new long[10];
        this.q0 = new o.a(handler, oVar);
        ((v) pVar).f5908k = new b(null);
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p
    public void A() {
        try {
            super.A();
        } finally {
            ((v) this.r0).m();
        }
    }

    @Override // f.i.a.a.p
    public void B() {
        ((v) this.r0).j();
    }

    @Override // f.i.a.a.p
    public void C() {
        q0();
        v vVar = (v) this.r0;
        boolean z = false;
        vVar.N = false;
        if (vVar.i()) {
            r rVar = vVar.f5906i;
            rVar.f5888j = 0L;
            rVar.u = 0;
            rVar.t = 0;
            rVar.f5889k = 0L;
            if (rVar.v == -9223372036854775807L) {
                q qVar = rVar.f5884f;
                c.a.a.b.g.h.t(qVar);
                qVar.a();
                z = true;
            }
            if (z) {
                vVar.o.pause();
            }
        }
    }

    @Override // f.i.a.a.p
    public void D(f.i.a.a.b0[] b0VarArr, long j2) throws f.i.a.a.w {
        if (this.F0 != -9223372036854775807L) {
            int i2 = this.G0;
            long[] jArr = this.s0;
            if (i2 == jArr.length) {
                long j3 = jArr[i2 - 1];
            } else {
                this.G0 = i2 + 1;
            }
            this.s0[this.G0 - 1] = this.F0;
        }
    }

    @Override // f.i.a.a.c1.b
    public int I(MediaCodec mediaCodec, f.i.a.a.c1.a aVar, f.i.a.a.b0 b0Var, f.i.a.a.b0 b0Var2) {
        if (o0(aVar, b0Var2) <= this.t0 && b0Var.y == 0 && b0Var.z == 0 && b0Var2.y == 0 && b0Var2.z == 0) {
            if (aVar.d(b0Var, b0Var2, true)) {
                return 3;
            }
            if (h0.b(b0Var.f4013i, b0Var2.f4013i) && b0Var.v == b0Var2.v && b0Var.w == b0Var2.w && b0Var.w(b0Var2)) {
                return 1;
            }
        }
        return 0;
    }

    @Override // f.i.a.a.c1.b
    public void J(f.i.a.a.c1.a aVar, MediaCodec mediaCodec, f.i.a.a.b0 b0Var, MediaCrypto mediaCrypto, float f2) {
        f.i.a.a.b0[] b0VarArr = this.f5762f;
        int o0 = o0(aVar, b0Var);
        if (b0VarArr.length != 1) {
            for (f.i.a.a.b0 b0Var2 : b0VarArr) {
                if (aVar.d(b0Var, b0Var2, false)) {
                    o0 = Math.max(o0, o0(aVar, b0Var2));
                }
            }
        }
        this.t0 = o0;
        this.v0 = h0.a < 24 && "OMX.SEC.aac.dec".equals(aVar.a) && "samsung".equals(h0.f5662c) && (h0.b.startsWith("zeroflte") || h0.b.startsWith("herolte") || h0.b.startsWith("heroqlte"));
        this.w0 = h0.a < 21 && "OMX.SEC.mp3.dec".equals(aVar.a) && "samsung".equals(h0.f5662c) && (h0.b.startsWith("baffin") || h0.b.startsWith("grand") || h0.b.startsWith("fortuna") || h0.b.startsWith("gprimelte") || h0.b.startsWith("j2y18lte") || h0.b.startsWith("ms01"));
        boolean z = aVar.f4525g;
        this.u0 = z;
        String str = z ? "audio/raw" : aVar.f4521c;
        int i2 = this.t0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", b0Var.v);
        mediaFormat.setInteger("sample-rate", b0Var.w);
        c.a.a.b.g.h.g1(mediaFormat, b0Var.f4015k);
        c.a.a.b.g.h.Q0(mediaFormat, "max-input-size", i2);
        if (h0.a >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                if (!(h0.a == 23 && ("ZTE B2017G".equals(h0.f5663d) || "AXON 7 mini".equals(h0.f5663d)))) {
                    mediaFormat.setFloat("operating-rate", f2);
                }
            }
        }
        if (h0.a <= 28 && "audio/ac4".equals(b0Var.f4013i)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
        if (this.u0) {
            this.x0 = mediaFormat;
            mediaFormat.setString("mime", b0Var.f4013i);
            return;
        }
        this.x0 = null;
    }

    @Override // f.i.a.a.c1.b
    public float Q(float f2, f.i.a.a.b0 b0Var, f.i.a.a.b0[] b0VarArr) {
        int i2 = -1;
        for (f.i.a.a.b0 b0Var2 : b0VarArr) {
            int i3 = b0Var2.w;
            if (i3 != -1) {
                i2 = Math.max(i2, i3);
            }
        }
        if (i2 == -1) {
            return -1.0f;
        }
        return f2 * i2;
    }

    @Override // f.i.a.a.c1.b
    public List<f.i.a.a.c1.a> R(f.i.a.a.c1.c cVar, f.i.a.a.b0 b0Var, boolean z) throws d.c {
        f.i.a.a.c1.a b2;
        if ((p0(b0Var.v, b0Var.f4013i) != 0) && (b2 = cVar.b()) != null) {
            return Collections.singletonList(b2);
        }
        List<f.i.a.a.c1.a> a2 = cVar.a(b0Var.f4013i, z, false);
        if ("audio/eac3-joc".equals(b0Var.f4013i)) {
            a2.addAll(cVar.a("audio/eac3", z, false));
        }
        return Collections.unmodifiableList(a2);
    }

    @Override // f.i.a.a.c1.b
    public void V(final String str, final long j2, final long j3) {
        final o.a aVar = this.q0;
        if (aVar.b != null) {
            aVar.a.post(new Runnable() { // from class: f.i.a.a.w0.b
                @Override // java.lang.Runnable
                public final void run() {
                    o.a.this.d(str, j2, j3);
                }
            });
        }
    }

    @Override // f.i.a.a.c1.b
    public void W(final f.i.a.a.b0 b0Var) throws f.i.a.a.w {
        super.W(b0Var);
        final o.a aVar = this.q0;
        if (aVar.b != null) {
            aVar.a.post(new Runnable() { // from class: f.i.a.a.w0.a
                @Override // java.lang.Runnable
                public final void run() {
                    o.a.this.g(b0Var);
                }
            });
        }
        this.y0 = "audio/raw".equals(b0Var.f4013i) ? b0Var.x : 2;
        this.z0 = b0Var.v;
        this.A0 = b0Var.y;
        this.B0 = b0Var.z;
    }

    @Override // f.i.a.a.c1.b
    public void X(MediaCodec mediaCodec, MediaFormat mediaFormat) throws f.i.a.a.w {
        int i2;
        int[] iArr;
        int i3;
        MediaFormat mediaFormat2 = this.x0;
        if (mediaFormat2 != null) {
            i2 = p0(mediaFormat2.getInteger("channel-count"), mediaFormat2.getString("mime"));
            mediaFormat = mediaFormat2;
        } else {
            i2 = this.y0;
        }
        int integer = mediaFormat.getInteger("channel-count");
        int integer2 = mediaFormat.getInteger("sample-rate");
        if (this.v0 && integer == 6 && (i3 = this.z0) < 6) {
            iArr = new int[i3];
            for (int i4 = 0; i4 < this.z0; i4++) {
                iArr[i4] = i4;
            }
        } else {
            iArr = null;
        }
        try {
            ((v) this.r0).b(i2, integer, integer2, 0, iArr, this.A0, this.B0);
        } catch (p.a e2) {
            throw f.i.a.a.w.a(e2, this.f5759c);
        }
    }

    @Override // f.i.a.a.c1.b
    @CallSuper
    public void Y(long j2) {
        while (this.G0 != 0 && j2 >= this.s0[0]) {
            v vVar = (v) this.r0;
            if (vVar.B == 1) {
                vVar.B = 2;
            }
            int i2 = this.G0 - 1;
            this.G0 = i2;
            long[] jArr = this.s0;
            System.arraycopy(jArr, 1, jArr, 0, i2);
        }
    }

    @Override // f.i.a.a.c1.b
    public void Z(f.i.a.a.y0.e eVar) {
        if (this.D0 && !eVar.g()) {
            if (Math.abs(eVar.f5956d - this.C0) > 500000) {
                this.C0 = eVar.f5956d;
            }
            this.D0 = false;
        }
        this.F0 = Math.max(eVar.f5956d, this.F0);
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p0
    public boolean a() {
        if (this.j0) {
            v vVar = (v) this.r0;
            if (!vVar.i() || (vVar.L && !vVar.h())) {
                return true;
            }
        }
        return false;
    }

    @Override // f.i.a.a.c1.b
    public boolean b0(long j2, long j3, MediaCodec mediaCodec, ByteBuffer byteBuffer, int i2, int i3, long j4, boolean z, boolean z2, f.i.a.a.b0 b0Var) throws f.i.a.a.w {
        if (this.w0 && j4 == 0 && (i3 & 4) != 0) {
            long j5 = this.F0;
            if (j5 != -9223372036854775807L) {
                j4 = j5;
            }
        }
        if (this.u0 && (i3 & 2) != 0) {
            mediaCodec.releaseOutputBuffer(i2, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i2, false);
            this.n0.f5951f++;
            v vVar = (v) this.r0;
            if (vVar.B == 1) {
                vVar.B = 2;
            }
            return true;
        } else {
            try {
                if (((v) this.r0).g(byteBuffer, j4)) {
                    mediaCodec.releaseOutputBuffer(i2, false);
                    this.n0.f5950e++;
                    return true;
                }
                return false;
            } catch (p.b | p.d e2) {
                throw f.i.a.a.w.a(e2, this.f5759c);
            }
        }
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p0
    public boolean d() {
        return ((v) this.r0).h() || super.d();
    }

    @Override // f.i.a.a.m1.q
    public j0 e() {
        return ((v) this.r0).r;
    }

    @Override // f.i.a.a.c1.b
    public void e0() throws f.i.a.a.w {
        try {
            v vVar = (v) this.r0;
            if (!vVar.L && vVar.i() && vVar.c()) {
                vVar.k();
                vVar.L = true;
            }
        } catch (p.d e2) {
            throw f.i.a.a.w.a(e2, this.f5759c);
        }
    }

    @Override // f.i.a.a.p, f.i.a.a.n0.b
    public void j(int i2, @Nullable Object obj) throws f.i.a.a.w {
        if (i2 == 2) {
            p pVar = this.r0;
            float floatValue = ((Float) obj).floatValue();
            v vVar = (v) pVar;
            if (vVar.D != floatValue) {
                vVar.D = floatValue;
                vVar.n();
            }
        } else if (i2 == 3) {
            i iVar = (i) obj;
            v vVar2 = (v) this.r0;
            if (vVar2.p.equals(iVar)) {
                return;
            }
            vVar2.p = iVar;
            if (vVar2.Q) {
                return;
            }
            vVar2.d();
            vVar2.O = 0;
        } else if (i2 != 5) {
        } else {
            s sVar = (s) obj;
            v vVar3 = (v) this.r0;
            if (vVar3.P.equals(sVar)) {
                return;
            }
            int i3 = sVar.a;
            float f2 = sVar.b;
            AudioTrack audioTrack = vVar3.o;
            if (audioTrack != null) {
                if (vVar3.P.a != i3) {
                    audioTrack.attachAuxEffect(i3);
                }
                if (i3 != 0) {
                    vVar3.o.setAuxEffectSendLevel(f2);
                }
            }
            vVar3.P = sVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
        if (((f.i.a.a.w0.v) r10.r0).o(r13.v, r13.x) != false) goto L24;
     */
    @Override // f.i.a.a.c1.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int k0(f.i.a.a.c1.c r11, f.i.a.a.z0.g<f.i.a.a.z0.j> r12, f.i.a.a.b0 r13) throws f.i.a.a.c1.d.c {
        /*
            r10 = this;
            java.lang.String r0 = r13.f4013i
            boolean r1 = f.i.a.a.m1.r.h(r0)
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = f.i.a.a.m1.h0.a
            r3 = 21
            if (r1 < r3) goto L13
            r1 = 32
            goto L14
        L13:
            r1 = 0
        L14:
            f.i.a.a.z0.e r3 = r13.f4016l
            boolean r12 = f.i.a.a.p.G(r12, r3)
            r3 = 4
            r4 = 8
            r5 = 1
            if (r12 == 0) goto L37
            int r6 = r13.v
            int r6 = r10.p0(r6, r0)
            if (r6 == 0) goto L2a
            r6 = 1
            goto L2b
        L2a:
            r6 = 0
        L2b:
            if (r6 == 0) goto L37
            f.i.a.a.c1.a r6 = r11.b()
            if (r6 == 0) goto L37
            r11 = r1 | 8
            r11 = r11 | r3
            return r11
        L37:
            java.lang.String r6 = "audio/raw"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L4d
            f.i.a.a.w0.p r0 = r10.r0
            int r6 = r13.v
            int r7 = r13.x
            f.i.a.a.w0.v r0 = (f.i.a.a.w0.v) r0
            boolean r0 = r0.o(r6, r7)
            if (r0 == 0) goto L5a
        L4d:
            f.i.a.a.w0.p r0 = r10.r0
            int r6 = r13.v
            f.i.a.a.w0.v r0 = (f.i.a.a.w0.v) r0
            r7 = 2
            boolean r0 = r0.o(r6, r7)
            if (r0 != 0) goto L5b
        L5a:
            return r5
        L5b:
            f.i.a.a.z0.e r0 = r13.f4016l
            if (r0 == 0) goto L6f
            r6 = 0
            r8 = 0
        L61:
            int r9 = r0.f5997d
            if (r6 >= r9) goto L70
            f.i.a.a.z0.e$b[] r9 = r0.a
            r9 = r9[r6]
            boolean r9 = r9.f6001f
            r8 = r8 | r9
            int r6 = r6 + 1
            goto L61
        L6f:
            r8 = 0
        L70:
            java.lang.String r0 = r13.f4013i
            java.util.List r0 = r11.a(r0, r8, r2)
            boolean r6 = r0.isEmpty()
            if (r6 == 0) goto L8c
            if (r8 == 0) goto L8b
            java.lang.String r12 = r13.f4013i
            java.util.List r11 = r11.a(r12, r2, r2)
            boolean r11 = r11.isEmpty()
            if (r11 != 0) goto L8b
            r5 = 2
        L8b:
            return r5
        L8c:
            if (r12 != 0) goto L8f
            return r7
        L8f:
            java.lang.Object r11 = r0.get(r2)
            f.i.a.a.c1.a r11 = (f.i.a.a.c1.a) r11
            boolean r12 = r11.b(r13)
            if (r12 == 0) goto La3
            boolean r11 = r11.c(r13)
            if (r11 == 0) goto La3
            r4 = 16
        La3:
            if (r12 == 0) goto La6
            goto La7
        La6:
            r3 = 3
        La7:
            r11 = r4 | r1
            r11 = r11 | r3
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.z.k0(f.i.a.a.c1.c, f.i.a.a.z0.g, f.i.a.a.b0):int");
    }

    public final int o0(f.i.a.a.c1.a aVar, f.i.a.a.b0 b0Var) {
        int i2;
        if ("OMX.google.raw.decoder".equals(aVar.a) && (i2 = h0.a) < 24) {
            if (i2 != 23) {
                return -1;
            }
            UiModeManager uiModeManager = (UiModeManager) this.p0.getApplicationContext().getSystemService("uimode");
            if (!(uiModeManager != null && uiModeManager.getCurrentModeType() == 4)) {
                return -1;
            }
        }
        return b0Var.f4014j;
    }

    public int p0(int i2, String str) {
        if ("audio/eac3-joc".equals(str)) {
            if (((v) this.r0).o(i2, 18)) {
                return f.i.a.a.m1.r.b("audio/eac3-joc");
            }
            str = "audio/eac3";
        }
        int b2 = f.i.a.a.m1.r.b(str);
        if (((v) this.r0).o(i2, b2)) {
            return b2;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01df A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01bc A[Catch: Exception -> 0x01c7, TRY_LEAVE, TryCatch #0 {Exception -> 0x01c7, blocks: (B:91:0x0193, B:93:0x01bc), top: B:153:0x0193 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void q0() {
        /*
            Method dump skipped, instructions count: 710
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.z.q0():void");
    }

    @Override // f.i.a.a.p, f.i.a.a.p0
    public f.i.a.a.m1.q r() {
        return this;
    }

    @Override // f.i.a.a.m1.q
    public j0 s(j0 j0Var) {
        v vVar = (v) this.r0;
        v.c cVar = vVar.n;
        if (cVar != null && !cVar.f5918j) {
            j0 j0Var2 = j0.f5383e;
            vVar.r = j0Var2;
            return j0Var2;
        }
        j0 j0Var3 = vVar.q;
        if (j0Var3 == null) {
            if (!vVar.f5907j.isEmpty()) {
                j0Var3 = vVar.f5907j.getLast().a;
            } else {
                j0Var3 = vVar.r;
            }
        }
        if (!j0Var.equals(j0Var3)) {
            if (vVar.i()) {
                vVar.q = j0Var;
            } else {
                vVar.r = j0Var;
            }
        }
        return vVar.r;
    }

    @Override // f.i.a.a.m1.q
    public long v() {
        if (this.f5760d == 2) {
            q0();
        }
        return this.C0;
    }

    @Override // f.i.a.a.c1.b, f.i.a.a.p
    public void x() {
        try {
            this.F0 = -9223372036854775807L;
            this.G0 = 0;
            ((v) this.r0).d();
            try {
                super.x();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.x();
                throw th;
            } finally {
            }
        }
    }

    @Override // f.i.a.a.p
    public void y(boolean z) throws f.i.a.a.w {
        final f.i.a.a.y0.d dVar = new f.i.a.a.y0.d();
        this.n0 = dVar;
        final o.a aVar = this.q0;
        if (aVar.b != null) {
            aVar.a.post(new Runnable() { // from class: f.i.a.a.w0.c
                @Override // java.lang.Runnable
                public final void run() {
                    o.a.this.f(dVar);
                }
            });
        }
        int i2 = this.b.a;
        if (i2 != 0) {
            v vVar = (v) this.r0;
            if (vVar != null) {
                c.a.a.b.g.h.v(h0.a >= 21);
                if (vVar.Q && vVar.O == i2) {
                    return;
                }
                vVar.Q = true;
                vVar.O = i2;
                vVar.d();
                return;
            }
            throw null;
        }
        v vVar2 = (v) this.r0;
        if (vVar2.Q) {
            vVar2.Q = false;
            vVar2.O = 0;
            vVar2.d();
        }
    }

    @Override // f.i.a.a.p
    public void z(long j2, boolean z) throws f.i.a.a.w {
        this.i0 = false;
        this.j0 = false;
        M();
        this.r.b();
        ((v) this.r0).d();
        this.C0 = j2;
        this.D0 = true;
        this.E0 = true;
        this.F0 = -9223372036854775807L;
        this.G0 = 0;
    }
}
