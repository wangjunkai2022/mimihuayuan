package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* compiled from: ResourceCacheKey.java */
/* loaded from: classes.dex */
public final class y implements f.d.a.o.f {

    /* renamed from: j  reason: collision with root package name */
    public static final f.d.a.u.f<Class<?>, byte[]> f3718j = new f.d.a.u.f<>(50);
    public final f.d.a.o.n.b0.b b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.f f3719c;

    /* renamed from: d  reason: collision with root package name */
    public final f.d.a.o.f f3720d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3721e;

    /* renamed from: f  reason: collision with root package name */
    public final int f3722f;

    /* renamed from: g  reason: collision with root package name */
    public final Class<?> f3723g;

    /* renamed from: h  reason: collision with root package name */
    public final f.d.a.o.h f3724h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.l<?> f3725i;

    public y(f.d.a.o.n.b0.b bVar, f.d.a.o.f fVar, f.d.a.o.f fVar2, int i2, int i3, f.d.a.o.l<?> lVar, Class<?> cls, f.d.a.o.h hVar) {
        this.b = bVar;
        this.f3719c = fVar;
        this.f3720d = fVar2;
        this.f3721e = i2;
        this.f3722f = i3;
        this.f3725i = lVar;
        this.f3723g = cls;
        this.f3724h = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.b.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f3721e).putInt(this.f3722f).array();
        this.f3720d.b(messageDigest);
        this.f3719c.b(messageDigest);
        messageDigest.update(bArr);
        f.d.a.o.l<?> lVar = this.f3725i;
        if (lVar != null) {
            lVar.b(messageDigest);
        }
        this.f3724h.b(messageDigest);
        byte[] a = f3718j.a(this.f3723g);
        if (a == null) {
            a = this.f3723g.getName().getBytes(f.d.a.o.f.a);
            f3718j.d(this.f3723g, a);
        }
        messageDigest.update(a);
        this.b.e(bArr);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof y) {
            y yVar = (y) obj;
            return this.f3722f == yVar.f3722f && this.f3721e == yVar.f3721e && f.d.a.u.i.c(this.f3725i, yVar.f3725i) && this.f3723g.equals(yVar.f3723g) && this.f3719c.equals(yVar.f3719c) && this.f3720d.equals(yVar.f3720d) && this.f3724h.equals(yVar.f3724h);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        int hashCode = ((((this.f3720d.hashCode() + (this.f3719c.hashCode() * 31)) * 31) + this.f3721e) * 31) + this.f3722f;
        f.d.a.o.l<?> lVar = this.f3725i;
        if (lVar != null) {
            hashCode = (hashCode * 31) + lVar.hashCode();
        }
        int hashCode2 = this.f3723g.hashCode();
        return this.f3724h.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ResourceCacheKey{sourceKey=");
        o.append(this.f3719c);
        o.append(", signature=");
        o.append(this.f3720d);
        o.append(", width=");
        o.append(this.f3721e);
        o.append(", height=");
        o.append(this.f3722f);
        o.append(", decodedResourceClass=");
        o.append(this.f3723g);
        o.append(", transformation='");
        o.append(this.f3725i);
        o.append('\'');
        o.append(", options=");
        o.append(this.f3724h);
        o.append('}');
        return o.toString();
    }
}
