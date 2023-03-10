package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: ResourceBitmapDecoder.java */
/* loaded from: classes.dex */
public class w implements f.d.a.o.j<Uri, Bitmap> {
    public final f.d.a.o.p.e.d a;
    public final f.d.a.o.n.b0.d b;

    public w(f.d.a.o.p.e.d dVar, f.d.a.o.n.b0.d dVar2) {
        this.a = dVar;
        this.b = dVar2;
    }

    @Override // f.d.a.o.j
    @Nullable
    public f.d.a.o.n.w<Bitmap> a(@NonNull Uri uri, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        f.d.a.o.n.w c2 = this.a.c(uri);
        if (c2 == null) {
            return null;
        }
        return o.a(this.b, (Drawable) c2.get(), i2, i3);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull Uri uri, @NonNull f.d.a.o.h hVar) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }
}
