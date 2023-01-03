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
    public int f3497c;

    /* renamed from: d  reason: collision with root package name */
    public d f3498d;

    /* renamed from: e  reason: collision with root package name */
    public Object f3499e;

    /* renamed from: f  reason: collision with root package name */
    public volatile n.a<?> f3500f;

    /* renamed from: g  reason: collision with root package name */
    public e f3501g;

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
        this.b.b(fVar, exc, dVar, this.f3500f.f3660c.e());
    }

    @Override // f.d.a.o.m.d.a
    public void c(@NonNull Exception exc) {
        this.b.b(this.f3501g, exc, this.f3500f.f3660c, this.f3500f.f3660c.e());
    }

    @Override // f.d.a.o.n.g
    public void cancel() {
        n.a<?> aVar = this.f3500f;
        if (aVar != null) {
            aVar.f3660c.cancel();
        }
    }

    @Override // f.d.a.o.m.d.a
    public void d(Object obj) {
        k kVar = this.a.p;
        if (obj != null && kVar.c(this.f3500f.f3660c.e())) {
            this.f3499e = obj;
            this.b.a();
            return;
        }
        this.b.f(this.f3500f.a, obj, this.f3500f.f3660c, this.f3500f.f3660c.e(), this.f3501g);
    }

    @Override // f.d.a.o.n.g
    public boolean e() {
        Object obj = this.f3499e;
        if (obj != null) {
            this.f3499e = null;
            long b = f.d.a.u.e.b();
            try {
                f.d.a.o.d<X> e2 = this.a.e(obj);
                f fVar = new f(e2, obj, this.a.f3555i);
                this.f3501g = new e(this.f3500f.a, this.a.n);
                this.a.b().a(this.f3501g, fVar);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    String str = "Finished encoding source to cache, key: " + this.f3501g + ", data: " + obj + ", encoder: " + e2 + ", duration: " + f.d.a.u.e.a(b);
                }
                this.f3500f.f3660c.b();
                this.f3498d = new d(Collections.singletonList(this.f3500f.a), this.a, this);
            } catch (Throwable th) {
                this.f3500f.f3660c.b();
                throw th;
            }
        }
        d dVar = this.f3498d;
        if (dVar == null || !dVar.e()) {
            this.f3498d = null;
            this.f3500f = null;
            boolean z = false;
            while (!z) {
                if (!(this.f3497c < this.a.c().size())) {
                    break;
                }
                List<n.a<?>> c2 = this.a.c();
                int i2 = this.f3497c;
                this.f3497c = i2 + 1;
                this.f3500f = c2.get(i2);
                if (this.f3500f != null && (this.a.p.c(this.f3500f.f3660c.e()) || this.a.g(this.f3500f.f3660c.a()))) {
                    this.f3500f.f3660c.f(this.a.o, this);
                    z = true;
                }
            }
            return z;
        }
        return true;
    }

    @Override // f.d.a.o.n.g.a
    public void f(f.d.a.o.f fVar, Object obj, f.d.a.o.m.d<?> dVar, f.d.a.o.a aVar, f.d.a.o.f fVar2) {
        this.b.f(fVar, obj, dVar, this.f3500f.f3660c.e(), fVar);
    }
}
