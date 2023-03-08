package f.d.a.o.p.g;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.n.s;
import f.d.a.o.p.g.f;

/* compiled from: GifDrawableResource.java */
/* loaded from: classes.dex */
public class d extends f.d.a.o.p.e.b<GifDrawable> implements s {
    public d(GifDrawable gifDrawable) {
        super(gifDrawable);
    }

    @Override // f.d.a.o.p.e.b, f.d.a.o.n.s
    public void a() {
        ((GifDrawable) this.a).b().prepareToDraw();
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<GifDrawable> b() {
        return GifDrawable.class;
    }

    @Override // f.d.a.o.n.w
    public void d() {
        ((GifDrawable) this.a).stop();
        GifDrawable gifDrawable = (GifDrawable) this.a;
        gifDrawable.f90d = true;
        f fVar = gifDrawable.a.a;
        fVar.f3792c.clear();
        Bitmap bitmap = fVar.f3802m;
        if (bitmap != null) {
            fVar.f3794e.b(bitmap);
            fVar.f3802m = null;
        }
        fVar.f3795f = false;
        f.a aVar = fVar.f3799j;
        if (aVar != null) {
            fVar.f3793d.m(aVar);
            fVar.f3799j = null;
        }
        f.a aVar2 = fVar.f3801l;
        if (aVar2 != null) {
            fVar.f3793d.m(aVar2);
            fVar.f3801l = null;
        }
        f.a aVar3 = fVar.n;
        if (aVar3 != null) {
            fVar.f3793d.m(aVar3);
            fVar.n = null;
        }
        fVar.a.clear();
        fVar.f3800k = true;
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        f fVar = ((GifDrawable) this.a).a.a;
        return fVar.a.f() + fVar.o;
    }
}
