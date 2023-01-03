package f.e.a.h.h;

import androidx.annotation.NonNull;
import f.e.a.e;

/* compiled from: M3U8Ts.java */
/* loaded from: classes.dex */
public class b implements Comparable<b> {
    public String a;
    public float b;

    /* renamed from: c  reason: collision with root package name */
    public String f3809c;

    public b(String str, float f2) {
        this.a = str;
        this.b = f2;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull b bVar) {
        return this.a.compareTo(bVar.a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        f.b.a.a.a.B(sb, this.a, "F0o=");
        sb.append(this.b);
        sb.append(e.a("RAcATQ=="));
        return sb.toString();
    }
}
