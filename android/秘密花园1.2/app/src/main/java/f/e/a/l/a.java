package f.e.a.l;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements HostnameVerifier {
    public static final /* synthetic */ a a = new a();

    private /* synthetic */ a() {
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        c.a(str, sSLSession);
        return true;
    }
}
