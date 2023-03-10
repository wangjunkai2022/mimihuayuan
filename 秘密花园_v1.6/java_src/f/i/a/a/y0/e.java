package f.i.a.a.y0;

import java.nio.ByteBuffer;
/* compiled from: DecoderInputBuffer.java */
/* loaded from: classes.dex */
public class e extends a {
    public final b b = new b();

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f6039c;

    /* renamed from: d  reason: collision with root package name */
    public long f6040d;

    /* renamed from: e  reason: collision with root package name */
    public final int f6041e;

    public e(int i2) {
        this.f6041e = i2;
    }

    public void i() {
        this.a = 0;
        ByteBuffer byteBuffer = this.f6039c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final ByteBuffer j(int i2) {
        int i3 = this.f6041e;
        if (i3 == 1) {
            return ByteBuffer.allocate(i2);
        }
        if (i3 == 2) {
            return ByteBuffer.allocateDirect(i2);
        }
        ByteBuffer byteBuffer = this.f6039c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        throw new IllegalStateException("Buffer too small (" + capacity + " < " + i2 + ")");
    }

    public void k(int i2) {
        ByteBuffer byteBuffer = this.f6039c;
        if (byteBuffer == null) {
            this.f6039c = j(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f6039c.position();
        int i3 = i2 + position;
        if (capacity >= i3) {
            return;
        }
        ByteBuffer j2 = j(i3);
        if (position > 0) {
            this.f6039c.position(0);
            this.f6039c.limit(position);
            j2.put(this.f6039c);
        }
        this.f6039c = j2;
    }
}
