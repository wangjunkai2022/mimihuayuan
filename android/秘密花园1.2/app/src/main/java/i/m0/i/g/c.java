package i.m0.i.g;

import i.c0;
import i.m0.i.b;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* compiled from: ConscryptSocketAdapter.kt */
/* loaded from: classes.dex */
public final class c implements e {
    public static final c a = new c();

    @Override // i.m0.i.g.e
    public String a(SSLSocket sSLSocket) {
        if (b(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }

    @Override // i.m0.i.g.e
    public boolean b(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // i.m0.i.g.e
    public boolean c() {
        b.a aVar = i.m0.i.b.f6803f;
        return i.m0.i.b.f6802e;
    }

    @Override // i.m0.i.g.e
    public void d(SSLSocket sSLSocket, String str, List<? extends c0> list) {
        if (b(sSLSocket)) {
            if (str != null) {
                Conscrypt.setUseSessionTickets(sSLSocket, true);
                Conscrypt.setHostname(sSLSocket, str);
            }
            Object[] array = ((ArrayList) i.m0.i.f.f6816c.a(list)).toArray(new String[0]);
            if (array != null) {
                Conscrypt.setApplicationProtocols(sSLSocket, (String[]) array);
                return;
            }
            throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }
}
