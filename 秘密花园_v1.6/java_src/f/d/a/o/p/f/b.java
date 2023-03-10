package f.d.a.o.p.f;

import c.a.a.b.g.h;
import f.d.a.o.n.w;
import java.io.File;
/* JADX WARN: Incorrect class signature, class is equals to this class: Lf/d/a/o/p/f/b<Ljava/io/File;>; */
/* compiled from: FileResource.java */
/* loaded from: classes.dex */
public class b implements w {
    public final T a;

    /* JADX WARN: Multi-variable type inference failed */
    public b(File file) {
        h.s(file, "Argument must not be null");
        this.a = file;
    }

    @Override // f.d.a.o.n.w
    public Class b() {
        return this.a.getClass();
    }

    @Override // f.d.a.o.n.w
    public void d() {
    }

    @Override // f.d.a.o.n.w
    public final Object get() {
        return this.a;
    }

    @Override // f.d.a.o.n.w
    public final int getSize() {
        return 1;
    }
}
