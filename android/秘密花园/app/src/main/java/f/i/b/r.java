package f.i.b;

import f.i.b.c0.s;

/* compiled from: JsonObject.java */
/* loaded from: classes.dex */
public final class r extends o {
    public final s<String, o> a = new s<>();

    public void c(String str, o oVar) {
        if (oVar == null) {
            oVar = q.a;
        }
        this.a.put(str, oVar);
    }

    public void d(String str, Number number) {
        this.a.put(str, number == null ? q.a : new t((Object) number));
    }

    public void e(String str, String str2) {
        this.a.put(str, str2 == null ? q.a : new t((Object) str2));
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof r) && ((r) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
