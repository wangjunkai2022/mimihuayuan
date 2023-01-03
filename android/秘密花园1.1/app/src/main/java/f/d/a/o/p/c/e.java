package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: BitmapResource.java */
/* loaded from: classes.dex */
public class e implements f.d.a.o.n.w<Bitmap>, f.d.a.o.n.s {
    public final Bitmap a;
    public final f.d.a.o.n.b0.d b;

    public e(@NonNull Bitmap bitmap, @NonNull f.d.a.o.n.b0.d dVar) {
        c.a.a.b.g.h.s(bitmap, "Bitmap must not be null");
        this.a = bitmap;
        c.a.a.b.g.h.s(dVar, "BitmapPool must not be null");
        this.b = dVar;
    }

    @Nullable
    public static e c(@Nullable Bitmap bitmap, @NonNull f.d.a.o.n.b0.d dVar) {
        if (bitmap == null) {
            return null;
        }
        return new e(bitmap, dVar);
    }

    @Override // f.d.a.o.n.s
    public void a() {
        this.a.prepareToDraw();
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<Bitmap> b() {
        return Bitmap.class;
    }

    @Override // f.d.a.o.n.w
    public void d() {
        this.b.b(this.a);
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Bitmap get() {
        return this.a;
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return f.d.a.u.i.f(this.a);
    }
}
