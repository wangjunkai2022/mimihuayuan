package f.i.a.a.w0;

import androidx.annotation.CallSuper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: BaseAudioProcessor.java */
/* loaded from: classes.dex */
public abstract class t implements m {
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f5892c;

    /* renamed from: d  reason: collision with root package name */
    public int f5893d;

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f5894e;

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f5895f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f5896g;

    public t() {
        ByteBuffer byteBuffer = m.a;
        this.f5894e = byteBuffer;
        this.f5895f = byteBuffer;
        this.f5892c = -1;
        this.b = -1;
        this.f5893d = -1;
    }

    @Override // f.i.a.a.w0.m
    @CallSuper
    public boolean a() {
        return this.f5896g && this.f5895f == m.a;
    }

    @Override // f.i.a.a.w0.m
    @CallSuper
    public ByteBuffer b() {
        ByteBuffer byteBuffer = this.f5895f;
        this.f5895f = m.a;
        return byteBuffer;
    }

    @Override // f.i.a.a.w0.m
    public final void c() {
        this.f5896g = true;
        j();
    }

    @Override // f.i.a.a.w0.m
    public int e() {
        return this.f5892c;
    }

    @Override // f.i.a.a.w0.m
    public final void flush() {
        this.f5895f = m.a;
        this.f5896g = false;
        i();
    }

    @Override // f.i.a.a.w0.m
    public int g() {
        return this.b;
    }

    @Override // f.i.a.a.w0.m
    public int h() {
        return this.f5893d;
    }

    public void i() {
    }

    @Override // f.i.a.a.w0.m
    public boolean isActive() {
        return this.b != -1;
    }

    public void j() {
    }

    public void k() {
    }

    public final ByteBuffer l(int i2) {
        if (this.f5894e.capacity() < i2) {
            this.f5894e = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f5894e.clear();
        }
        ByteBuffer byteBuffer = this.f5894e;
        this.f5895f = byteBuffer;
        return byteBuffer;
    }

    public final boolean m(int i2, int i3, int i4) {
        if (i2 == this.b && i3 == this.f5892c && i4 == this.f5893d) {
            return false;
        }
        this.b = i2;
        this.f5892c = i3;
        this.f5893d = i4;
        return true;
    }

    @Override // f.i.a.a.w0.m
    public final void reset() {
        flush();
        this.f5894e = m.a;
        this.b = -1;
        this.f5892c = -1;
        this.f5893d = -1;
        k();
    }
}
