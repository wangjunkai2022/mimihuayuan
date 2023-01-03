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
    public long f5874c;

    /* renamed from: d  reason: collision with root package name */
    public long f5875d;

    /* renamed from: e  reason: collision with root package name */
    public long f5876e;

    /* renamed from: f  reason: collision with root package name */
    public long f5877f;

    /* compiled from: AudioTimestampPoller.java */
    @TargetApi(19)
    /* loaded from: classes.dex */
    public static final class a {
        public final AudioTrack a;
        public final AudioTimestamp b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        public long f5878c;

        /* renamed from: d  reason: collision with root package name */
        public long f5879d;

        /* renamed from: e  reason: collision with root package name */
        public long f5880e;

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
            this.f5876e = 0L;
            this.f5877f = -1L;
            this.f5874c = System.nanoTime() / 1000;
            this.f5875d = 5000L;
        } else if (i2 == 1) {
            this.f5875d = 5000L;
        } else if (i2 == 2 || i2 == 3) {
            this.f5875d = 10000000L;
        } else if (i2 == 4) {
            this.f5875d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }
}
