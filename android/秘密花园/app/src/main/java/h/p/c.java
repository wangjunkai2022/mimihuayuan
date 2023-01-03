package h.p;

/* compiled from: Ranges.kt */
/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: d  reason: collision with root package name */
    public static final c f6337d = new c(1, 0);

    /* renamed from: e  reason: collision with root package name */
    public static final c f6338e = null;

    public c(int i2, int i3) {
        super(i2, i3, 1);
    }

    @Override // h.p.a, java.lang.Object
    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (!(this.a == cVar.a && this.b == cVar.b)) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // h.p.a, java.lang.Object
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.a * 31) + this.b;
    }

    @Override // h.p.a
    public boolean isEmpty() {
        return this.a > this.b;
    }

    @Override // h.p.a, java.lang.Object
    public String toString() {
        return this.a + ".." + this.b;
    }
}
