package f.d.a.o.p.g;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import f.d.a.o.h;
import f.d.a.o.k;
import f.d.a.o.n.w;
import f.d.a.u.a;
import java.io.File;
import java.io.IOException;

/* compiled from: GifDrawableEncoder.java */
/* loaded from: classes.dex */
public class c implements k<GifDrawable> {
    @Override // f.d.a.o.d
    public boolean a(@NonNull Object obj, @NonNull File file, @NonNull h hVar) {
        try {
            a.d(((GifDrawable) ((w) obj).get()).a.a.a.g().asReadOnlyBuffer(), file);
            return true;
        } catch (IOException unused) {
            Log.isLoggable("GifEncoder", 5);
            return false;
        }
    }

    @Override // f.d.a.o.k
    @NonNull
    public f.d.a.o.c b(@NonNull h hVar) {
        return f.d.a.o.c.SOURCE;
    }
}
