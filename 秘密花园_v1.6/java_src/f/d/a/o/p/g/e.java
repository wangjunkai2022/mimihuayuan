package f.d.a.o.p.g;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.l;
import f.d.a.o.n.w;
import java.security.MessageDigest;
/* compiled from: GifDrawableTransformation.java */
/* loaded from: classes.dex */
public class e implements l<GifDrawable> {
    public final l<Bitmap> b;

    public e(l<Bitmap> lVar) {
        c.a.a.b.g.h.s(lVar, "Argument must not be null");
        this.b = lVar;
    }

    @Override // f.d.a.o.l
    @NonNull
    public w<GifDrawable> a(@NonNull Context context, @NonNull w<GifDrawable> wVar, int i2, int i3) {
        GifDrawable gifDrawable = wVar.get();
        w<Bitmap> eVar = new f.d.a.o.p.c.e(gifDrawable.b(), f.d.a.c.b(context).a);
        w<Bitmap> a = this.b.a(context, eVar, i2, i3);
        if (!eVar.equals(a)) {
            eVar.d();
        }
        l<Bitmap> lVar = this.b;
        gifDrawable.a.a.c(lVar, a.get());
        return wVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        this.b.b(messageDigest);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.b.equals(((e) obj).b);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return this.b.hashCode();
    }
}
