package f.d.a.o.p.g;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.IOException;
/* compiled from: GifFrameResourceDecoder.java */
/* loaded from: classes.dex */
public final class g implements j<f.d.a.m.a, Bitmap> {
    public final f.d.a.o.n.b0.d a;

    public g(f.d.a.o.n.b0.d dVar) {
        this.a = dVar;
    }

    @Override // f.d.a.o.j
    public w<Bitmap> a(@NonNull f.d.a.m.a aVar, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        return f.d.a.o.p.c.e.c(aVar.b(), this.a);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull f.d.a.m.a aVar, @NonNull f.d.a.o.h hVar) throws IOException {
        return true;
    }
}
