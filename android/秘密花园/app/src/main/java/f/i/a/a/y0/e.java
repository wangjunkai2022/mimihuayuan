package f.i.a.a.y0;

import java.nio.ByteBuffer;

/* compiled from: DecoderInputBuffer.java */
/* loaded from: classes.dex */
public class e extends a {
    public final b b = new b();

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f5955c;

    /* renamed from: d  reason: collision with root package name */
    public long f5956d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5957e;

    public e(int i2) {
        this.f5957e = i2;
    }

    public void i() {
        this.a = 0;
        ByteBuffer byteBuffer = this.f5955c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    public final ByteBuffer j(int i2) {
        int i3 = this.f5957e;
        if (i3 == 1) {
            return ByteBuffer.allocate(i2);
        }
        if (i3 == 2) {
            return ByteBuffer.allocateDirect(i2);
        }
        ByteBuffer byteBuffer = this.f5955c;
        int capacity = byteBuffer == null ? 0 : byteBuffer.capacity();
        throw new IllegalStateException("Buffer too small (" + capacity + " < " + i2 + ")");
    }

    public void k(int i2) {
        ByteBuffer byteBuffer = this.f5955c;
        if (byteBuffer == null) {
            this.f5955c = j(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = this.f5955c.position();
        int i3 = i2 + position;
        if (capacity < i3) {
            ByteBuffer j2 = j(i3);
            if (position > 0) {
                this.f5955c.position(0);
                this.f5955c.limit(position);
                j2.put(this.f5955c);
            }
            this.f5955c = j2;
        }
    }
}
