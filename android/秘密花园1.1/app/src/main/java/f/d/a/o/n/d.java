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
    public final g.a f3537c;

    /* renamed from: d  reason: collision with root package name */
    public int f3538d;

    /* renamed from: e  reason: collision with root package name */
    public f.d.a.o.f f3539e;

    /* renamed from: f  reason: collision with root package name */
    public List<f.d.a.o.o.n<File, ?>> f3540f;

    /* renamed from: g  reason: collision with root package name */
    public int f3541g;

    /* renamed from: h  reason: collision with root package name */
    public volatile n.a<?> f3542h;

    /* renamed from: i  reason: collision with root package name */
    public File f3543i;

    public d(h<?> hVar, g.a aVar) {
        List<f.d.a.o.f> a = hVar.a();
        this.f3538d = -1;
        this.a = a;
        this.b = hVar;
        this.f3537c = aVar;
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.f3537c.b(this.f3539e, exc, this.f3542h.f3660c, f.d.a.o.a.DATA_DISK_CACHE);
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3542h;
        if (aVar != null) {
            aVar.f3660c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        this.f3537c.f(this.f3539e, obj, this.f3542h.f3660c, f.d.a.o.a.DATA_DISK_CACHE, this.f3539e);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        while (true) {
            List<f.d.a.o.o.n<File, ?>> list = this.f3540f;
            if (list != null) {
                if (this.f3541g < list.size()) {
                    this.f3542h = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f3541g < this.f3540f.size())) {
                            break;
                        }
                        List<f.d.a.o.o.n<File, ?>> list2 = this.f3540f;
                        int i2 = this.f3541g;
                        this.f3541g = i2 + 1;
                        File file = this.f3543i;
                        h<?> hVar = this.b;
                        this.f3542h = list2.get(i2).a(file, hVar.f3551e, hVar.f3552f, hVar.f3555i);
                        if (this.f3542h != null && this.b.g(this.f3542h.f3660c.a())) {
                            this.f3542h.f3660c.f(this.b.o, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i3 = this.f3538d + 1;
            this.f3538d = i3;
            if (i3 >= this.a.size()) {
                return false;
            }
            f.d.a.o.f fVar = this.a.get(this.f3538d);
            File b = this.b.b().b(new e(fVar, this.b.n));
            this.f3543i = b;
            if (b != null) {
                this.f3539e = fVar;
                this.f3540f = this.b.f3549c.b.f(b);
                this.f3541g = 0;
            }
        }
    }

    public d(List<f.d.a.o.f> list, h<?> hVar, g.a aVar) {
        this.f3538d = -1;
        this.a = list;
        this.b = hVar;
        this.f3537c = aVar;
    }
}
