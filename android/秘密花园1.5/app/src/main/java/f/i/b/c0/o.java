package f.i.b.c0;

import f.i.b.a0;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

/* compiled from: Excluder.java */
/* loaded from: classes.dex */
public final class o implements a0, Cloneable {

    /* renamed from: f  reason: collision with root package name */
    public static final o f6121f = new o();
    public double a = -1.0d;
    public int b = 136;

    /* renamed from: c  reason: collision with root package name */
    public boolean f6122c = true;

    /* renamed from: d  reason: collision with root package name */
    public List<f.i.b.a> f6123d = Collections.emptyList();

    /* renamed from: e  reason: collision with root package name */
    public List<f.i.b.a> f6124e = Collections.emptyList();

    /* compiled from: Excluder.java */
    /* loaded from: classes.dex */
    public class a extends f.i.b.z<T> {
        public f.i.b.z<T> a;
        public final /* synthetic */ boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ boolean f6125c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ f.i.b.j f6126d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ f.i.b.d0.a f6127e;

        public a(boolean z, boolean z2, f.i.b.j jVar, f.i.b.d0.a aVar) {
            this.b = z;
            this.f6125c = z2;
            this.f6126d = jVar;
            this.f6127e = aVar;
        }

        /* JADX WARN: Type inference failed for: r4v1, types: [T, java.lang.Object] */
        @Override // f.i.b.z
        public T a(f.i.b.e0.a aVar) throws IOException {
            if (this.b) {
                aVar.a0();
                return null;
            }
            f.i.b.z zVar = this.a;
            if (zVar == null) {
                zVar = this.f6126d.g(o.this, this.f6127e);
                this.a = zVar;
            }
            return zVar.a(aVar);
        }

        @Override // f.i.b.z
        public void b(f.i.b.e0.c cVar, T t) throws IOException {
            if (this.f6125c) {
                cVar.I();
                return;
            }
            f.i.b.z zVar = this.a;
            if (zVar == null) {
                zVar = this.f6126d.g(o.this, this.f6127e);
                this.a = zVar;
            }
            zVar.b(cVar, t);
        }
    }

    @Override // f.i.b.a0
    public <T> f.i.b.z<T> a(f.i.b.j jVar, f.i.b.d0.a<T> aVar) {
        Class<? super T> cls = aVar.a;
        boolean b = b(cls);
        boolean z = b || c(cls, true);
        boolean z2 = b || c(cls, false);
        if (z || z2) {
            return new a(z2, z, jVar, aVar);
        }
        return null;
    }

    public final boolean b(Class<?> cls) {
        if (this.a == -1.0d || f((f.i.b.b0.c) cls.getAnnotation(f.i.b.b0.c.class), (f.i.b.b0.d) cls.getAnnotation(f.i.b.b0.d.class))) {
            return (!this.f6122c && e(cls)) || d(cls);
        }
        return true;
    }

    public final boolean c(Class<?> cls, boolean z) {
        for (f.i.b.a aVar : z ? this.f6123d : this.f6124e) {
            if (aVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (o) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public final boolean d(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    public final boolean e(Class<?> cls) {
        if (cls.isMemberClass()) {
            if (!((cls.getModifiers() & 8) != 0)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(f.i.b.b0.c cVar, f.i.b.b0.d dVar) {
        if (cVar == null || cVar.value() <= this.a) {
            return dVar == null || (dVar.value() > this.a ? 1 : (dVar.value() == this.a ? 0 : -1)) > 0;
        }
        return false;
    }
}
