package f.d.a.s.h;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* compiled from: DrawableImageViewTarget.java */
/* loaded from: classes.dex */
public class d extends e<Drawable> {
    public d(ImageView imageView) {
        super(imageView);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.s.h.e
    public void j(@Nullable Drawable drawable) {
        ((ImageView) this.a).setImageDrawable(drawable);
    }
}
