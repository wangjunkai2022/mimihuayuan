package f.i.a.a.l1.k0;

import java.nio.ByteBuffer;

/* compiled from: ContentMetadata.java */
/* loaded from: classes.dex */
public final /* synthetic */ class o {
    public static long a(p pVar) {
        r rVar = (r) pVar;
        if (rVar.b.containsKey("exo_len")) {
            return ByteBuffer.wrap(rVar.b.get("exo_len")).getLong();
        }
        return -1L;
    }
}
