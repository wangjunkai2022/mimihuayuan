package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.p.e.d;
import java.io.IOException;

/* compiled from: ResourceBitmapDecoder.java */
/* loaded from: classes.dex */
public class w implements j<Uri, Bitmap> {
    public final d a;
    public final f.d.a.o.n.b0.d b;

    public w(d dVar, f.d.a.o.n.b0.d dVar2) {
        this.a = dVar;
        this.b = dVar2;
    }

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    @Nullable
    public f.d.a.o.n.w<Bitmap> a(@NonNull Uri uri, int i2, int i3, @NonNull h hVar) throws IOException {
        f.d.a.o.n.w c2 = this.a.c(uri);
        if (c2 == null) {
            return null;
        }
        return o.a(this.b, (Drawable) c2.get(), i2, i3);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull Uri uri, @NonNull h hVar) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }
}
