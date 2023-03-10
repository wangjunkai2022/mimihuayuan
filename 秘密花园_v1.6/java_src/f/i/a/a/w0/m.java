package f.i.a.a.w0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: AudioProcessor.java */
/* loaded from: classes.dex */
public interface m {
    public static final ByteBuffer a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* compiled from: AudioProcessor.java */
    /* loaded from: classes.dex */
    public static final class a extends Exception {
        public a(int i2, int i3, int i4) {
            super("Unhandled format: " + i2 + " Hz, " + i3 + " channels in encoding " + i4);
        }
    }

    boolean a();

    ByteBuffer b();

    void c();

    void d(ByteBuffer byteBuffer);

    int e();

    boolean f(int i2, int i3, int i4) throws a;

    void flush();

    int g();

    int h();

    boolean isActive();

    void reset();
}
