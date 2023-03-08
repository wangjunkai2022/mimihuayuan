package f.e.a.j.t.e.e;

import androidx.annotation.NonNull;
import f.d.a.o.o.n;
import f.d.a.o.o.o;
import f.d.a.o.o.r;
import i.b0;
import java.io.InputStream;

/* compiled from: CustomModelLoaderFactory.java */
/* loaded from: classes.dex */
public class d implements o<a, InputStream> {
    public final b0 a;

    public d(b0 b0Var) {
        this.a = b0Var;
    }

    @Override // f.d.a.o.o.o
    @NonNull
    public n<a, InputStream> b(@NonNull r rVar) {
        return new c(this.a);
    }

    @Override // f.d.a.o.o.o
    public void c() {
    }
}
