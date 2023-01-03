package f.i.a.a.y0;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import f.i.a.a.m1.h0;

/* compiled from: CryptoInfo.java */
/* loaded from: classes.dex */
public final class b {
    public byte[] a;
    public int[] b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f5945c;

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodec.CryptoInfo f5946d;

    /* renamed from: e  reason: collision with root package name */
    public final C0083b f5947e;

    /* compiled from: CryptoInfo.java */
    @TargetApi(24)
    /* renamed from: f.i.a.a.y0.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0083b {
        public final MediaCodec.CryptoInfo a;
        public final MediaCodec.CryptoInfo.Pattern b = new MediaCodec.CryptoInfo.Pattern(0, 0);

        public C0083b(MediaCodec.CryptoInfo cryptoInfo, a aVar) {
            this.a = cryptoInfo;
        }
    }

    public b() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f5946d = cryptoInfo;
        this.f5947e = h0.a >= 24 ? new C0083b(cryptoInfo, null) : null;
    }
}
