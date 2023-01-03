package f.e.a.j.t.e;

import java.util.Comparator;
import java.util.Map;

/* compiled from: EncryptInterceptor.java */
/* loaded from: classes.dex */
public class c implements Comparator<Map.Entry<String, String>> {
    @Override // java.util.Comparator
    public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
        return entry.getKey().compareTo(entry2.getKey());
    }
}
