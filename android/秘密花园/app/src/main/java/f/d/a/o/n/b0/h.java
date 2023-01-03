package f.d.a.o.n.b0;

/* compiled from: IntegerArrayAdapter.java */
/* loaded from: classes.dex */
public final class h implements a<int[]> {
    @Override // f.d.a.o.n.b0.a
    public String a() {
        return "IntegerArrayPool";
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.n.b0.a
    public int b(int[] iArr) {
        return iArr.length;
    }

    @Override // f.d.a.o.n.b0.a
    public int c() {
        return 4;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.d.a.o.n.b0.a
    public int[] newArray(int i2) {
        return new int[i2];
    }
}
