package i;

import java.util.concurrent.TimeUnit;
/* compiled from: ConnectionPool.kt */
/* loaded from: classes.dex */
public final class l {
    public final i.m0.d.i a;

    public l() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        if (timeUnit != null) {
            this.a = new i.m0.d.i(5, 5L, timeUnit);
        } else {
            h.o.c.g.f("timeUnit");
            throw null;
        }
    }
}
