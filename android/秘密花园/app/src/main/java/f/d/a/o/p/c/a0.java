package f.d.a.o.p.c;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.w;
import f.d.a.u.i;
import java.io.IOException;

/* compiled from: UnitBitmapDecoder.java */
/* loaded from: classes.dex */
public final class a0 implements j<Bitmap, Bitmap> {

    /* compiled from: UnitBitmapDecoder.java */
    /* loaded from: classes.dex */
    public static final class a implements w<Bitmap> {
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

    /* Return type fixed from 'f.d.a.o.n.w' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public w<Bitmap> a(@NonNull Bitmap bitmap, int i2, int i3, @NonNull h hVar) throws IOException {
        return new a(bitmap);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, f.d.a.o.h] */
    @Override // f.d.a.o.j
    public boolean b(@NonNull Bitmap bitmap, @NonNull h hVar) throws IOException {
        return true;
    }
}
