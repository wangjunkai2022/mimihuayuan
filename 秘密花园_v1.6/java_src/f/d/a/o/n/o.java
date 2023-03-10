package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Map;
/* compiled from: EngineKey.java */
/* loaded from: classes.dex */
public class o implements f.d.a.o.f {
    public final Object b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3689c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3690d;

    /* renamed from: e  reason: collision with root package name */
    public final Class<?> f3691e;

    /* renamed from: f  reason: collision with root package name */
    public final Class<?> f3692f;

    /* renamed from: g  reason: collision with root package name */
    public final f.d.a.o.f f3693g;

    /* renamed from: h  reason: collision with root package name */
    public final Map<Class<?>, f.d.a.o.l<?>> f3694h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.h f3695i;

    /* renamed from: j  reason: collision with root package name */
    public int f3696j;

    public o(Object obj, f.d.a.o.f fVar, int i2, int i3, Map<Class<?>, f.d.a.o.l<?>> map, Class<?> cls, Class<?> cls2, f.d.a.o.h hVar) {
        c.a.a.b.g.h.s(obj, "Argument must not be null");
        this.b = obj;
        c.a.a.b.g.h.s(fVar, "Signature must not be null");
        this.f3693g = fVar;
        this.f3689c = i2;
        this.f3690d = i3;
        c.a.a.b.g.h.s(map, "Argument must not be null");
        this.f3694h = map;
        c.a.a.b.g.h.s(cls, "Resource class must not be null");
        this.f3691e = cls;
        c.a.a.b.g.h.s(cls2, "Transcode class must not be null");
        this.f3692f = cls2;
        c.a.a.b.g.h.s(hVar, "Argument must not be null");
        this.f3695i = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof o) {
            o oVar = (o) obj;
            return this.b.equals(oVar.b) && this.f3693g.equals(oVar.f3693g) && this.f3690d == oVar.f3690d && this.f3689c == oVar.f3689c && this.f3694h.equals(oVar.f3694h) && this.f3691e.equals(oVar.f3691e) && this.f3692f.equals(oVar.f3692f) && this.f3695i.equals(oVar.f3695i);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        if (this.f3696j == 0) {
            int hashCode = this.b.hashCode();
            this.f3696j = hashCode;
            int hashCode2 = this.f3693g.hashCode() + (hashCode * 31);
            this.f3696j = hashCode2;
            int i2 = (hashCode2 * 31) + this.f3689c;
            this.f3696j = i2;
            int i3 = (i2 * 31) + this.f3690d;
            this.f3696j = i3;
            int hashCode3 = this.f3694h.hashCode() + (i3 * 31);
            this.f3696j = hashCode3;
            int hashCode4 = this.f3691e.hashCode() + (hashCode3 * 31);
            this.f3696j = hashCode4;
            int hashCode5 = this.f3692f.hashCode() + (hashCode4 * 31);
            this.f3696j = hashCode5;
            this.f3696j = this.f3695i.hashCode() + (hashCode5 * 31);
        }
        return this.f3696j;
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("EngineKey{model=");
        o.append(this.b);
        o.append(", width=");
        o.append(this.f3689c);
        o.append(", height=");
        o.append(this.f3690d);
        o.append(", resourceClass=");
        o.append(this.f3691e);
        o.append(", transcodeClass=");
        o.append(this.f3692f);
        o.append(", signature=");
        o.append(this.f3693g);
        o.append(", hashCode=");
        o.append(this.f3696j);
        o.append(", transformations=");
        o.append(this.f3694h);
        o.append(", options=");
        o.append(this.f3695i);
        o.append('}');
        return o.toString();
    }
}
