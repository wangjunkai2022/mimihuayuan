package f.d.a.o.o;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: LazyHeaders.java */
/* loaded from: classes.dex */
public final class j implements h {
    public final Map<String, List<i>> b;

    /* renamed from: c  reason: collision with root package name */
    public volatile Map<String, String> f3730c;

    /* compiled from: LazyHeaders.java */
    /* loaded from: classes.dex */
    public static final class a {
        public static final String b;

        /* renamed from: c  reason: collision with root package name */
        public static final Map<String, List<i>> f3731c;
        public Map<String, List<i>> a = f3731c;

        static {
            String property = System.getProperty("http.agent");
            if (!TextUtils.isEmpty(property)) {
                int length = property.length();
                StringBuilder sb = new StringBuilder(property.length());
                for (int i2 = 0; i2 < length; i2++) {
                    char charAt = property.charAt(i2);
                    if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                        sb.append(charAt);
                    } else {
                        sb.append('?');
                    }
                }
                property = sb.toString();
            }
            b = property;
            HashMap hashMap = new HashMap(2);
            if (!TextUtils.isEmpty(b)) {
                hashMap.put("User-Agent", Collections.singletonList(new b(b)));
            }
            f3731c = Collections.unmodifiableMap(hashMap);
        }
    }

    /* compiled from: LazyHeaders.java */
    /* loaded from: classes.dex */
    public static final class b implements i {
        @NonNull
        public final String a;

        public b(@NonNull String str) {
            this.a = str;
        }

        @Override // f.d.a.o.o.i
        public String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                return this.a.equals(((b) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            StringBuilder o = f.b.a.a.a.o("StringHeaderFactory{value='");
            o.append(this.a);
            o.append('\'');
            o.append('}');
            return o.toString();
        }
    }

    public j(Map<String, List<i>> map) {
        this.b = Collections.unmodifiableMap(map);
    }

    @Override // f.d.a.o.o.h
    public Map<String, String> a() {
        if (this.f3730c == null) {
            synchronized (this) {
                if (this.f3730c == null) {
                    this.f3730c = Collections.unmodifiableMap(b());
                }
            }
        }
        return this.f3730c;
    }

    public final Map<String, String> b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<i>> entry : this.b.entrySet()) {
            List<i> value = entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = value.size();
            for (int i2 = 0; i2 < size; i2++) {
                String a2 = value.get(i2).a();
                if (!TextUtils.isEmpty(a2)) {
                    sb.append(a2);
                    if (i2 != value.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String sb2 = sb.toString();
            if (!TextUtils.isEmpty(sb2)) {
                hashMap.put(entry.getKey(), sb2);
            }
        }
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj instanceof j) {
            return this.b.equals(((j) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("LazyHeaders{headers=");
        o.append(this.b);
        o.append('}');
        return o.toString();
    }
}
