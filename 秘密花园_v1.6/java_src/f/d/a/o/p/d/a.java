package f.d.a.o.p.d;

import androidx.annotation.NonNull;
import f.d.a.o.m.e;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: ByteBufferRewinder.java */
/* loaded from: classes.dex */
public class a implements e<ByteBuffer> {
    public final ByteBuffer a;

    /* compiled from: ByteBufferRewinder.java */
    /* renamed from: f.d.a.o.p.d.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0049a implements e.a<ByteBuffer> {
        @Override // f.d.a.o.m.e.a
        @NonNull
        public Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }

        @Override // f.d.a.o.m.e.a
        @NonNull
        public e<ByteBuffer> b(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.a = byteBuffer;
    }

    @Override // f.d.a.o.m.e
    @NonNull
    public ByteBuffer a() throws IOException {
        this.a.position(0);
        return this.a;
    }

    @Override // f.d.a.o.m.e
    public void b() {
    }
}
