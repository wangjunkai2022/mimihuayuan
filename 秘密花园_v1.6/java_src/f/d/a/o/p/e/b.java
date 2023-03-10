package f.d.a.o.p.e;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.n.s;
import f.d.a.o.n.w;
/* compiled from: DrawableResource.java */
/* loaded from: classes.dex */
public abstract class b<T extends Drawable> implements w<T>, s {
    public final T a;

    public b(T t) {
        h.s(t, "Argument must not be null");
        this.a = t;
    }

    @Override // f.d.a.o.n.s
    public void a() {
        T t = this.a;
        if (t instanceof BitmapDrawable) {
            ((BitmapDrawable) t).getBitmap().prepareToDraw();
        } else if (t instanceof GifDrawable) {
            ((GifDrawable) t).b().prepareToDraw();
        }
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Object get() {
        Drawable.ConstantState constantState = this.a.getConstantState();
        if (constantState == null) {
            return this.a;
        }
        return constantState.newDrawable();
    }
}
