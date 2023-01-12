package f.d.a.o.p.c;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: BitmapDrawableDecoder.java */
/* loaded from: classes.dex */
public class a<DataType> implements f.d.a.o.j<DataType, BitmapDrawable> {
    public final f.d.a.o.j<DataType, Bitmap> a;
    public final Resources b;

    public a(@NonNull Resources resources, @NonNull f.d.a.o.j<DataType, Bitmap> jVar) {
        c.a.a.b.g.h.s(resources, "Argument must not be null");
        this.b = resources;
        c.a.a.b.g.h.s(jVar, "Argument must not be null");
        this.a = jVar;
    }

    @Override // f.d.a.o.j
    public f.d.a.o.n.w<BitmapDrawable> a(@NonNull DataType datatype, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        return u.c(this.b, this.a.a(datatype, i2, i3, hVar));
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull DataType datatype, @NonNull f.d.a.o.h hVar) throws IOException {
        return this.a.b(datatype, hVar);
    }
}
