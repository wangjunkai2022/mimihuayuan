package f.e.a.j.m0.c.f;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.d.a.o.h;
import f.d.a.o.o.g;
import f.d.a.o.o.n;
import f.d.a.t.d;
import i.b0;
import java.io.InputStream;

/* compiled from: TomatoModelLoader.java */
/* loaded from: classes.dex */
public class c implements n<b, InputStream> {
    public final b0 a;

    public c(b0 b0Var) {
        this.a = b0Var;
    }

    /* Return type fixed from 'f.d.a.o.o.n$a' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int, int, f.d.a.o.h] */
    @Override // f.d.a.o.o.n
    @Nullable
    public n.a<InputStream> a(@NonNull b bVar, int i2, int i3, @NonNull h hVar) {
        b bVar2 = bVar;
        return new n.a<>(new d(bVar2.a), new a(this.a, new g(bVar2.a)));
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.o.n
    public boolean b(@NonNull b bVar) {
        return true;
    }
}
