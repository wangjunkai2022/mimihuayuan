package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.w;
import f.d.a.u.a;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferBitmapDecoder.java */
/* loaded from: classes.dex */
public class g implements j<ByteBuffer, Bitmap> {
    public final n a;

    public g(n nVar) {
        this.a = nVar;
    }

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public w<Bitmap> a(@NonNull ByteBuffer byteBuffer, int i2, int i3, @NonNull h hVar) throws IOException {
        return this.a.a(a.e(byteBuffer), i2, i3, hVar, n.f3692k);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull ByteBuffer byteBuffer, @NonNull h hVar) throws IOException {
        if (this.a != null) {
            return true;
        }
        throw null;
    }
}
