package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapDecoder.java */
/* loaded from: classes.dex */
public class g implements f.d.a.o.j<ByteBuffer, Bitmap> {
    public final n a;

    public g(n nVar) {
        this.a = nVar;
    }

    @Override // f.d.a.o.j
    public f.d.a.o.n.w<Bitmap> a(@NonNull ByteBuffer byteBuffer, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        return this.a.a(f.d.a.u.a.e(byteBuffer), i2, i3, hVar, n.f3767k);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull f.d.a.o.h hVar) throws IOException {
        if (this.a != null) {
            return true;
        }
        throw null;
    }
}
