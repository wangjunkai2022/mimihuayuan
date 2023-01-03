package f.e.a.j.n.d;

import android.net.Uri;
import android.text.TextUtils;
import com.comeback.data.ui.hg.HGMovieDetailActivity;
import com.tencent.smtt.export.external.interfaces.WebResourceRequest;
import f.e.a.e;
import f.e.a.k.f;
import i.d0;
import i.e0;
import java.util.HashMap;
import java.util.Map;

/* compiled from: JumpUtils.java */
/* loaded from: classes.dex */
public class a {
    public static b b;
    public static Map<String, f.e.a.j.n.c.a> a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static int f3933c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static int f3934d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static int f3935e = 2;

    /* renamed from: f  reason: collision with root package name */
    public static int f3936f = 3;

    public static int a(WebResourceRequest webResourceRequest) {
        String uri = webResourceRequest.getUrl().toString();
        f.a();
        if (uri.contains(e.a("GAcQSwYcTxwAD1kOFAsR")) && webResourceRequest.getMethod().equals(e.a("cCc3"))) {
            return f3935e;
        }
        if (uri.contains(e.a("GQ9QEQ=="))) {
            return f3936f;
        }
        if (uri.contains(e.a("GA8MEkQRS1wEFVE=")) && webResourceRequest.getMethod().equals(e.a("cCc3"))) {
            return f3934d;
        }
        return f3933c;
    }

    public static void b(WebResourceRequest webResourceRequest) {
        f.e.a.j.n.c.a aVar = new f.e.a.j.n.c.a();
        Uri url = webResourceRequest.getUrl();
        String queryParameter = url.getQueryParameter(e.a("Wg0VLQ8="));
        aVar.f3932c = queryParameter;
        aVar.b = webResourceRequest.getRequestHeaders();
        aVar.a = url.toString();
        if (TextUtils.isEmpty(queryParameter)) {
            return;
        }
        a.put(queryParameter, aVar);
        b bVar = b;
        if (bVar != null) {
            HGMovieDetailActivity.a aVar2 = (HGMovieDetailActivity.a) bVar;
            f.e.a.j.n.c.a aVar3 = a.get(HGMovieDetailActivity.this.f1008d.f3932c);
            if (aVar3 != null) {
                HGMovieDetailActivity hGMovieDetailActivity = HGMovieDetailActivity.this;
                if (hGMovieDetailActivity != null) {
                    e0.a aVar4 = new e0.a();
                    aVar4.i(aVar3.a);
                    Map<String, String> map = aVar3.b;
                    for (String str : map.keySet()) {
                        aVar4.c(str, map.get(str));
                    }
                    ((d0) hGMovieDetailActivity.f1009e.a(aVar4.b())).W(new f.e.a.j.n.a(hGMovieDetailActivity));
                    return;
                }
                throw null;
            }
        }
    }

    public static f.e.a.j.n.c.a c(WebResourceRequest webResourceRequest) {
        f.e.a.j.n.c.a aVar = new f.e.a.j.n.c.a();
        Uri url = webResourceRequest.getUrl();
        aVar.f3932c = url.getQueryParameter(e.a("Wg0VLQ8="));
        aVar.b = webResourceRequest.getRequestHeaders();
        aVar.a = url.toString();
        return aVar;
    }
}
