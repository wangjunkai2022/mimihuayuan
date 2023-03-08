package f.i.a.a.d1.g;

import c.a.a.b.g.h;
import f.i.a.a.d1.d;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: EventMessageDecoder.java */
/* loaded from: classes.dex */
public final class b implements f.i.a.a.d1.b {
    @Override // f.i.a.a.d1.b
    public f.i.a.a.d1.a a(d dVar) {
        ByteBuffer byteBuffer = dVar.f6030c;
        byte[] array = byteBuffer.array();
        int limit = byteBuffer.limit();
        u uVar = new u(array, limit);
        String k2 = uVar.k();
        h.t(k2);
        String k3 = uVar.k();
        h.t(k3);
        long q = uVar.q();
        uVar.q();
        return new f.i.a.a.d1.a(new a(k2, k3, h0.h0(uVar.q(), 1000L, q), uVar.q(), Arrays.copyOfRange(array, uVar.b, limit)));
    }
}
