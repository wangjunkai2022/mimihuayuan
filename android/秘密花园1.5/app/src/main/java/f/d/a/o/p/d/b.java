package f.d.a.o.p.d;

import androidx.annotation.NonNull;
import c.a.a.b.g.h;
import f.d.a.o.n.w;

/* compiled from: BytesResource.java */
/* loaded from: classes.dex */
public class b implements w<byte[]> {
    public final byte[] a;

    public b(byte[] bArr) {
        h.s(bArr, "Argument must not be null");
        this.a = bArr;
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public Class<byte[]> b() {
        return byte[].class;
    }

    @Override // f.d.a.o.n.w
    public void d() {
    }

    @Override // f.d.a.o.n.w
    @NonNull
    public byte[] get() {
        return this.a;
    }

    @Override // f.d.a.o.n.w
    public int getSize() {
        return this.a.length;
    }
}
