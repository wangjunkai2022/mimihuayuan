package f.d.a.o.n;

import android.util.Log;
import androidx.annotation.NonNull;
import f.d.a.o.m.d;
import f.d.a.o.n.g;
import f.d.a.o.o.n;
import java.util.Collections;
import java.util.List;

/* compiled from: SourceGenerator.java */
/* loaded from: classes.dex */
public class a0 implements g, d.a<Object>, g.a {
    public final h<?> a;
    public final g.a b;

    /* renamed from: c  reason: collision with root package name */
    public int f3572c;

    /* renamed from: d  reason: collision with root package name */
    public d f3573d;

    /* renamed from: e  reason: collision with root package name */
    public Object f3574e;

    /* renamed from: f  reason: collision with root package name */
    public volatile n.a<?> f3575f;

    /* renamed from: g  reason: collision with root package name */
    public e f3576g;

    public a0(h<?> hVar, g.a aVar) {
        this.a = hVar;
        this.b = aVar;
    }

    @Override // f.d.a.o.n.g.a
    public void a() {
        throw new UnsupportedOperationException();
    }

    @Override // f.d.a.o.n.g.a
    public void b(f.d.a.o.f fVar, Exception exc, f.d.a.o.m.d<?> dVar, f.d.a.o.a aVar) {
        this.b.b(fVar, exc, dVar, this.f3575f.f3735c.e());
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.b.b(this.f3576g, exc, this.f3575f.f3735c, this.f3575f.f3735c.e());
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3575f;
        if (aVar != null) {
            aVar.f3735c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        k kVar = this.a.p;
        if (obj != null && kVar.c(this.f3575f.f3735c.e())) {
            this.f3574e = obj;
            this.b.a();
            return;
        }
        this.b.f(this.f3575f.a, obj, this.f3575f.f3735c, this.f3575f.f3735c.e(), this.f3576g);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        Object obj = this.f3574e;
        if (obj != null) {
            this.f3574e = null;
            long b = f.d.a.u.e.b();
            try {
                f.d.a.o.d<X> e2 = this.a.e(obj);
                f fVar = new f(e2, obj, this.a.f3630i);
                this.f3576g = new e(this.f3575f.a, this.a.n);
                this.a.b().a(this.f3576g, fVar);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    String str = "Finished encoding source to cache, key: " + this.f3576g + ", data: " + obj + ", encoder: " + e2 + ", duration: " + f.d.a.u.e.a(b);
                }
                this.f3575f.f3735c.b();
                this.f3573d = new d(Collections.singletonList(this.f3575f.a), this.a, this);
            } catch (Throwable th) {
                this.f3575f.f3735c.b();
                throw th;
            }
        }
        d dVar = this.f3573d;
        if (dVar == null || !dVar.e()) {
            this.f3573d = null;
            this.f3575f = null;
            boolean z = false;
            while (!z) {
                if (!(this.f3572c < this.a.c().size())) {
                    break;
                }
                List<n.a<?>> c2 = this.a.c();
                int i2 = this.f3572c;
                this.f3572c = i2 + 1;
                this.f3575f = c2.get(i2);
                if (this.f3575f != null && (this.a.p.c(this.f3575f.f3735c.e()) || this.a.g(this.f3575f.f3735c.a()))) {
                    this.f3575f.f3735c.f(this.a.o, this);
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    @Override // f.d.a.o.n.g.a
    public void f(f.d.a.o.f fVar, Object obj, f.d.a.o.m.d<?> dVar, f.d.a.o.a aVar, f.d.a.o.f fVar2) {
        this.b.f(fVar, obj, dVar, this.f3575f.f3735c.e(), fVar);
    }
}
