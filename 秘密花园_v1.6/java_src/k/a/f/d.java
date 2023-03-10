package k.a.f;
/* compiled from: ParseError.java */
/* loaded from: classes2.dex */
public class d {
    public int a;
    public String b;

    public d(int i2, String str) {
        this.a = i2;
        this.b = str;
    }

    public String toString() {
        return this.a + ": " + this.b;
    }

    public d(int i2, String str, Object... objArr) {
        this.b = String.format(str, objArr);
        this.a = i2;
    }
}
