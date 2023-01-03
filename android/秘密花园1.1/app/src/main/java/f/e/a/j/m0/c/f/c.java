package f.e.a.j.m0.c.f;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import i.b0;
import java.io.InputStream;

/* compiled from: TomatoModelLoader.java */
/* loaded from: classes.dex */
public class c implements n<b, InputStream> {
    public final b0 a;

    public c(b0 b0Var) {
        this.a = b0Var;
    }

    @Override // f.d.a.o.o.n
    @Nullable
    public n.a<InputStream> a(@NonNull b bVar, int i2, int i3, @NonNull h hVar) {
        b bVar2 = bVar;
        return new n.a<>(new f.d.a.t.d(bVar2.a), new a(this.a, new g(bVar2.a)));
    }

    @Override // f.d.a.o.o.n
    public boolean b(@NonNull b bVar) {
        return true;
    }
}
