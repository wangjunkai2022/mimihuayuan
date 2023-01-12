package net.butterflytv.rtmp_client;

import java.io.IOException;

/* loaded from: classes.dex */
public class RtmpClient {
    public long a = 0;

    /* loaded from: classes.dex */
    public static class a extends IOException {
        public a(int i2) {
        }
    }

    static {
        System.loadLibrary("rtmp-jni");
    }

    public final native long nativeAlloc();

    public final native void nativeClose(long j2);

    public final native int nativeOpen(String str, boolean z, long j2);

    public final native int nativeRead(byte[] bArr, int i2, int i3, long j2) throws IOException;
}
