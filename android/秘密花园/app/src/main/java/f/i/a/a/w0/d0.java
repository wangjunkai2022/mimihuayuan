package f.i.a.a.w0;

import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* compiled from: SonicAudioProcessor.java */
/* loaded from: classes.dex */
public final class d0 implements m {

    /* renamed from: h  reason: collision with root package name */
    public boolean f5843h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public c0 f5844i;

    /* renamed from: j  reason: collision with root package name */
    public ByteBuffer f5845j;

    /* renamed from: k  reason: collision with root package name */
    public ShortBuffer f5846k;

    /* renamed from: m  reason: collision with root package name */
    public long f5848m;
    public long n;
    public boolean o;

    /* renamed from: d  reason: collision with root package name */
    public float f5839d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    public float f5840e = 1.0f;
    public int b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f5838c = -1;

    /* renamed from: f  reason: collision with root package name */
    public int f5841f = -1;

    /* renamed from: l  reason: collision with root package name */
    public ByteBuffer f5847l = m.a;

    /* renamed from: g  reason: collision with root package name */
    public int f5842g = -1;

    public d0() {
        ByteBuffer byteBuffer = m.a;
        this.f5845j = byteBuffer;
        this.f5846k = byteBuffer.asShortBuffer();
    }

    @Override // f.i.a.a.w0.m
    public boolean a() {
        c0 c0Var;
        return this.o && ((c0Var = this.f5844i) == null || (c0Var.f5837m * c0Var.b) * 2 == 0);
    }

    @Override // f.i.a.a.w0.m
    public ByteBuffer b() {
        ByteBuffer byteBuffer = this.f5847l;
        this.f5847l = m.a;
        return byteBuffer;
    }

    @Override // f.i.a.a.w0.m
    public void c() {
        int i2;
        c0 c0Var = this.f5844i;
        if (c0Var != null) {
            int i3 = c0Var.f5835k;
            float f2 = c0Var.f5827c;
            float f3 = c0Var.f5828d;
            float f4 = c0Var.f5829e * f3;
            int i4 = c0Var.f5837m + ((int) ((((((float) i3) / (f2 / f3)) + ((float) c0Var.o)) / f4) + 0.5f));
            c0Var.f5834j = c0Var.c(c0Var.f5834j, i3, (c0Var.f5832h * 2) + i3);
            int i5 = 0;
            while (true) {
                i2 = c0Var.f5832h * 2;
                int i6 = c0Var.b;
                if (i5 >= i2 * i6) {
                    break;
                }
                c0Var.f5834j[(i6 * i3) + i5] = 0;
                i5++;
            }
            c0Var.f5835k = i2 + c0Var.f5835k;
            c0Var.f();
            if (c0Var.f5837m > i4) {
                c0Var.f5837m = i4;
            }
            c0Var.f5835k = 0;
            c0Var.r = 0;
            c0Var.o = 0;
        }
        this.o = true;
    }

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        c0 c0Var = this.f5844i;
        h.t(c0Var);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f5848m += (long) remaining;
            int remaining2 = asShortBuffer.remaining();
            int i2 = c0Var.b;
            int i3 = remaining2 / i2;
            short[] c2 = c0Var.c(c0Var.f5834j, c0Var.f5835k, i3);
            c0Var.f5834j = c2;
            asShortBuffer.get(c2, c0Var.f5835k * c0Var.b, ((i2 * i3) * 2) / 2);
            c0Var.f5835k += i3;
            c0Var.f();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int i4 = c0Var.f5837m * c0Var.b * 2;
        if (i4 > 0) {
            if (this.f5845j.capacity() < i4) {
                ByteBuffer order = ByteBuffer.allocateDirect(i4).order(ByteOrder.nativeOrder());
                this.f5845j = order;
                this.f5846k = order.asShortBuffer();
            } else {
                this.f5845j.clear();
                this.f5846k.clear();
            }
            ShortBuffer shortBuffer = this.f5846k;
            int min = Math.min(shortBuffer.remaining() / c0Var.b, c0Var.f5837m);
            shortBuffer.put(c0Var.f5836l, 0, c0Var.b * min);
            int i5 = c0Var.f5837m - min;
            c0Var.f5837m = i5;
            short[] sArr = c0Var.f5836l;
            int i6 = c0Var.b;
            System.arraycopy(sArr, min * i6, sArr, 0, i5 * i6);
            this.n += (long) i4;
            this.f5845j.limit(i4);
            this.f5847l = this.f5845j;
        }
    }

    @Override // f.i.a.a.w0.m
    public int e() {
        return this.b;
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        if (i4 == 2) {
            int i5 = this.f5842g;
            if (i5 == -1) {
                i5 = i2;
            }
            if (this.f5838c == i2 && this.b == i3 && this.f5841f == i5) {
                return false;
            }
            this.f5838c = i2;
            this.b = i3;
            this.f5841f = i5;
            this.f5843h = true;
            return true;
        }
        throw new m.a(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.m
    public void flush() {
        if (isActive()) {
            if (this.f5843h) {
                this.f5844i = new c0(this.f5838c, this.b, this.f5839d, this.f5840e, this.f5841f);
            } else {
                c0 c0Var = this.f5844i;
                if (c0Var != null) {
                    c0Var.f5835k = 0;
                    c0Var.f5837m = 0;
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
        this.f5847l = m.a;
        this.f5848m = 0;
        this.n = 0;
        this.o = false;
    }

    @Override // f.i.a.a.w0.m
    public int g() {
        return this.f5841f;
    }

    @Override // f.i.a.a.w0.m
    public int h() {
        return 2;
    }

    @Override // f.i.a.a.w0.m
    public boolean isActive() {
        return this.f5838c != -1 && (Math.abs(this.f5839d - 1.0f) >= 0.01f || Math.abs(this.f5840e - 1.0f) >= 0.01f || this.f5841f != this.f5838c);
    }

    @Override // f.i.a.a.w0.m
    public void reset() {
        this.f5839d = 1.0f;
        this.f5840e = 1.0f;
        this.b = -1;
        this.f5838c = -1;
        this.f5841f = -1;
        ByteBuffer byteBuffer = m.a;
        this.f5845j = byteBuffer;
        this.f5846k = byteBuffer.asShortBuffer();
        this.f5847l = m.a;
        this.f5842g = -1;
        this.f5843h = false;
        this.f5844i = null;
        this.f5848m = 0;
        this.n = 0;
        this.o = false;
    }
}
