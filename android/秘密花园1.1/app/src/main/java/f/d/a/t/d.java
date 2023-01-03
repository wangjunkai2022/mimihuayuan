package f.d.a.t;

import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.f;
import java.security.MessageDigest;

/* compiled from: ObjectKey.java */
/* loaded from: classes.dex */
public final class d implements f {
    public final Object b;

    public d(@NonNull Object obj) {
        h.s(obj, "Argument must not be null");
        this.b = obj;
    }

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(f.a));
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.b.equals(((d) obj).b);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("ObjectKey{object=");
        o.append(this.b);
        o.append('}');
        return o.toString();
    }
}
