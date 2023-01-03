package f.d.a.o.p.c;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.d.a.o.n.s;
import f.d.a.o.n.w;

/* compiled from: LazyBitmapDrawableResource.java */
/* loaded from: classes.dex */
public final class u implements w<BitmapDrawable>, s {
    public final Resources a;
    public final w<Bitmap> b;

    public u(@NonNull Resources resources, @NonNull w<Bitmap> wVar) {
        h.s(resources, "Argument must not be null");
        this.a = resources;
        h.s(wVar, "Argument must not be null");
        this.b = wVar;
    }

    @Nullable
    public static w<BitmapDrawable> c(@NonNull Resources resources, @Nullable w<Bitmap> wVar) {
        if (wVar == null) {
            return null;
        }
        return new u(resources, wVar);
    }

    @Override // f.d.a.o.n.s
    public void a() {
        w<Bitmap> wVar = this.b;
        if (wVar instanceof s) {
            ((s) wVar).a();
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<BitmapDrawable> b() {
        return BitmapDrawable.class;
    }

    @Override // f.d.a.o.n.w
    public void d() {
        this.b.d();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.d.a.o.n.w
    @NonNull
    public BitmapDrawable get() {
        return new BitmapDrawable(this.a, this.b.get());
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return this.b.getSize();
    }
}
