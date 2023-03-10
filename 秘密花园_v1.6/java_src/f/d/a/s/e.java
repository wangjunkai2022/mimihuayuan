package f.d.a.s;

import android.graphics.Bitmap;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.l;
/* compiled from: RequestOptions.java */
/* loaded from: classes.dex */
public class e extends a<e> {
    @Nullable
    public static e A;

    @NonNull
    @CheckResult
    public static e B(@NonNull l<Bitmap> lVar) {
        return new e().x(lVar, true);
    }

    @NonNull
    @CheckResult
    public static e C() {
        if (A == null) {
            A = new e().c().b();
        }
        return A;
    }
}
