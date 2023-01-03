package i;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;

/* compiled from: EventListener.kt */
/* loaded from: classes.dex */
public abstract class t {
    public static final t a = new a();

    /* compiled from: EventListener.kt */
    /* loaded from: classes.dex */
    public static final class a extends t {
    }

    /* compiled from: EventListener.kt */
    /* loaded from: classes.dex */
    public interface b {
        t a(f fVar);
    }

    public void a(f fVar, InetSocketAddress inetSocketAddress, Proxy proxy) {
        if (inetSocketAddress == null) {
            h.o.c.g.f("inetSocketAddress");
            throw null;
        } else if (proxy != null) {
        } else {
            h.o.c.g.f("proxy");
            throw null;
        }
    }

    public void b(f fVar, k kVar) {
        if (fVar == null) {
            h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (kVar != null) {
        } else {
            h.o.c.g.f("connection");
            throw null;
        }
    }

    public void c(f fVar, IOException iOException) {
        if (fVar != null) {
            return;
        }
        h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
        throw null;
    }

    public void d(f fVar, IOException iOException) {
        if (fVar != null) {
            return;
        }
        h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
        throw null;
    }
}
