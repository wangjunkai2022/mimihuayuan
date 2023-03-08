package f.d.a.o.n.b0;

/* compiled from: ByteArrayAdapter.java */
/* loaded from: classes.dex */
public final class f implements a<byte[]> {
    @Override // f.d.a.o.n.b0.a
    public String a() {
        return "ByteArrayPool";
    }

    @Override // f.d.a.o.n.b0.a
    public int b(byte[] bArr) {
        return bArr.length;
    }

    @Override // f.d.a.o.n.b0.a
    public int c() {
        return 1;
    }

    @Override // f.d.a.o.n.b0.a
    public byte[] newArray(int i2) {
        return new byte[i2];
    }
}
