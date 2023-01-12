package f.d.a.o.p.e;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* compiled from: NonOwnedDrawableResource.java */
/* loaded from: classes.dex */
public final class c extends b<Drawable> {
    public c(Drawable drawable) {
        super(drawable);
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<Drawable> b() {
        return this.a.getClass();
    }

    @Override // f.d.a.o.n.w
    public void d() {
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return Math.max(1, this.a.getIntrinsicHeight() * this.a.getIntrinsicWidth() * 4);
    }
}
