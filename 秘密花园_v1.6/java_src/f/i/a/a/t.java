package f.i.a.a;

import com.tencent.smtt.sdk.TbsReaderView;
/* compiled from: DefaultLoadControl.java */
/* loaded from: classes.dex */
public class t {
    public final f.i.a.a.l1.q a;
    public final long b;

    /* renamed from: c  reason: collision with root package name */
    public final long f5855c;

    /* renamed from: d  reason: collision with root package name */
    public final long f5856d;

    /* renamed from: e  reason: collision with root package name */
    public final long f5857e;

    /* renamed from: f  reason: collision with root package name */
    public final long f5858f;

    /* renamed from: g  reason: collision with root package name */
    public final int f5859g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f5860h;

    /* renamed from: i  reason: collision with root package name */
    public final long f5861i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f5862j;

    /* renamed from: k  reason: collision with root package name */
    public int f5863k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f5864l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f5865m;

    public t() {
        f.i.a.a.l1.q qVar = new f.i.a.a.l1.q(true, 65536);
        a(2500, 0, "bufferForPlaybackMs", "0");
        a(TbsReaderView.ReaderCallback.GET_BAR_ANIMATING, 0, "bufferForPlaybackAfterRebufferMs", "0");
        a(com.umeng.commonsdk.framework.b.s, 2500, "minBufferAudioMs", "bufferForPlaybackMs");
        a(com.umeng.commonsdk.internal.utils.j.f3061m, 2500, "minBufferVideoMs", "bufferForPlaybackMs");
        a(com.umeng.commonsdk.framework.b.s, TbsReaderView.ReaderCallback.GET_BAR_ANIMATING, "minBufferAudioMs", "bufferForPlaybackAfterRebufferMs");
        a(com.umeng.commonsdk.internal.utils.j.f3061m, TbsReaderView.ReaderCallback.GET_BAR_ANIMATING, "minBufferVideoMs", "bufferForPlaybackAfterRebufferMs");
        a(com.umeng.commonsdk.internal.utils.j.f3061m, com.umeng.commonsdk.framework.b.s, "maxBufferMs", "minBufferAudioMs");
        a(com.umeng.commonsdk.internal.utils.j.f3061m, com.umeng.commonsdk.internal.utils.j.f3061m, "maxBufferMs", "minBufferVideoMs");
        a(0, 0, "backBufferDurationMs", "0");
        this.a = qVar;
        this.b = q.a((long) com.umeng.commonsdk.framework.b.s);
        long j2 = (long) com.umeng.commonsdk.internal.utils.j.f3061m;
        this.f5855c = q.a(j2);
        this.f5856d = q.a(j2);
        this.f5857e = q.a(2500);
        this.f5858f = q.a((long) TbsReaderView.ReaderCallback.GET_BAR_ANIMATING);
        this.f5859g = -1;
        this.f5860h = true;
        this.f5861i = q.a(0);
        this.f5862j = false;
    }

    public static void a(int i2, int i3, String str, String str2) {
        boolean z = i2 >= i3;
        c.a.a.b.g.h.n(z, str + " cannot be less than " + str2);
    }

    public final void b(boolean z) {
        this.f5863k = 0;
        this.f5864l = false;
        if (z) {
            f.i.a.a.l1.q qVar = this.a;
            synchronized (qVar) {
                if (qVar.a) {
                    qVar.b(0);
                }
            }
        }
    }
}
