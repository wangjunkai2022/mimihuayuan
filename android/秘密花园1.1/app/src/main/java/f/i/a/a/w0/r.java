package f.i.a.a.w0;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import f.i.a.a.m1.h0;
import java.lang.reflect.Method;

/* compiled from: AudioTrackPositionTracker.java */
/* loaded from: classes.dex */
public final class r {
    public final a a;
    public final long[] b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public AudioTrack f5881c;

    /* renamed from: d  reason: collision with root package name */
    public int f5882d;

    /* renamed from: e  reason: collision with root package name */
    public int f5883e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public q f5884f;

    /* renamed from: g  reason: collision with root package name */
    public int f5885g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f5886h;

    /* renamed from: i  reason: collision with root package name */
    public long f5887i;

    /* renamed from: j  reason: collision with root package name */
    public long f5888j;

    /* renamed from: k  reason: collision with root package name */
    public long f5889k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    public Method f5890l;

    /* renamed from: m  reason: collision with root package name */
    public long f5891m;
    public boolean n;
    public boolean o;
    public long p;
    public long q;
    public long r;
    public long s;
    public int t;
    public int u;
    public long v;
    public long w;
    public long x;
    public long y;

    /* compiled from: AudioTrackPositionTracker.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(int i2, long j2);

        void b(long j2, long j3, long j4, long j5);

        void c(long j2, long j3, long j4, long j5);

        void d(long j2);
    }

    public r(a aVar) {
        this.a = aVar;
        if (h0.a >= 18) {
            try {
                this.f5890l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.b = new long[10];
    }

    public final long a(long j2) {
        return (j2 * 1000000) / this.f5885g;
    }

    public final long b() {
        AudioTrack audioTrack = this.f5881c;
        c.a.a.b.g.h.t(audioTrack);
        AudioTrack audioTrack2 = audioTrack;
        if (this.v != -9223372036854775807L) {
            return Math.min(this.y, this.x + ((((SystemClock.elapsedRealtime() * 1000) - this.v) * this.f5885g) / 1000000));
        }
        int playState = audioTrack2.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & audioTrack2.getPlaybackHeadPosition();
        if (this.f5886h) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.s = this.q;
            }
            playbackHeadPosition += this.s;
        }
        if (h0.a <= 29) {
            if (playbackHeadPosition == 0 && this.q > 0 && playState == 3) {
                if (this.w == -9223372036854775807L) {
                    this.w = SystemClock.elapsedRealtime();
                }
                return this.q;
            }
            this.w = -9223372036854775807L;
        }
        if (this.q > playbackHeadPosition) {
            this.r++;
        }
        this.q = playbackHeadPosition;
        return playbackHeadPosition + (this.r << 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean c(long r6) {
        /*
            r5 = this;
            long r0 = r5.b()
            r2 = 0
            r3 = 1
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 > 0) goto L29
            boolean r6 = r5.f5886h
            if (r6 == 0) goto L26
            android.media.AudioTrack r6 = r5.f5881c
            c.a.a.b.g.h.t(r6)
            int r6 = r6.getPlayState()
            r7 = 2
            if (r6 != r7) goto L26
            long r6 = r5.b()
            r0 = 0
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 != 0) goto L26
            r6 = 1
            goto L27
        L26:
            r6 = 0
        L27:
            if (r6 == 0) goto L2a
        L29:
            r2 = 1
        L2a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.w0.r.c(long):boolean");
    }
}
