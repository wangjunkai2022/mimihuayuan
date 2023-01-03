package f.d.a.o.p.g;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.m.a;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
import f.d.a.o.p.c.e;
import java.io.IOException;

/* compiled from: GifFrameResourceDecoder.java */
/* loaded from: classes.dex */
public final class g implements j<a, Bitmap> {
    public final d a;

    public g(d dVar) {
        this.a = dVar;
    }

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public w<Bitmap> a(@NonNull a aVar, int i2, int i3, @NonNull h hVar) throws IOException {
        return e.c(aVar.b(), this.a);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull a aVar, @NonNull h hVar) throws IOException {
        return true;
    }
}
