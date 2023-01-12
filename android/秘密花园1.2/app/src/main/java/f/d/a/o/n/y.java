package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey.java */
/* loaded from: classes.dex */
public final class y implements f.d.a.o.f {

    /* renamed from: j  reason: collision with root package name */
    public static final f.d.a.u.f<Class<?>, byte[]> f3714j = new f.d.a.u.f<>(50);
    public final f.d.a.o.n.b0.b b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.f f3715c;

    /* renamed from: d  reason: collision with root package name */
    public final f.d.a.o.f f3716d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3717e;

    /* renamed from: f  reason: collision with root package name */
    public final int f3718f;

    /* renamed from: g  reason: collision with root package name */
    public final Class<?> f3719g;

    /* renamed from: h  reason: collision with root package name */
    public final f.d.a.o.h f3720h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.l<?> f3721i;

    public y(f.d.a.o.n.b0.b bVar, f.d.a.o.f fVar, f.d.a.o.f fVar2, int i2, int i3, f.d.a.o.l<?> lVar, Class<?> cls, f.d.a.o.h hVar) {
        this.b = bVar;
        this.f3715c = fVar;
        this.f3716d = fVar2;
        this.f3717e = i2;
        this.f3718f = i3;
        this.f3721i = lVar;
        this.f3719g = cls;
        this.f3720h = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.b.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f3717e).putInt(this.f3718f).array();
        this.f3716d.b(messageDigest);
        this.f3715c.b(messageDigest);
        messageDigest.update(bArr);
        f.d.a.o.l<?> lVar = this.f3721i;
        if (lVar != null) {
            lVar.b(messageDigest);
        }
        this.f3720h.b(messageDigest);
        byte[] a = f3714j.a(this.f3719g);
        if (a == null) {
            a = this.f3719g.getName().getBytes(f.d.a.o.f.a);
            f3714j.d(this.f3719g, a);
        }
        messageDigest.update(a);
        this.b.e(bArr);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof y) {
            y yVar = (y) obj;
            return this.f3718f == yVar.f3718f && this.f3717e == yVar.f3717e && f.d.a.u.i.c(this.f3721i, yVar.f3721i) && this.f3719g.equals(yVar.f3719g) && this.f3715c.equals(yVar.f3715c) && this.f3716d.equals(yVar.f3716d) && this.f3720h.equals(yVar.f3720h);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        int hashCode = ((((this.f3716d.hashCode() + (this.f3715c.hashCode() * 31)) * 31) + this.f3717e) * 31) + this.f3718f;
        f.d.a.o.l<?> lVar = this.f3721i;
        if (lVar != null) {
            hashCode = (hashCode * 31) + lVar.hashCode();
        }
        int hashCode2 = this.f3719g.hashCode();
        return this.f3720h.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ResourceCacheKey{sourceKey=");
        o.append(this.f3715c);
        o.append(", signature=");
        o.append(this.f3716d);
        o.append(", width=");
        o.append(this.f3717e);
        o.append(", height=");
        o.append(this.f3718f);
        o.append(", decodedResourceClass=");
        o.append(this.f3719g);
        o.append(", transformation='");
        o.append(this.f3721i);
        o.append('\'');
        o.append(", options=");
        o.append(this.f3720h);
        o.append('}');
        return o.toString();
    }
}
