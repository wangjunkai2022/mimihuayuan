package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey.java */
/* loaded from: classes.dex */
public class o implements f.d.a.o.f {
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3610c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3611d;

    /* renamed from: e  reason: collision with root package name */
    public final Class<?> f3612e;

    /* renamed from: f  reason: collision with root package name */
    public final Class<?> f3613f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.o.f f3614g;

    /* renamed from: h  reason: collision with root package name */
    public final Map<Class<?>, f.d.a.o.l<?>> f3615h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.h f3616i;

    /* renamed from: j  reason: collision with root package name */
    public int f3617j;

    public o(Object obj, f.d.a.o.f fVar, int i2, int i3, Map<Class<?>, f.d.a.o.l<?>> map, Class<?> cls, Class<?> cls2, f.d.a.o.h hVar) {
        c.a.a.b.g.h.s(obj, "Argument must not be null");
        this.b = obj;
        c.a.a.b.g.h.s(fVar, "Signature must not be null");
        this.f3614g = fVar;
        this.f3610c = i2;
        this.f3611d = i3;
        c.a.a.b.g.h.s(map, "Argument must not be null");
        this.f3615h = map;
        c.a.a.b.g.h.s(cls, "Resource class must not be null");
        this.f3612e = cls;
        c.a.a.b.g.h.s(cls2, "Transcode class must not be null");
        this.f3613f = cls2;
        c.a.a.b.g.h.s(hVar, "Argument must not be null");
        this.f3616i = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.b.equals(oVar.b) && this.f3614g.equals(oVar.f3614g) && this.f3611d == oVar.f3611d && this.f3610c == oVar.f3610c && this.f3615h.equals(oVar.f3615h) && this.f3612e.equals(oVar.f3612e) && this.f3613f.equals(oVar.f3613f) && this.f3616i.equals(oVar.f3616i);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        if (this.f3617j == 0) {
            int hashCode = this.b.hashCode();
            this.f3617j = hashCode;
            int hashCode2 = this.f3614g.hashCode() + (hashCode * 31);
            this.f3617j = hashCode2;
            int i2 = (hashCode2 * 31) + this.f3610c;
            this.f3617j = i2;
            int i3 = (i2 * 31) + this.f3611d;
            this.f3617j = i3;
            int hashCode3 = this.f3615h.hashCode() + (i3 * 31);
            this.f3617j = hashCode3;
            int hashCode4 = this.f3612e.hashCode() + (hashCode3 * 31);
            this.f3617j = hashCode4;
            int hashCode5 = this.f3613f.hashCode() + (hashCode4 * 31);
            this.f3617j = hashCode5;
            this.f3617j = this.f3616i.hashCode() + (hashCode5 * 31);
        }
        return this.f3617j;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("EngineKey{model=");
        o.append(this.b);
        o.append(", width=");
        o.append(this.f3610c);
        o.append(", height=");
        o.append(this.f3611d);
        o.append(", resourceClass=");
        o.append(this.f3612e);
        o.append(", transcodeClass=");
        o.append(this.f3613f);
        o.append(", signature=");
        o.append(this.f3614g);
        o.append(", hashCode=");
        o.append(this.f3617j);
        o.append(", transformations=");
        o.append(this.f3615h);
        o.append(", options=");
        o.append(this.f3616i);
        o.append('}');
        return o.toString();
    }
}
