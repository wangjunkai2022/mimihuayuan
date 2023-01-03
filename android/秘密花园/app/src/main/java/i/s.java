package i;

import c.a.a.b.g.h;
import f.b.a.a.a;
import h.k.i;
import h.o.c.g;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

/* compiled from: Dns.kt */
/* loaded from: classes.dex */
public interface s {
    public static final s a = new s() { // from class: i.r$a
        @Override // i.s
        public List<InetAddress> a(String str) {
            if (str != null) {
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    g.b(allByName, "InetAddress.getAllByName(hostname)");
                    int length = allByName.length;
                    if (length == 0) {
                        return i.a;
                    }
                    if (length != 1) {
                        return h.s1(allByName);
                    }
                    return h.s0(allByName[0]);
                } catch (NullPointerException e2) {
                    UnknownHostException unknownHostException = new UnknownHostException(a.f("Broken system behaviour for dns lookup of ", str));
                    unknownHostException.initCause(e2);
                    throw unknownHostException;
                }
            } else {
                g.f("hostname");
                throw null;
            }
        }
    };

    List<InetAddress> a(String str) throws UnknownHostException;
}
