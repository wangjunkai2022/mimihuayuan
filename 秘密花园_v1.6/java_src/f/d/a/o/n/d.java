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
    public final g.a f3616c;

    /* renamed from: d  reason: collision with root package name */
    public int f3617d;

    /* renamed from: e  reason: collision with root package name */
    public f.d.a.o.f f3618e;

    /* renamed from: f  reason: collision with root package name */
    public List<f.d.a.o.o.n<File, ?>> f3619f;

    /* renamed from: g  reason: collision with root package name */
    public int f3620g;

    /* renamed from: h  reason: collision with root package name */
    public volatile n.a<?> f3621h;

    /* renamed from: i  reason: collision with root package name */
    public File f3622i;

    public d(h<?> hVar, g.a aVar) {
        List<f.d.a.o.f> a = hVar.a();
        this.f3617d = -1;
        this.a = a;
        this.b = hVar;
        this.f3616c = aVar;
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.f3616c.b(this.f3618e, exc, this.f3621h.f3739c, f.d.a.o.a.DATA_DISK_CACHE);
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3621h;
        if (aVar != null) {
            aVar.f3739c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        this.f3616c.f(this.f3618e, obj, this.f3621h.f3739c, f.d.a.o.a.DATA_DISK_CACHE, this.f3618e);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        while (true) {
            List<f.d.a.o.o.n<File, ?>> list = this.f3619f;
            if (list != null) {
                if (this.f3620g < list.size()) {
                    this.f3621h = null;
                    boolean z = false;
                    while (!z) {
                        if (!(this.f3620g < this.f3619f.size())) {
                            break;
                        }
                        List<f.d.a.o.o.n<File, ?>> list2 = this.f3619f;
                        int i2 = this.f3620g;
                        this.f3620g = i2 + 1;
                        File file = this.f3622i;
                        h<?> hVar = this.b;
                        this.f3621h = list2.get(i2).a(file, hVar.f3630e, hVar.f3631f, hVar.f3634i);
                        if (this.f3621h != null && this.b.g(this.f3621h.f3739c.a())) {
                            this.f3621h.f3739c.f(this.b.o, this);
                            z = true;
                        }
                    }
                    return z;
                }
            }
            int i3 = this.f3617d + 1;
            this.f3617d = i3;
            if (i3 >= this.a.size()) {
                return false;
            }
            f.d.a.o.f fVar = this.a.get(this.f3617d);
            File b = this.b.b().b(new e(fVar, this.b.n));
            this.f3622i = b;
            if (b != null) {
                this.f3618e = fVar;
                this.f3619f = this.b.f3628c.b.f(b);
                this.f3620g = 0;
            }
        }
    }

    public d(List<f.d.a.o.f> list, h<?> hVar, g.a aVar) {
        this.f3617d = -1;
        this.a = list;
        this.b = hVar;
        this.f3616c = aVar;
    }
}
