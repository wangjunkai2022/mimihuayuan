package f.d.a.o.n;

import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import f.d.a.o.n.g;
import f.d.a.o.o.n;
import java.io.File;
import java.util.List;

/* compiled from: DataCacheGenerator.java */
/* loaded from: classes.dex */
public class d implements g, d.a<Object> {
    public final List<f.d.a.o.f> a;
    public final h<?> b;

    /* renamed from: c  reason: collision with root package name */
    public final g.a f3612c;

    /* renamed from: d  reason: collision with root package name */
    public int f3613d;

    /* renamed from: e  reason: collision with root package name */
    public f.d.a.o.f f3614e;

    /* renamed from: f  reason: collision with root package name */
    public List<f.d.a.o.o.n<File, ?>> f3615f;

    /* renamed from: g  reason: collision with root package name */
    public int f3616g;

    /* renamed from: h  reason: collision with root package name */
    public volatile n.a<?> f3617h;

    /* renamed from: i  reason: collision with root package name */
    public File f3618i;

    public d(h<?> hVar, g.a aVar) {
        List<f.d.a.o.f> a = hVar.a();
        this.f3613d = -1;
        this.a = a;
        this.b = hVar;
        this.f3612c = aVar;
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.f3612c.b(this.f3614e, exc, this.f3617h.f3735c, f.d.a.o.a.DATA_DISK_CACHE);
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3617h;
        if (aVar != null) {
            aVar.f3735c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        this.f3612c.f(this.f3614e, obj, this.f3617h.f3735c, f.d.a.o.a.DATA_DISK_CACHE, this.f3614e);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        while (true) {
            List<f.d.a.o.o.n<File, ?>> list = this.f3615f;
            if (list != null) {
                if (this.f3616g < list.size()) {
                    this.f3617h = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f3616g < this.f3615f.size())) {
                            break;
                        }
                        List<f.d.a.o.o.n<File, ?>> list2 = this.f3615f;
                        int i2 = this.f3616g;
                        this.f3616g = i2 + 1;
                        File file = this.f3618i;
                        h<?> hVar = this.b;
                        this.f3617h = list2.get(i2).a(file, hVar.f3626e, hVar.f3627f, hVar.f3630i);
                        if (this.f3617h != null && this.b.g(this.f3617h.f3735c.a())) {
                            this.f3617h.f3735c.f(this.b.o, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i3 = this.f3613d + 1;
            this.f3613d = i3;
            if (i3 >= this.a.size()) {
                return false;
            }
            f.d.a.o.f fVar = this.a.get(this.f3613d);
            File b = this.b.b().b(new e(fVar, this.b.n));
            this.f3618i = b;
            if (b != null) {
                this.f3614e = fVar;
                this.f3615f = this.b.f3624c.b.f(b);
                this.f3616g = 0;
            }
        }
    }

    public d(List<f.d.a.o.f> list, h<?> hVar, g.a aVar) {
        this.f3613d = -1;
        this.a = list;
        this.b = hVar;
        this.f3612c = aVar;
    }
}
