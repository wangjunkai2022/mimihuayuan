package f.d.a.o.p.g;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.n.s;
import f.d.a.o.p.e.b;
import f.d.a.o.p.g.f;

/* compiled from: GifDrawableResource.java */
/* loaded from: classes.dex */
public class d extends b<GifDrawable> implements s {
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
        fVar.f3717c.clear();
        Bitmap bitmap = fVar.f3727m;
        if (bitmap != null) {
            fVar.f3719e.b(bitmap);
            fVar.f3727m = null;
        }
        fVar.f3720f = false;
        f.a aVar = fVar.f3724j;
        if (aVar != null) {
            fVar.f3718d.m(aVar);
            fVar.f3724j = null;
        }
        f.a aVar2 = fVar.f3726l;
        if (aVar2 != null) {
            fVar.f3718d.m(aVar2);
            fVar.f3726l = null;
        }
        f.a aVar3 = fVar.n;
        if (aVar3 != null) {
            fVar.f3718d.m(aVar3);
            fVar.n = null;
        }
        fVar.a.clear();
        fVar.f3725k = true;
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        f fVar = ((GifDrawable) this.a).a.a;
        return fVar.a.f() + fVar.o;
    }
}
