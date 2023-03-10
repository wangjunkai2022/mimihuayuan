package j;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Okio.kt */
/* loaded from: classes.dex */
public final class z extends c {

    /* renamed from: l  reason: collision with root package name */
    public final Logger f7082l = Logger.getLogger("okio.Okio");

    /* renamed from: m  reason: collision with root package name */
    public final Socket f7083m;

    public z(Socket socket) {
        this.f7083m = socket;
    }

    @Override // j.c
    public IOException l(IOException iOException) {
        SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
        if (iOException != null) {
            socketTimeoutException.initCause(iOException);
        }
        return socketTimeoutException;
    }

    @Override // j.c
    public void m() {
        try {
            this.f7083m.close();
        } catch (AssertionError e2) {
            if (b.l(e2)) {
                Logger logger = this.f7082l;
                Level level = Level.WARNING;
                StringBuilder o = f.b.a.a.a.o("Failed to close timed out socket ");
                o.append(this.f7083m);
                logger.log(level, o.toString(), (Throwable) e2);
                return;
            }
            throw e2;
        } catch (Exception e3) {
            Logger logger2 = this.f7082l;
            Level level2 = Level.WARNING;
            StringBuilder o2 = f.b.a.a.a.o("Failed to close timed out socket ");
            o2.append(this.f7083m);
            logger2.log(level2, o2.toString(), (Throwable) e3);
        }
    }
}
