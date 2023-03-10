package f.d.a.o.p.e;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.j;
import f.d.a.o.n.w;
import java.io.IOException;
/* compiled from: UnitDrawableDecoder.java */
/* loaded from: classes.dex */
public class e implements j<Drawable, Drawable> {
    @Override // f.d.a.o.j
    @Nullable
    public w<Drawable> a(@NonNull Drawable drawable, int i2, int i3, @NonNull h hVar) throws IOException {
        Drawable drawable2 = drawable;
        if (drawable2 != null) {
            return new c(drawable2);
        }
        return null;
    }

    @Override // f.d.a.o.j
    public boolean b(@NonNull Drawable drawable, @NonNull h hVar) throws IOException {
        return true;
    }
}
