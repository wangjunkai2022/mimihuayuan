package f.d.a.u;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: LruCache.java */
/* loaded from: classes.dex */
public class f<T, Y> {
    public final Map<T, Y> a = new LinkedHashMap(100, 0.75f, true);
    public long b;

    /* renamed from: c  reason: collision with root package name */
    public long f3785c;

    public f(long j2) {
        this.b = j2;
    }

    @Nullable
    public synchronized Y a(@NonNull T t) {
        return this.a.get(t);
    }

    public int b(@Nullable Y y) {
        return 1;
    }

    public void c(@NonNull T t, @Nullable Y y) {
    }

    @Nullable
    public synchronized Y d(@NonNull T t, @Nullable Y y) {
        long b = b(y);
        if (b >= this.b) {
            c(t, y);
            return null;
        }
        if (y != null) {
            this.f3785c += b;
        }
        Y put = this.a.put(t, y);
        if (put != null) {
            this.f3785c -= b(put);
            if (!put.equals(y)) {
                c(t, put);
            }
        }
        e(this.b);
        return put;
    }

    public synchronized void e(long j2) {
        while (this.f3785c > j2) {
            Iterator<Map.Entry<T, Y>> it = this.a.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.f3785c -= b(value);
            T key = next.getKey();
            it.remove();
            c(key, value);
        }
    }
}
