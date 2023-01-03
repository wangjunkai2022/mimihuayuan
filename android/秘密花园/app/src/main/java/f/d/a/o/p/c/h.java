package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapImageDecoderResourceDecoder.java */
@RequiresApi(api = 28)
/* loaded from: classes.dex */
public final class h implements j<ByteBuffer, Bitmap> {
    public final d a = new d();

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    @Nullable
    public w<Bitmap> a(@NonNull ByteBuffer byteBuffer, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        return this.a.a(ImageDecoder.createSource(byteBuffer), i2, i3, hVar);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull f.d.a.o.h hVar) throws IOException {
        return true;
    }
}
