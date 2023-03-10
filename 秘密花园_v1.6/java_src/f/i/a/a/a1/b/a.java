package f.i.a.a.a1.b;

import android.net.Uri;
import f.i.a.a.a0;
import f.i.a.a.l1.h;
import f.i.a.a.l1.p;
import java.io.IOException;
import net.butterflytv.rtmp_client.RtmpClient;
/* compiled from: RtmpDataSource.java */
/* loaded from: classes.dex */
public final class a extends h {

    /* renamed from: e  reason: collision with root package name */
    public RtmpClient f4089e;

    /* renamed from: f  reason: collision with root package name */
    public Uri f4090f;

    static {
        a0.a("goog.exo.rtmp");
    }

    public a() {
        super(true);
    }

    @Override // f.i.a.a.l1.m
    public long b(p pVar) throws RtmpClient.a {
        g(pVar);
        RtmpClient rtmpClient = new RtmpClient();
        this.f4089e = rtmpClient;
        String uri = pVar.a.toString();
        long nativeAlloc = rtmpClient.nativeAlloc();
        rtmpClient.a = nativeAlloc;
        int nativeOpen = rtmpClient.nativeOpen(uri, false, nativeAlloc);
        if (nativeOpen == 1) {
            this.f4090f = pVar.a;
            h(pVar);
            return -1L;
        }
        rtmpClient.a = 0L;
        throw new RtmpClient.a(nativeOpen);
    }

    @Override // f.i.a.a.l1.m
    public void close() {
        if (this.f4090f != null) {
            this.f4090f = null;
            f();
        }
        RtmpClient rtmpClient = this.f4089e;
        if (rtmpClient != null) {
            rtmpClient.nativeClose(rtmpClient.a);
            this.f4089e = null;
        }
    }

    @Override // f.i.a.a.l1.m
    public Uri d() {
        return this.f4090f;
    }

    @Override // f.i.a.a.l1.m
    public int read(byte[] bArr, int i2, int i3) throws IOException {
        RtmpClient rtmpClient = this.f4089e;
        int nativeRead = rtmpClient.nativeRead(bArr, i2, i3, rtmpClient.a);
        if (nativeRead == -1) {
            return -1;
        }
        e(nativeRead);
        return nativeRead;
    }
}
