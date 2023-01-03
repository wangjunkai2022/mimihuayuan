package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c.a.a.b.g.h;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.s;
import f.d.a.o.n.w;
import f.d.a.u.i;

/* compiled from: BitmapResource.java */
/* loaded from: classes.dex */
public class e implements w<Bitmap>, s {
    public final Bitmap a;
    public final d b;

    public e(@NonNull Bitmap bitmap, @NonNull d dVar) {
        h.s(bitmap, "Bitmap must not be null");
        this.a = bitmap;
        h.s(dVar, "BitmapPool must not be null");
        this.b = dVar;
    }

    @Nullable
    public static e c(@Nullable Bitmap bitmap, @NonNull d dVar) {
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

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.d.a.o.n.w
    @NonNull
    public Bitmap get() {
        return this.a;
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return i.f(this.a);
    }
}
