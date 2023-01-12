package f.d.a.o.n.b0;

/* compiled from: IntegerArrayAdapter.java */
/* loaded from: classes.dex */
public final class h implements a<int[]> {
    @Override // f.d.a.o.n.b0.a
    public String a() {
        return "IntegerArrayPool";
    }

    @Override // f.d.a.o.n.b0.a
    public int b(int[] iArr) {
        return iArr.length;
    }

    @Override // f.d.a.o.n.b0.a
    public int c() {
        return 4;
    }

    @Override // f.d.a.o.n.b0.a
    public int[] newArray(int i2) {
        return new int[i2];
    }
}
