package f.d.a.o.p.e;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;

/* compiled from: NonOwnedDrawableResource.java */
/* loaded from: classes.dex */
public final class c extends b<Drawable> {
    public c(Drawable drawable) {
        super(drawable);
    }

    /* JADX DEBUG: Type inference failed for r0v1. Raw type applied. Possible types: java.lang.Class<?>, java.lang.Class<android.graphics.drawable.Drawable> */
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
