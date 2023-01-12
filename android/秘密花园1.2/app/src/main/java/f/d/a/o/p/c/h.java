package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class h implements f.d.a.o.j<ByteBuffer, Bitmap> {
    public final d a = new d();

    @Override // f.d.a.o.j
    @Nullable
    public f.d.a.o.n.w<Bitmap> a(@NonNull ByteBuffer byteBuffer, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        return this.a.a(ImageDecoder.createSource(byteBuffer), i2, i3, hVar);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull f.d.a.o.h hVar) throws IOException {
        return true;
    }
}
