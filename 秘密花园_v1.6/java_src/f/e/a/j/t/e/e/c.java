package f.e.a.j.t.e.e;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import i.b0;
import java.io.InputStream;
/* compiled from: CustomModelLoader.java */
/* loaded from: classes.dex */
public class c implements n<a, InputStream> {
    public final b0 a;

    public c(b0 b0Var) {
        this.a = b0Var;
    }

    @Override // f.d.a.o.o.n
    @Nullable
    public n.a<InputStream> a(@NonNull a aVar, int i2, int i3, @NonNull h hVar) {
        a aVar2 = aVar;
        return new n.a<>(new f.d.a.t.d(aVar2.getUrl()), new b(this.a, new g(aVar2.getUrl())));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull a aVar) {
        a aVar2 = aVar;
        return aVar2.getUrl().contains(f.e.a.e.a("GRECAg5dTUsH")) || aVar2.getUrl().contains(f.e.a.e.a("GQcNB0UHQUc="));
    }
}
