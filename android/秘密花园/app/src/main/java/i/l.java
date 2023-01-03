package i;

import h.o.c.g;
import i.m0.d.i;
import java.util.concurrent.TimeUnit;

/* compiled from: ConnectionPool.kt */
/* loaded from: classes.dex */
public final class l {
    public final i a;

    public l() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        if (timeUnit != null) {
            this.a = new i(5, 5, timeUnit);
        } else {
            g.f("timeUnit");
            throw null;
        }
    }
}
