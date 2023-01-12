package f.i.a.a.w0;

import android.annotation.TargetApi;
import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;

/* compiled from: AudioTimestampPoller.java */
/* loaded from: classes.dex */
public final class q {
    @Nullable
    public final a a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public long f5949c;

    /* renamed from: d  reason: collision with root package name */
    public long f5950d;

    /* renamed from: e  reason: collision with root package name */
    public long f5951e;

    /* renamed from: f  reason: collision with root package name */
    public long f5952f;

    /* compiled from: AudioTimestampPoller.java */
    @TargetApi(19)
    /* loaded from: classes.dex */
    public static final class a {
        public final AudioTrack a;
        public final AudioTimestamp b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        public long f5953c;

        /* renamed from: d  reason: collision with root package name */
        public long f5954d;

        /* renamed from: e  reason: collision with root package name */
        public long f5955e;

        public a(AudioTrack audioTrack) {
            this.a = audioTrack;
        }
    }

    public q(AudioTrack audioTrack) {
        if (h0.a >= 19) {
            this.a = new a(audioTrack);
            a();
            return;
        }
        this.a = null;
        b(3);
    }

    public void a() {
        if (this.a != null) {
            b(0);
        }
    }

    public final void b(int i2) {
        this.b = i2;
        if (i2 == 0) {
            this.f5951e = 0L;
            this.f5952f = -1L;
            this.f5949c = System.nanoTime() / 1000;
            this.f5950d = 5000L;
        } else if (i2 == 1) {
            this.f5950d = 5000L;
        } else if (i2 == 2 || i2 == 3) {
            this.f5950d = 10000000L;
        } else if (i2 == 4) {
            this.f5950d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }
}
