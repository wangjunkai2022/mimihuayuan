package f.d.a.o.p.c;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import java.io.File;
/* compiled from: BitmapDrawableEncoder.java */
/* loaded from: classes.dex */
public class b implements f.d.a.o.k<BitmapDrawable> {
    public final f.d.a.o.n.b0.d a;
    public final f.d.a.o.k<Bitmap> b;

    public b(f.d.a.o.n.b0.d dVar, f.d.a.o.k<Bitmap> kVar) {
        this.a = dVar;
        this.b = kVar;
    }

    @Override // f.d.a.o.d
    public boolean a(@NonNull Object obj, @NonNull File file, @NonNull f.d.a.o.h hVar) {
        return this.b.a(new e(((BitmapDrawable) ((f.d.a.o.n.w) obj).get()).getBitmap(), this.a), file, hVar);
    }

    @Override // f.d.a.o.k
    @NonNull
    public f.d.a.o.c b(@NonNull f.d.a.o.h hVar) {
        return this.b.b(hVar);
    }
}
