package f.d.a.o.n;

import androidx.annotation.NonNull;
import f.b.a.a.a;
import f.d.a.o.f;
import java.security.MessageDigest;

/* compiled from: DataCacheKey.java */
/* loaded from: classes.dex */
public final class e implements f {
    public final f b;

    /* renamed from: c  reason: collision with root package name */
    public final f f3547c;

    public e(f fVar, f fVar2) {
        this.b = fVar;
        this.f3547c = fVar2;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        this.b.b(messageDigest);
        this.f3547c.b(messageDigest);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (!this.b.equals(eVar.b) || !this.f3547c.equals(eVar.f3547c)) {
            return false;
        }
        return true;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return this.f3547c.hashCode() + (this.b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder o = a.o("DataCacheKey{sourceKey=");
        o.append(this.b);
        o.append(", signature=");
        o.append(this.f3547c);
        o.append('}');
        return o.toString();
    }
}
