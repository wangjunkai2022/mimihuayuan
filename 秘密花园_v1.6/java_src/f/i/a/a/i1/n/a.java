package f.i.a.a.i1.n;

import java.util.List;
/* compiled from: DvbDecoder.java */
/* loaded from: classes.dex */
public final class a extends f.i.a.a.i1.c {
    public final b n;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        byte[] bArr = list.get(0);
        int length = bArr.length;
        int i2 = 0 + 1;
        int i3 = i2 + 1;
        this.n = new b(((bArr[0] & 255) << 8) | (bArr[i2] & 255), (bArr[i3 + 1] & 255) | ((bArr[i3] & 255) << 8));
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x0277, code lost:
        if ((r1.b + 1) == r3.f5377g.getHeight()) goto L104;
     */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0259  */
    @Override // f.i.a.a.i1.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f.i.a.a.i1.e k(byte[] r35, int r36, boolean r37) throws f.i.a.a.i1.g {
        /*
            Method dump skipped, instructions count: 1078
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.n.a.k(byte[], int, boolean):f.i.a.a.i1.e");
    }
}
