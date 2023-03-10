package f.d.a.o.n;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
/* compiled from: DataCacheKey.java */
/* loaded from: classes.dex */
public final class e implements f.d.a.o.f {
    public final f.d.a.o.f b;

    /* renamed from: c  reason: collision with root package name */
    public final f.d.a.o.f f3626c;

    public e(f.d.a.o.f fVar, f.d.a.o.f fVar2) {
        this.b = fVar;
        this.f3626c = fVar2;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        this.b.b(messageDigest);
        this.f3626c.b(messageDigest);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.b.equals(eVar.b) && this.f3626c.equals(eVar.f3626c);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return this.f3626c.hashCode() + (this.b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("DataCacheKey{sourceKey=");
        o.append(this.b);
        o.append(", signature=");
        o.append(this.f3626c);
        o.append('}');
        return o.toString();
    }
}
