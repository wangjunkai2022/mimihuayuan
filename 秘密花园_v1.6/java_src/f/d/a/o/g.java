package f.d.a.o;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.security.MessageDigest;
/* compiled from: Option.java */
/* loaded from: classes.dex */
public final class g<T> {

    /* renamed from: e  reason: collision with root package name */
    public static final b<Object> f3551e = new a();
    public final T a;
    public final b<T> b;

    /* renamed from: c  reason: collision with root package name */
    public final String f3552c;

    /* renamed from: d  reason: collision with root package name */
    public volatile byte[] f3553d;

    /* compiled from: Option.java */
    /* loaded from: classes.dex */
    public class a implements b<Object> {
        @Override // f.d.a.o.g.b
        public void a(@NonNull byte[] bArr, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        }
    }

    /* compiled from: Option.java */
    /* loaded from: classes.dex */
    public interface b<T> {
        void a(@NonNull byte[] bArr, @NonNull T t, @NonNull MessageDigest messageDigest);
    }

    public g(@NonNull String str, @Nullable T t, @NonNull b<T> bVar) {
        if (!TextUtils.isEmpty(str)) {
            this.f3552c = str;
            this.a = t;
            c.a.a.b.g.h.s(bVar, "Argument must not be null");
            this.b = bVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    @NonNull
    public static <T> g<T> a(@NonNull String str, @NonNull T t) {
        return new g<>(str, t, f3551e);
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f3552c.equals(((g) obj).f3552c);
        }
        return false;
    }

    public int hashCode() {
        return this.f3552c.hashCode();
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Option{key='");
        o.append(this.f3552c);
        o.append('\'');
        o.append('}');
        return o.toString();
    }
}
