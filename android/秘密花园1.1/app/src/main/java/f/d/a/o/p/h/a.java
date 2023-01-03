package f.d.a.o.p.h;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.n.w;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapBytesTranscoder.java */
/* loaded from: classes.dex */
public class a implements e<Bitmap, byte[]> {
    public final Bitmap.CompressFormat a = Bitmap.CompressFormat.JPEG;
    public final int b = 100;

    @Override // f.d.a.o.p.h.e
    @Nullable
    public w<byte[]> a(@NonNull w<Bitmap> wVar, @NonNull h hVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        wVar.get().compress(this.a, this.b, byteArrayOutputStream);
        wVar.d();
        return new f.d.a.o.p.d.b(byteArrayOutputStream.toByteArray());
    }
}
