package f.d.a.u;

import android.annotation.TargetApi;
import android.os.SystemClock;

/* compiled from: LogTime.java */
/* loaded from: classes.dex */
public final class e {
    public static final double a = 1.0d / Math.pow(10.0d, 6.0d);

    public static double a(long j2) {
        return ((double) (SystemClock.elapsedRealtimeNanos() - j2)) * a;
    }

    @TargetApi(17)
    public static long b() {
        return SystemClock.elapsedRealtimeNanos();
    }
}
