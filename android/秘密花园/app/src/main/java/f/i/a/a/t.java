package f.i.a.a;

import c.a.a.b.g.h;
import com.tencent.smtt.sdk.TbsReaderView;
import com.umeng.commonsdk.framework.b;
import com.umeng.commonsdk.internal.utils.j;
import f.i.a.a.l1.q;

/* compiled from: DefaultLoadControl.java */
/* loaded from: classes.dex */
public class t {
    public final q a;

    /* renamed from: c  reason: collision with root package name */
    public final long f5771c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5772d;

    /* renamed from: k  reason: collision with root package name */
    public int f5779k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5780l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5781m;
    public final long b = q.a((long) b.s);

    /* renamed from: e  reason: collision with root package name */
    public final long f5773e = q.a((long) 2500);

    /* renamed from: f  reason: collision with root package name */
    public final long f5774f = q.a((long) TbsReaderView.ReaderCallback.GET_BAR_ANIMATING);

    /* renamed from: g  reason: collision with root package name */
    public final int f5775g = -1;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f5776h = true;

    /* renamed from: i  reason: collision with root package name */
    public final long f5777i = q.a((long) 0);

    /* renamed from: j  reason: collision with root package name */
    public final boolean f5778j = false;

    public t() {
        q qVar = new q(true, 65536);
        a(2500, 0, "bufferForPlaybackMs", "0");
        a(TbsReaderView.ReaderCallback.GET_BAR_ANIMATING, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(b.s, 2500, "minBufferAudioMs", "bufferForPlaybackMs");
        a(j.f2982m, 2500, "minBufferVideoMs", "bufferForPlaybackMs");
        a(b.s, TbsReaderView.ReaderCallback.GET_BAR_ANIMATING, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        a(j.f2982m, TbsReaderView.ReaderCallback.GET_BAR_ANIMATING, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        a(j.f2982m, b.s, "maxBufferMs", "minBufferAudioMs");
        a(j.f2982m, j.f2982m, "maxBufferMs", "minBufferVideoMs");
        a(0, 0, "backBufferDurationMs", "0");
        this.a = qVar;
        long j2 = (long) j.f2982m;
        this.f5771c = q.a(j2);
        this.f5772d = q.a(j2);
    }

    public static void a(int i2, int i3, String str, String str2) {
        boolean z = i2 >= i3;
        h.n(z, str + " cannot be less than " + str2);
    }

    public final void b(boolean z) {
        this.f5779k = 0;
        this.f5780l = false;
        if (z) {
            q qVar = this.a;
            synchronized (qVar) {
                if (qVar.a) {
                    qVar.b(0);
                }
            }
        }
    }
}
