package i.m0.g;

import h.o.c.g;
import java.io.IOException;

/* compiled from: StreamResetException.kt */
/* loaded from: classes.dex */
public final class s extends IOException {
    public final b a;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public s(b bVar) {
        super("stream was reset: " + bVar);
        if (bVar != null) {
            this.a = bVar;
            return;
        }
        g.f("errorCode");
        throw null;
    }
}
