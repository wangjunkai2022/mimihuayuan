package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import f.d.a.o.c;
import f.d.a.o.h;
import f.d.a.o.k;
import f.d.a.o.n.b0.d;
import f.d.a.o.n.w;
import java.io.File;

/* compiled from: BitmapDrawableEncoder.java */
/* loaded from: classes.dex */
public class b implements k<BitmapDrawable> {
    public final d a;
    public final k<Bitmap> b;

    public b(d dVar, k<Bitmap> kVar) {
        this.a = dVar;
        this.b = kVar;
    }

    @Override // f.d.a.o.d
    public boolean a(@NonNull Object obj, @NonNull File file, @NonNull h hVar) {
        return this.b.a(new e(((BitmapDrawable) ((w) obj).get()).getBitmap(), this.a), file, hVar);
    }

    @Override // f.d.a.o.k
    @NonNull
    public c b(@NonNull h hVar) {
        return this.b.b(hVar);
    }
}
