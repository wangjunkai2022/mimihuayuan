package f.i.a.a.e1;

import android.net.Uri;
import androidx.annotation.Nullable;
import f.i.a.a.e1.y;
import f.i.a.a.l1.e0;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: FilteringManifestParser.java */
/* loaded from: classes.dex */
public final class z<T extends y<T>> implements e0.a<T> {
    public final e0.a<? extends T> a;
    @Nullable
    public final List<c0> b;

    public z(e0.a<? extends T> aVar, @Nullable List<c0> list) {
        this.a = aVar;
        this.b = list;
    }

    @Override // f.i.a.a.l1.e0.a
    public Object a(Uri uri, InputStream inputStream) throws IOException {
        T a = this.a.a(uri, inputStream);
        List<c0> list = this.b;
        return (list == null || list.isEmpty()) ? a : (y) a.a(this.b);
    }
}
