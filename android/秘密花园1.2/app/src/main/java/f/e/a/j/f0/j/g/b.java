package f.e.a.j.f0.j.g;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import i.b0;
import java.io.InputStream;

/* compiled from: MimeiModelLoader.java */
/* loaded from: classes.dex */
public class b implements n<a, InputStream> {
    public final b0 a;

    public b(b0 b0Var) {
        this.a = b0Var;
    }

    @Override // f.d.a.o.o.n
    @Nullable
    public n.a<InputStream> a(@NonNull a aVar, int i2, int i3, @NonNull h hVar) {
        a aVar2 = aVar;
        return new n.a<>(new f.d.a.t.d(aVar2.a), new d(this.a, new g(aVar2.a)));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull a aVar) {
        return true;
    }
}
