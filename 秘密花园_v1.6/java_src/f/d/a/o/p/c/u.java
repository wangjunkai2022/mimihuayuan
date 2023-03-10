package f.d.a.o.p.c;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: LazyBitmapDrawableResource.java */
/* loaded from: classes.dex */
public final class u implements f.d.a.o.n.w<BitmapDrawable>, f.d.a.o.n.s {
    public final Resources a;
    public final f.d.a.o.n.w<Bitmap> b;

    public u(@NonNull Resources resources, @NonNull f.d.a.o.n.w<Bitmap> wVar) {
        c.a.a.b.g.h.s(resources, "Argument must not be null");
        this.a = resources;
        c.a.a.b.g.h.s(wVar, "Argument must not be null");
        this.b = wVar;
    }

    @Nullable
    public static f.d.a.o.n.w<BitmapDrawable> c(@NonNull Resources resources, @Nullable f.d.a.o.n.w<Bitmap> wVar) {
        if (wVar == null) {
            return null;
        }
        return new u(resources, wVar);
    }

    @Override // f.d.a.o.n.s
    public void a() {
        f.d.a.o.n.w<Bitmap> wVar = this.b;
        if (wVar instanceof f.d.a.o.n.s) {
            ((f.d.a.o.n.s) wVar).a();
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
