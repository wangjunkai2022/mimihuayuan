package f.i.a.a.w0;

import androidx.annotation.Nullable;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* compiled from: SonicAudioProcessor.java */
/* loaded from: classes.dex */
public final class d0 implements m {

    /* renamed from: g  reason: collision with root package name */
    public int f5926g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f5927h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public c0 f5928i;

    /* renamed from: j  reason: collision with root package name */
    public ByteBuffer f5929j;

    /* renamed from: k  reason: collision with root package name */
    public ShortBuffer f5930k;

    /* renamed from: l  reason: collision with root package name */
    public ByteBuffer f5931l;

    /* renamed from: m  reason: collision with root package name */
    public long f5932m;
    public long n;
    public boolean o;

    /* renamed from: d  reason: collision with root package name */
    public float f5923d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    public float f5924e = 1.0f;
    public int b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f5922c = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f5925f = -1;

    public d0() {
        ByteBuffer byteBuffer = m.a;
        this.f5929j = byteBuffer;
        this.f5930k = byteBuffer.asShortBuffer();
        this.f5931l = m.a;
        this.f5926g = -1;
    }

    @Override // f.i.a.a.w0.m
    public boolean a() {
        c0 c0Var;
        return this.o && ((c0Var = this.f5928i) == null || (c0Var.f5921m * c0Var.b) * 2 == 0);
    }

    @Override // f.i.a.a.w0.m
    public ByteBuffer b() {
        ByteBuffer byteBuffer = this.f5931l;
        this.f5931l = m.a;
        return byteBuffer;
    }

    @Override // f.i.a.a.w0.m
    public void c() {
        int i2;
        c0 c0Var = this.f5928i;
        if (c0Var != null) {
            int i3 = c0Var.f5919k;
            float f2 = c0Var.f5911c;
            float f3 = c0Var.f5912d;
            float f4 = c0Var.f5913e * f3;
            int i4 = c0Var.f5921m + ((int) ((((i3 / (f2 / f3)) + c0Var.o) / f4) + 0.5f));
            c0Var.f5918j = c0Var.c(c0Var.f5918j, i3, (c0Var.f5916h * 2) + i3);
            int i5 = 0;
            while (true) {
                i2 = c0Var.f5916h * 2;
                int i6 = c0Var.b;
                if (i5 >= i2 * i6) {
                    break;
                }
                c0Var.f5918j[(i6 * i3) + i5] = 0;
                i5++;
            }
            c0Var.f5919k = i2 + c0Var.f5919k;
            c0Var.f();
            if (c0Var.f5921m > i4) {
                c0Var.f5921m = i4;
            }
            c0Var.f5919k = 0;
            c0Var.r = 0;
            c0Var.o = 0;
        }
        this.o = true;
    }

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        c0 c0Var = this.f5928i;
        c.a.a.b.g.h.t(c0Var);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f5932m += remaining;
            int remaining2 = asShortBuffer.remaining();
            int i2 = c0Var.b;
            int i3 = remaining2 / i2;
            short[] c2 = c0Var.c(c0Var.f5918j, c0Var.f5919k, i3);
            c0Var.f5918j = c2;
            asShortBuffer.get(c2, c0Var.f5919k * c0Var.b, ((i2 * i3) * 2) / 2);
            c0Var.f5919k += i3;
            c0Var.f();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int i4 = c0Var.f5921m * c0Var.b * 2;
        if (i4 > 0) {
            if (this.f5929j.capacity() < i4) {
                ByteBuffer order = ByteBuffer.allocateDirect(i4).order(ByteOrder.nativeOrder());
                this.f5929j = order;
                this.f5930k = order.asShortBuffer();
            } else {
                this.f5929j.clear();
                this.f5930k.clear();
            }
            ShortBuffer shortBuffer = this.f5930k;
            int min = Math.min(shortBuffer.remaining() / c0Var.b, c0Var.f5921m);
            shortBuffer.put(c0Var.f5920l, 0, c0Var.b * min);
            int i5 = c0Var.f5921m - min;
            c0Var.f5921m = i5;
            short[] sArr = c0Var.f5920l;
            int i6 = c0Var.b;
            System.arraycopy(sArr, min * i6, sArr, 0, i5 * i6);
            this.n += i4;
            this.f5929j.limit(i4);
            this.f5931l = this.f5929j;
        }
    }

    @Override // f.i.a.a.w0.m
    public int e() {
        return this.b;
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        if (i4 == 2) {
            int i5 = this.f5926g;
            if (i5 == -1) {
                i5 = i2;
            }
            if (this.f5922c == i2 && this.b == i3 && this.f5925f == i5) {
                return false;
            }
            this.f5922c = i2;
            this.b = i3;
            this.f5925f = i5;
            this.f5927h = true;
            return true;
        }
        throw new m.a(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.m
    public void flush() {
        if (isActive()) {
            if (this.f5927h) {
                this.f5928i = new c0(this.f5922c, this.b, this.f5923d, this.f5924e, this.f5925f);
            } else {
                c0 c0Var = this.f5928i;
                if (c0Var != null) {
                    c0Var.f5919k = 0;
                    c0Var.f5921m = 0;
                    c0Var.o = 0;
                    c0Var.p = 0;
                    c0Var.q = 0;
                    c0Var.r = 0;
                    c0Var.s = 0;
                    c0Var.t = 0;
                    c0Var.u = 0;
                    c0Var.v = 0;
                }
            }
        }
        this.f5931l = m.a;
        this.f5932m = 0L;
        this.n = 0L;
        this.o = false;
    }

    @Override // f.i.a.a.w0.m
    public int g() {
        return this.f5925f;
    }

    @Override // f.i.a.a.w0.m
    public int h() {
        return 2;
    }

    @Override // f.i.a.a.w0.m
    public boolean isActive() {
        return this.f5922c != -1 && (Math.abs(this.f5923d - 1.0f) >= 0.01f || Math.abs(this.f5924e - 1.0f) >= 0.01f || this.f5925f != this.f5922c);
    }

    @Override // f.i.a.a.w0.m
    public void reset() {
        this.f5923d = 1.0f;
        this.f5924e = 1.0f;
        this.b = -1;
        this.f5922c = -1;
        this.f5925f = -1;
        ByteBuffer byteBuffer = m.a;
        this.f5929j = byteBuffer;
        this.f5930k = byteBuffer.asShortBuffer();
        this.f5931l = m.a;
        this.f5926g = -1;
        this.f5927h = false;
        this.f5928i = null;
        this.f5932m = 0L;
        this.n = 0L;
        this.o = false;
    }
}
