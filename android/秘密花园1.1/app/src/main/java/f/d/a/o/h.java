package f.d.a.o;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import f.d.a.o.g;
import java.security.MessageDigest;

/* compiled from: Options.java */
/* loaded from: classes.dex */
public final class h implements f {
    public final ArrayMap<g<?>, Object> b = new CachedHashCodeArrayMap();

    @Override // f.d.a.o.f
    public void b(@NonNull MessageDigest messageDigest) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            g<?> keyAt = this.b.keyAt(i2);
            Object valueAt = this.b.valueAt(i2);
            g.b<?> bVar = keyAt.b;
            if (keyAt.f3474d == null) {
                keyAt.f3474d = keyAt.f3473c.getBytes(f.a);
            }
            bVar.a(keyAt.f3474d, valueAt, messageDigest);
        }
    }

    @Nullable
    public <T> T c(@NonNull g<T> gVar) {
        return this.b.containsKey(gVar) ? (T) this.b.get(gVar) : gVar.a;
    }

    public void d(@NonNull h hVar) {
        this.b.putAll((SimpleArrayMap<? extends g<?>, ? extends Object>) hVar.b);
    }

    @Override // f.d.a.o.f
    public boolean equals(Object obj) {
        if (obj instanceof h) {
            return this.b.equals(((h) obj).b);
        }
        return false;
    }

    @Override // f.d.a.o.f
    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Options{values=");
        o.append(this.b);
        o.append('}');
        return o.toString();
    }
}
