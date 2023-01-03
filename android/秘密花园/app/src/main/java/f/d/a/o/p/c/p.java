package f.d.a.o.p.c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import f.d.a.c;
import f.d.a.o.l;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
import java.security.MessageDigest;

/* compiled from: DrawableTransformation.java */
/* loaded from: classes.dex */
public class p implements l<Drawable> {
    public final l<Bitmap> b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f3698c;

    public p(l<Bitmap> lVar, boolean z) {
        this.b = lVar;
        this.f3698c = z;
    }

    @Override // f.d.a.o.l
    @NonNull
    public w<Drawable> a(@NonNull Context context, @NonNull w<Drawable> wVar, int i2, int i3) {
        d dVar = c.b(context).a;
        Drawable drawable = wVar.get();
        w<Bitmap> a = o.a(dVar, drawable, i2, i3);
        if (a != null) {
            w<Bitmap> a2 = this.b.a(context, a, i2, i3);
            if (!a2.equals(a)) {
                return u.c(context.getResources(), a2);
            }
            a2.d();
            return wVar;
        } else if (!this.f3698c) {
            return wVar;
        } else {
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
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
