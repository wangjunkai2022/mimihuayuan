package f.d.a.u;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import f.b.a.a.a;

/* compiled from: MultiClassKey.java */
/* loaded from: classes.dex */
public class h {
    public Class<?> a;
    public Class<?> b;

    /* renamed from: c  reason: collision with root package name */
    public Class<?> f3786c;

    public h() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.a.equals(hVar.a) && this.b.equals(hVar.b) && i.c(this.f3786c, hVar.f3786c);
    }

    public int hashCode() {
        int hashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        Class<?> cls = this.f3786c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        StringBuilder o = a.o("MultiClassKey{first=");
        o.append(this.a);
        o.append(", second=");
        o.append(this.b);
        o.append('}');
        return o.toString();
    }

    public h(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.a = cls;
        this.b = cls2;
        this.f3786c = cls3;
    }
}
