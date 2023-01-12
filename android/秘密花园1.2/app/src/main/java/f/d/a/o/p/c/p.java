package f.d.a.o.p.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: DrawableTransformation.java */
/* loaded from: classes.dex */
public class p implements f.d.a.o.l<Drawable> {
    public final f.d.a.o.l<Bitmap> b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f3773c;

    public p(f.d.a.o.l<Bitmap> lVar, boolean z) {
        this.b = lVar;
        this.f3773c = z;
    }

    @Override // f.d.a.o.l
    @NonNull
    public f.d.a.o.n.w<Drawable> a(@NonNull Context context, @NonNull f.d.a.o.n.w<Drawable> wVar, int i2, int i3) {
        f.d.a.o.n.b0.d dVar = f.d.a.c.b(context).a;
        Drawable drawable = wVar.get();
        f.d.a.o.n.w<Bitmap> a = o.a(dVar, drawable, i2, i3);
        if (a == null) {
            if (this.f3773c) {
                throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
            }
            return wVar;
        }
        f.d.a.o.n.w<Bitmap> a2 = this.b.a(context, a, i2, i3);
        if (a2.equals(a)) {
            a2.d();
            return wVar;
        }
        return u.c(context.getResources(), a2);
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        this.b.b(messageDigest);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof p) {
            return this.b.equals(((p) obj).b);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return this.b.hashCode();
    }
}
