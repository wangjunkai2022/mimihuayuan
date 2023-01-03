package i;

import androidx.core.app.NotificationCompat;
import h.o.c.g;
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
            g.f("inetSocketAddress");
            throw null;
        } else if (proxy == null) {
            g.f("proxy");
            throw null;
        }
    }

    public void b(f fVar, k kVar) {
        if (fVar == null) {
            g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        } else if (kVar == null) {
            g.f("connection");
            throw null;
        }
    }

    public void c(f fVar, IOException iOException) {
        if (fVar == null) {
            g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        }
    }

    public void d(f fVar, IOException iOException) {
        if (fVar == null) {
            g.f(NotificationCompat.CATEGORY_CALL);
            throw null;
        }
    }
}
