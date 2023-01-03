package f.i.a.a.l1.k0;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultContentMetadata.java */
/* loaded from: classes.dex */
public final class r implements p {

    /* renamed from: c  reason: collision with root package name */
    public static final r f5585c = new r(Collections.emptyMap());
    public int a;
    public final Map<String, byte[]> b;

    public r() {
        this(Collections.emptyMap());
    }

    public static boolean b(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    public r a(q qVar) {
        byte[] bArr;
        HashMap hashMap = new HashMap(this.b);
        if (qVar != null) {
            List unmodifiableList = Collections.unmodifiableList(new ArrayList(qVar.b));
            for (int i2 = 0; i2 < unmodifiableList.size(); i2++) {
                hashMap.remove(unmodifiableList.get(i2));
            }
            HashMap hashMap2 = new HashMap(qVar.a);
            for (Map.Entry entry : hashMap2.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof byte[]) {
                    byte[] bArr2 = (byte[]) value;
                    entry.setValue(Arrays.copyOf(bArr2, bArr2.length));
                }
            }
            Map unmodifiableMap = Collections.unmodifiableMap(hashMap2);
            for (String str : unmodifiableMap.keySet()) {
                Object obj = unmodifiableMap.get(str);
                if (obj instanceof Long) {
                    bArr = ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
                } else if (obj instanceof String) {
                    bArr = ((String) obj).getBytes(Charset.forName("UTF-8"));
                } else if (obj instanceof byte[]) {
                    bArr = (byte[]) obj;
                } else {
                    throw new IllegalArgumentException();
                }
                hashMap.put(str, bArr);
            }
            if (b(this.b, hashMap)) {
                return this;
            }
            return new r(hashMap);
        }
        throw null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        return b(this.b, ((r) obj).b);
    }

    public int hashCode() {
        if (this.a == 0) {
            int i2 = 0;
            for (Map.Entry<String, byte[]> entry : this.b.entrySet()) {
                i2 += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.a = i2;
        }
        return this.a;
    }

    public r(Map<String, byte[]> map) {
        this.b = Collections.unmodifiableMap(map);
    }
}
