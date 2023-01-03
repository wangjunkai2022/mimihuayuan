package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.io.IOException;

/* compiled from: UnitBitmapDecoder.java */
/* loaded from: classes.dex */
public final class a0 implements f.d.a.o.j<Bitmap, Bitmap> {

    /* compiled from: UnitBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static final class a implements f.d.a.o.n.w<Bitmap> {
        public final Bitmap a;

        public a(@NonNull Bitmap bitmap) {
            this.a = bitmap;
        }

        @Override // f.d.a.o.n.w
        @NonNull
        public Class<Bitmap> b() {
            return Bitmap.class;
        }

        @Override // f.d.a.o.n.w
        public void d() {
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

    @Override // f.d.a.o.j
    public f.d.a.o.n.w<Bitmap> a(@NonNull Bitmap bitmap, int i2, int i3, @NonNull f.d.a.o.h hVar) throws IOException {
        return new a(bitmap);
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull Bitmap bitmap, @NonNull f.d.a.o.h hVar) throws IOException {
        return true;
    }
}
