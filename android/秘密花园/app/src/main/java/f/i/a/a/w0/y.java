package f.i.a.a.w0;

import f.i.a.a.m1.h0;
import f.i.a.a.w0.m;
import java.nio.ByteBuffer;

/* compiled from: FloatResamplingAudioProcessor.java */
/* loaded from: classes.dex */
public final class y extends t {

    /* renamed from: h  reason: collision with root package name */
    public static final int f5923h = Float.floatToIntBits(Float.NaN);

    public static void n(int i2, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (((double) i2) * 4.656612875245797E-10d));
        if (floatToIntBits == f5923h) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // f.i.a.a.w0.m
    public void d(ByteBuffer byteBuffer) {
        boolean z = this.f5893d == 1073741824;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        if (!z) {
            i2 = (i2 / 3) * 4;
        }
        ByteBuffer l2 = l(i2);
        if (z) {
            while (position < limit) {
                n((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), l2);
                position += 4;
            }
        } else {
            while (position < limit) {
                n(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), l2);
                position += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        l2.flip();
    }

    @Override // f.i.a.a.w0.m
    public boolean f(int i2, int i3, int i4) throws m.a {
        if (h0.S(i4)) {
            return m(i2, i3, i4);
        }
        throw new m.a(i2, i3, i4);
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public int h() {
        return 4;
    }

    @Override // f.i.a.a.w0.t, f.i.a.a.w0.m
    public boolean isActive() {
        return h0.S(this.f5893d);
    }
}
