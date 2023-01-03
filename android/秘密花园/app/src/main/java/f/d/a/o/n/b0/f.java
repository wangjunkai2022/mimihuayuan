package f.d.a.o.n.b0;

/* compiled from: ByteArrayAdapter.java */
/* loaded from: classes.dex */
public final class f implements a<byte[]> {
    @Override // f.d.a.o.n.b0.a
    public String a() {
        return "ByteArrayPool";
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // f.d.a.o.n.b0.a
    public int b(byte[] bArr) {
        return bArr.length;
    }

    @Override // f.d.a.o.n.b0.a
    public int c() {
        return 1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // f.d.a.o.n.b0.a
    public byte[] newArray(int i2) {
        return new byte[i2];
    }
}
