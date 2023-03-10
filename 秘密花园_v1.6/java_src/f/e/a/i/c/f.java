package f.e.a.i.c;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
/* compiled from: UnsafeOkHttpClient.java */
/* loaded from: classes.dex */
public final class f implements HostnameVerifier {
    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        return true;
    }
}
