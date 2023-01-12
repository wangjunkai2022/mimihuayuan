package f.i.a.a;

import androidx.annotation.Nullable;

/* compiled from: ExoPlaybackException.java */
/* loaded from: classes.dex */
public final class w extends Exception {
    public final int a;
    @Nullable
    public final Throwable b;

    public w(int i2, Throwable th, int i3) {
        super(th);
        this.a = i2;
        this.b = th;
    }

    public static w a(Exception exc, int i2) {
        return new w(1, exc, i2);
    }
}
