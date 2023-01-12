package f.i.a.a.m1;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* compiled from: SystemClock.java */
/* loaded from: classes.dex */
public final class b0 implements h {
    @Override // f.i.a.a.m1.h
    public long a() {
        return SystemClock.uptimeMillis();
    }

    @Override // f.i.a.a.m1.h
    public c0 b(Looper looper, @Nullable Handler.Callback callback) {
        return new c0(new Handler(looper, callback));
    }

    @Override // f.i.a.a.m1.h
    public long c() {
        return SystemClock.elapsedRealtime();
    }
}
