package i;

import com.tencent.smtt.sdk.TbsVideoCacheTask;
import java.util.List;
/* compiled from: CookieJar.kt */
/* loaded from: classes.dex */
public interface p {
    public static final p a = new p() { // from class: i.o$a
        @Override // i.p
        public List<n> a(x xVar) {
            if (xVar != null) {
                return h.k.i.a;
            }
            h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }

        @Override // i.p
        public void b(x xVar, List<n> list) {
        }
    };

    List<n> a(x xVar);

    void b(x xVar, List<n> list);
}
