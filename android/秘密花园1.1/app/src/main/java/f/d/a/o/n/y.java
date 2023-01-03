package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey.java */
/* loaded from: classes.dex */
public final class y implements f.d.a.o.f {

    /* renamed from: j  reason: collision with root package name */
    public static final f.d.a.u.f<Class<?>, byte[]> f3639j = new f.d.a.u.f<>(50);
    public final f.d.a.o.n.b0.b b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.f f3640c;

    /* renamed from: d  reason: collision with root package name */
    public final f.d.a.o.f f3641d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3642e;

    /* renamed from: f  reason: collision with root package name */
    public final int f3643f;

    /* renamed from: g  reason: collision with root package name */
    public final Class<?> f3644g;

    /* renamed from: h  reason: collision with root package name */
    public final f.d.a.o.h f3645h;

    /* renamed from: i  reason: collision with root package name */
    public final f.d.a.o.l<?> f3646i;

    public y(f.d.a.o.n.b0.b bVar, f.d.a.o.f fVar, f.d.a.o.f fVar2, int i2, int i3, f.d.a.o.l<?> lVar, Class<?> cls, f.d.a.o.h hVar) {
        this.b = bVar;
        this.f3640c = fVar;
        this.f3641d = fVar2;
        this.f3642e = i2;
        this.f3643f = i3;
        this.f3646i = lVar;
        this.f3644g = cls;
        this.f3645h = hVar;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.b.d(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f3642e).putInt(this.f3643f).array();
        this.f3641d.b(messageDigest);
        this.f3640c.b(messageDigest);
        messageDigest.update(bArr);
        f.d.a.o.l<?> lVar = this.f3646i;
        if (lVar != null) {
            lVar.b(messageDigest);
        }
        this.f3645h.b(messageDigest);
        byte[] a = f3639j.a(this.f3644g);
        if (a == null) {
            a = this.f3644g.getName().getBytes(f.d.a.o.f.a);
            f3639j.d(this.f3644g, a);
        }
        messageDigest.update(a);
        this.b.e(bArr);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof y) {
            y yVar = (y) obj;
            return this.f3643f == yVar.f3643f && this.f3642e == yVar.f3642e && f.d.a.u.i.c(this.f3646i, yVar.f3646i) && this.f3644g.equals(yVar.f3644g) && this.f3640c.equals(yVar.f3640c) && this.f3641d.equals(yVar.f3641d) && this.f3645h.equals(yVar.f3645h);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        int hashCode = ((((this.f3641d.hashCode() + (this.f3640c.hashCode() * 31)) * 31) + this.f3642e) * 31) + this.f3643f;
        f.d.a.o.l<?> lVar = this.f3646i;
        if (lVar != null) {
            hashCode = (hashCode * 31) + lVar.hashCode();
        }
        int hashCode2 = this.f3644g.hashCode();
        return this.f3645h.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ResourceCacheKey{sourceKey=");
        o.append(this.f3640c);
        o.append(", signature=");
        o.append(this.f3641d);
        o.append(", width=");
        o.append(this.f3642e);
        o.append(", height=");
        o.append(this.f3643f);
        o.append(", decodedResourceClass=");
        o.append(this.f3644g);
        o.append(", transformation='");
        o.append(this.f3646i);
        o.append('\'');
        o.append(", options=");
        o.append(this.f3645h);
        o.append('}');
        return o.toString();
    }
}
