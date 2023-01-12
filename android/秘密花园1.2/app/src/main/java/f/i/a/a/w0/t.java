package f.i.a.a.w0;

import androidx.annotation.CallSuper;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: BaseAudioProcessor.java */
/* loaded from: classes.dex */
public abstract class t implements m {
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public int f5967c;

    /* renamed from: d  reason: collision with root package name */
    public int f5968d;

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f5969e;

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f5970f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f5971g;

    public t() {
        ByteBuffer byteBuffer = m.a;
        this.f5969e = byteBuffer;
        this.f5970f = byteBuffer;
        this.f5967c = -1;
        this.b = -1;
        this.f5968d = -1;
    }

    @Override // f.i.a.a.w0.m
    @CallSuper
    public boolean a() {
        return this.f5971g && this.f5970f == m.a;
    }

    @Override // f.i.a.a.w0.m
    @CallSuper
    public ByteBuffer b() {
        ByteBuffer byteBuffer = this.f5970f;
        this.f5970f = m.a;
        return byteBuffer;
    }

    @Override // f.i.a.a.w0.m
    public final void c() {
        this.f5971g = true;
        j();
    }

    @Override // f.i.a.a.w0.m
    public int e() {
        return this.f5967c;
    }

    @Override // f.i.a.a.w0.m
    public final void flush() {
        this.f5970f = m.a;
        this.f5971g = false;
        i();
    }

    @Override // f.i.a.a.w0.m
    public int g() {
        return this.b;
    }

    @Override // f.i.a.a.w0.m
    public int h() {
        return this.f5968d;
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
        if (this.f5969e.capacity() < i2) {
            this.f5969e = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
        } else {
            this.f5969e.clear();
        }
        ByteBuffer byteBuffer = this.f5969e;
        this.f5970f = byteBuffer;
        return byteBuffer;
    }

    public final boolean m(int i2, int i3, int i4) {
        if (i2 == this.b && i3 == this.f5967c && i4 == this.f5968d) {
            return false;
        }
        this.b = i2;
        this.f5967c = i3;
        this.f5968d = i4;
        return true;
    }

    @Override // f.i.a.a.w0.m
    public final void reset() {
        flush();
        this.f5969e = m.a;
        this.b = -1;
        this.f5967c = -1;
        this.f5968d = -1;
        k();
    }
}
