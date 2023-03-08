package f.i.a.a.y0;

/* compiled from: Buffer.java */
/* loaded from: classes.dex */
public abstract class a {
    public int a;

    public final void e(int i2) {
        this.a = i2 | this.a;
    }

    public final boolean f(int i2) {
        return (this.a & i2) == i2;
    }

    public final boolean g() {
        return f(Integer.MIN_VALUE);
    }

    public final boolean h() {
        return f(4);
    }
}
