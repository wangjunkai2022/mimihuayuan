package i;

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
                    h.o.c.g.b(allByName, "InetAddress.getAllByName(hostname)");
                    int length = allByName.length;
                    if (length != 0) {
                        if (length != 1) {
                            return c.a.a.b.g.h.s1(allByName);
                        }
                        return c.a.a.b.g.h.s0(allByName[0]);
                    }
                    return h.k.i.a;
                } catch (NullPointerException e2) {
                    UnknownHostException unknownHostException = new UnknownHostException(f.b.a.a.a.f("Broken system behaviour for dns lookup of ", str));
                    unknownHostException.initCause(e2);
                    throw unknownHostException;
                }
            }
            h.o.c.g.f("hostname");
            throw null;
        }
    };

    List<InetAddress> a(String str) throws UnknownHostException;
}
