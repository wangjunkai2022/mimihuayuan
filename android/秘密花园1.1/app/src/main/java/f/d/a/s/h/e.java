package f.d.a.s.h;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: ImageViewTarget.java */
/* loaded from: classes.dex */
public abstract class e<Z> extends i<ImageView, Z> {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public Animatable f3778d;

    public e(ImageView imageView) {
        super(imageView);
    }

    @Override // f.d.a.s.h.h
    public void b(@NonNull Z z, @Nullable f.d.a.s.i.b<? super Z> bVar) {
        k(z);
    }

    @Override // f.d.a.s.h.h
    public void c(@Nullable Drawable drawable) {
        k(null);
        ((ImageView) this.a).setImageDrawable(drawable);
    }

    @Override // f.d.a.p.i
    public void d() {
        Animatable animatable = this.f3778d;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // f.d.a.s.h.h
    public void e(@Nullable Drawable drawable) {
        k(null);
        ((ImageView) this.a).setImageDrawable(drawable);
    }

    @Override // f.d.a.s.h.h
    public void g(@Nullable Drawable drawable) {
        this.b.a();
        Animatable animatable = this.f3778d;
        if (animatable != null) {
            animatable.stop();
        }
        k(null);
        ((ImageView) this.a).setImageDrawable(drawable);
    }

    public abstract void j(@Nullable Z z);

    public final void k(@Nullable Z z) {
        j(z);
        if (z instanceof Animatable) {
            Animatable animatable = (Animatable) z;
            this.f3778d = animatable;
            animatable.start();
            return;
        }
        this.f3778d = null;
    }

    @Override // f.d.a.p.i
    public void onStart() {
        Animatable animatable = this.f3778d;
        if (animatable != null) {
            animatable.start();
        }
    }
}
