package f.d.a.o.p.h;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.d.a.o.n.w;
import f.d.a.o.p.c.u;
/* compiled from: BitmapDrawableTranscoder.java */
/* loaded from: classes.dex */
public class b implements e<Bitmap, BitmapDrawable> {
    public final Resources a;

    public b(@NonNull Resources resources) {
        h.s(resources, "Argument must not be null");
        this.a = resources;
    }

    @Override // f.d.a.o.p.h.e
    @Nullable
    public w<BitmapDrawable> a(@NonNull w<Bitmap> wVar, @NonNull f.d.a.o.h hVar) {
        return u.c(this.a, wVar);
    }
}
