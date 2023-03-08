package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey.java */
/* loaded from: classes.dex */
public class o implements f.d.a.o.f {
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3685c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3686d;

    /* renamed from: e  reason: collision with root package name */
    public final Class<?> f3687e;

    /* renamed from: f  reason: collision with root package name */
    public final Class<?> f3688f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.o.f f3689g;

    /* renamed from: h  reason: collision with root package name */
    public final Map<Class<?>, f.d.a.o.l<?>> f3690h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.h f3691i;

    /* renamed from: j  reason: collision with root package name */
    public int f3692j;

    public o(Object obj, f.d.a.o.f fVar, int i2, int i3, Map<Class<?>, f.d.a.o.l<?>> map, Class<?> cls, Class<?> cls2, f.d.a.o.h hVar) {
        c.a.a.b.g.h.s(obj, "Argument must not be null");
        this.b = obj;
        c.a.a.b.g.h.s(fVar, "Signature must not be null");
        this.f3689g = fVar;
        this.f3685c = i2;
        this.f3686d = i3;
        c.a.a.b.g.h.s(map, "Argument must not be null");
        this.f3690h = map;
        c.a.a.b.g.h.s(cls, "Resource class must not be null");
        this.f3687e = cls;
        c.a.a.b.g.h.s(cls2, "Transcode class must not be null");
        this.f3688f = cls2;
        c.a.a.b.g.h.s(hVar, "Argument must not be null");
        this.f3691i = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.b.equals(oVar.b) && this.f3689g.equals(oVar.f3689g) && this.f3686d == oVar.f3686d && this.f3685c == oVar.f3685c && this.f3690h.equals(oVar.f3690h) && this.f3687e.equals(oVar.f3687e) && this.f3688f.equals(oVar.f3688f) && this.f3691i.equals(oVar.f3691i);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        if (this.f3692j == 0) {
            int hashCode = this.b.hashCode();
            this.f3692j = hashCode;
            int hashCode2 = this.f3689g.hashCode() + (hashCode * 31);
            this.f3692j = hashCode2;
            int i2 = (hashCode2 * 31) + this.f3685c;
            this.f3692j = i2;
            int i3 = (i2 * 31) + this.f3686d;
            this.f3692j = i3;
            int hashCode3 = this.f3690h.hashCode() + (i3 * 31);
            this.f3692j = hashCode3;
            int hashCode4 = this.f3687e.hashCode() + (hashCode3 * 31);
            this.f3692j = hashCode4;
            int hashCode5 = this.f3688f.hashCode() + (hashCode4 * 31);
            this.f3692j = hashCode5;
            this.f3692j = this.f3691i.hashCode() + (hashCode5 * 31);
        }
        return this.f3692j;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("EngineKey{model=");
        o.append(this.b);
        o.append(", width=");
        o.append(this.f3685c);
        o.append(", height=");
        o.append(this.f3686d);
        o.append(", resourceClass=");
        o.append(this.f3687e);
        o.append(", transcodeClass=");
        o.append(this.f3688f);
        o.append(", signature=");
        o.append(this.f3689g);
        o.append(", hashCode=");
        o.append(this.f3692j);
        o.append(", transformations=");
        o.append(this.f3690h);
        o.append(", options=");
        o.append(this.f3691i);
        o.append('}');
        return o.toString();
    }
}
