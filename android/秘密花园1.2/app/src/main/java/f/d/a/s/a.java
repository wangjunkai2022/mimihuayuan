package f.d.a.s;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import f.d.a.o.h;
import f.d.a.o.l;
import f.d.a.o.n.k;
import f.d.a.o.p.c.j;
import f.d.a.o.p.c.m;
import f.d.a.o.p.c.n;
import f.d.a.o.p.c.p;
import f.d.a.o.p.c.r;
import f.d.a.s.a;
import f.d.a.u.i;
import java.util.Map;

/* compiled from: BaseRequestOptions.java */
/* loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    public int a;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public Drawable f3827e;

    /* renamed from: f  reason: collision with root package name */
    public int f3828f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public Drawable f3829g;

    /* renamed from: h  reason: collision with root package name */
    public int f3830h;

    /* renamed from: m  reason: collision with root package name */
    public boolean f3835m;
    @Nullable
    public Drawable o;
    public int p;
    public boolean t;
    @Nullable
    public Resources.Theme u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean z;
    public float b = 1.0f;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public k f3825c = k.f3659d;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public f.d.a.f f3826d = f.d.a.f.NORMAL;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3831i = true;

    /* renamed from: j  reason: collision with root package name */
    public int f3832j = -1;

    /* renamed from: k  reason: collision with root package name */
    public int f3833k = -1;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public f.d.a.o.f f3834l = f.d.a.t.c.b;
    public boolean n = true;
    @NonNull
    public h q = new h();
    @NonNull
    public Map<Class<?>, l<?>> r = new CachedHashCodeArrayMap();
    @NonNull
    public Class<?> s = Object.class;
    public boolean y = true;

    public static boolean j(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    @NonNull
    @CheckResult
    public T A(boolean z) {
        if (this.v) {
            return (T) clone().A(z);
        }
        this.z = z;
        this.a |= 1048576;
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T a(@NonNull a<?> aVar) {
        if (this.v) {
            return (T) clone().a(aVar);
        }
        if (j(aVar.a, 2)) {
            this.b = aVar.b;
        }
        if (j(aVar.a, 262144)) {
            this.w = aVar.w;
        }
        if (j(aVar.a, 1048576)) {
            this.z = aVar.z;
        }
        if (j(aVar.a, 4)) {
            this.f3825c = aVar.f3825c;
        }
        if (j(aVar.a, 8)) {
            this.f3826d = aVar.f3826d;
        }
        if (j(aVar.a, 16)) {
            this.f3827e = aVar.f3827e;
            this.f3828f = 0;
            this.a &= -33;
        }
        if (j(aVar.a, 32)) {
            this.f3828f = aVar.f3828f;
            this.f3827e = null;
            this.a &= -17;
        }
        if (j(aVar.a, 64)) {
            this.f3829g = aVar.f3829g;
            this.f3830h = 0;
            this.a &= -129;
        }
        if (j(aVar.a, 128)) {
            this.f3830h = aVar.f3830h;
            this.f3829g = null;
            this.a &= -65;
        }
        if (j(aVar.a, 256)) {
            this.f3831i = aVar.f3831i;
        }
        if (j(aVar.a, 512)) {
            this.f3833k = aVar.f3833k;
            this.f3832j = aVar.f3832j;
        }
        if (j(aVar.a, 1024)) {
            this.f3834l = aVar.f3834l;
        }
        if (j(aVar.a, 4096)) {
            this.s = aVar.s;
        }
        if (j(aVar.a, 8192)) {
            this.o = aVar.o;
            this.p = 0;
            this.a &= -16385;
        }
        if (j(aVar.a, 16384)) {
            this.p = aVar.p;
            this.o = null;
            this.a &= -8193;
        }
        if (j(aVar.a, 32768)) {
            this.u = aVar.u;
        }
        if (j(aVar.a, 65536)) {
            this.n = aVar.n;
        }
        if (j(aVar.a, 131072)) {
            this.f3835m = aVar.f3835m;
        }
        if (j(aVar.a, 2048)) {
            this.r.putAll(aVar.r);
            this.y = aVar.y;
        }
        if (j(aVar.a, 524288)) {
            this.x = aVar.x;
        }
        if (!this.n) {
            this.r.clear();
            int i2 = this.a & (-2049);
            this.a = i2;
            this.f3835m = false;
            this.a = i2 & (-131073);
            this.y = true;
        }
        this.a |= aVar.a;
        this.q.d(aVar.q);
        s();
        return this;
    }

    @NonNull
    public T b() {
        if (this.t && !this.v) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.v = true;
        return k();
    }

    @NonNull
    @CheckResult
    public T c() {
        return y(m.b, new f.d.a.o.p.c.k());
    }

    @Override // 
    @CheckResult
    /* renamed from: d */
    public T clone() {
        try {
            T t = (T) super.clone();
            h hVar = new h();
            t.q = hVar;
            hVar.d(this.q);
            CachedHashCodeArrayMap cachedHashCodeArrayMap = new CachedHashCodeArrayMap();
            t.r = cachedHashCodeArrayMap;
            cachedHashCodeArrayMap.putAll(this.r);
            t.t = false;
            t.v = false;
            return t;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @NonNull
    @CheckResult
    public T e(@NonNull Class<?> cls) {
        if (this.v) {
            return (T) clone().e(cls);
        }
        c.a.a.b.g.h.s(cls, "Argument must not be null");
        this.s = cls;
        this.a |= 4096;
        s();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            return Float.compare(aVar.b, this.b) == 0 && this.f3828f == aVar.f3828f && i.c(this.f3827e, aVar.f3827e) && this.f3830h == aVar.f3830h && i.c(this.f3829g, aVar.f3829g) && this.p == aVar.p && i.c(this.o, aVar.o) && this.f3831i == aVar.f3831i && this.f3832j == aVar.f3832j && this.f3833k == aVar.f3833k && this.f3835m == aVar.f3835m && this.n == aVar.n && this.w == aVar.w && this.x == aVar.x && this.f3825c.equals(aVar.f3825c) && this.f3826d == aVar.f3826d && this.q.equals(aVar.q) && this.r.equals(aVar.r) && this.s.equals(aVar.s) && i.c(this.f3834l, aVar.f3834l) && i.c(this.u, aVar.u);
        }
        return false;
    }

    @NonNull
    @CheckResult
    public T f(@NonNull k kVar) {
        if (this.v) {
            return (T) clone().f(kVar);
        }
        c.a.a.b.g.h.s(kVar, "Argument must not be null");
        this.f3825c = kVar;
        this.a |= 4;
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T g(@NonNull m mVar) {
        f.d.a.o.g gVar = m.f3759f;
        c.a.a.b.g.h.s(mVar, "Argument must not be null");
        return t(gVar, mVar);
    }

    @NonNull
    @CheckResult
    public T h() {
        T y = y(m.a, new r());
        y.y = true;
        return y;
    }

    public int hashCode() {
        return i.j(this.u, i.j(this.f3834l, i.j(this.s, i.j(this.r, i.j(this.q, i.j(this.f3826d, i.j(this.f3825c, (((((((((((((i.j(this.o, (i.j(this.f3829g, (i.j(this.f3827e, (i.h(this.b) * 31) + this.f3828f) * 31) + this.f3830h) * 31) + this.p) * 31) + (this.f3831i ? 1 : 0)) * 31) + this.f3832j) * 31) + this.f3833k) * 31) + (this.f3835m ? 1 : 0)) * 31) + (this.n ? 1 : 0)) * 31) + (this.w ? 1 : 0)) * 31) + (this.x ? 1 : 0))))))));
    }

    @NonNull
    @CheckResult
    public T i(@NonNull f.d.a.o.b bVar) {
        c.a.a.b.g.h.s(bVar, "Argument must not be null");
        return (T) t(n.f3762f, bVar).t(f.d.a.o.p.g.h.a, bVar);
    }

    @NonNull
    public T k() {
        this.t = true;
        return this;
    }

    @NonNull
    @CheckResult
    public T l() {
        return o(m.f3756c, new f.d.a.o.p.c.i());
    }

    @NonNull
    @CheckResult
    public T m() {
        T o = o(m.b, new j());
        o.y = true;
        return o;
    }

    @NonNull
    @CheckResult
    public T n() {
        T o = o(m.a, new r());
        o.y = true;
        return o;
    }

    @NonNull
    public final T o(@NonNull m mVar, @NonNull l<Bitmap> lVar) {
        if (this.v) {
            return (T) clone().o(mVar, lVar);
        }
        g(mVar);
        return x(lVar, false);
    }

    @NonNull
    @CheckResult
    public T p(int i2, int i3) {
        if (this.v) {
            return (T) clone().p(i2, i3);
        }
        this.f3833k = i2;
        this.f3832j = i3;
        this.a |= 512;
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T q(@DrawableRes int i2) {
        if (this.v) {
            return (T) clone().q(i2);
        }
        this.f3830h = i2;
        int i3 = this.a | 128;
        this.a = i3;
        this.f3829g = null;
        this.a = i3 & (-65);
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T r(@NonNull f.d.a.f fVar) {
        if (this.v) {
            return (T) clone().r(fVar);
        }
        c.a.a.b.g.h.s(fVar, "Argument must not be null");
        this.f3826d = fVar;
        this.a |= 8;
        s();
        return this;
    }

    @NonNull
    public final T s() {
        if (this.t) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return this;
    }

    @NonNull
    @CheckResult
    public <Y> T t(@NonNull f.d.a.o.g<Y> gVar, @NonNull Y y) {
        if (this.v) {
            return (T) clone().t(gVar, y);
        }
        c.a.a.b.g.h.s(gVar, "Argument must not be null");
        c.a.a.b.g.h.s(y, "Argument must not be null");
        this.q.b.put(gVar, y);
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T u(@NonNull f.d.a.o.f fVar) {
        if (this.v) {
            return (T) clone().u(fVar);
        }
        c.a.a.b.g.h.s(fVar, "Argument must not be null");
        this.f3834l = fVar;
        this.a |= 1024;
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T v(boolean z) {
        if (this.v) {
            return (T) clone().v(true);
        }
        this.f3831i = !z;
        this.a |= 256;
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public T w(@NonNull l<Bitmap> lVar) {
        return x(lVar, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public T x(@NonNull l<Bitmap> lVar, boolean z) {
        if (this.v) {
            return (T) clone().x(lVar, z);
        }
        p pVar = new p(lVar, z);
        z(Bitmap.class, lVar, z);
        z(Drawable.class, pVar, z);
        z(BitmapDrawable.class, pVar, z);
        z(GifDrawable.class, new f.d.a.o.p.g.e(lVar), z);
        s();
        return this;
    }

    @NonNull
    @CheckResult
    public final T y(@NonNull m mVar, @NonNull l<Bitmap> lVar) {
        if (this.v) {
            return (T) clone().y(mVar, lVar);
        }
        g(mVar);
        return w(lVar);
    }

    @NonNull
    public <Y> T z(@NonNull Class<Y> cls, @NonNull l<Y> lVar, boolean z) {
        if (this.v) {
            return (T) clone().z(cls, lVar, z);
        }
        c.a.a.b.g.h.s(cls, "Argument must not be null");
        c.a.a.b.g.h.s(lVar, "Argument must not be null");
        this.r.put(cls, lVar);
        int i2 = this.a | 2048;
        this.a = i2;
        this.n = true;
        int i3 = i2 | 65536;
        this.a = i3;
        this.y = false;
        if (z) {
            this.a = i3 | 131072;
            this.f3835m = true;
        }
        s();
        return this;
    }
}
