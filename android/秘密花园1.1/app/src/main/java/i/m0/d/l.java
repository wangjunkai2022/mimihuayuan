package i.m0.d;

import androidx.core.app.NotificationCompat;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import i.k0;
import i.t;
import i.x;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RouteSelector.kt */
/* loaded from: classes.dex */
public final class l {
    public List<? extends Proxy> a;
    public int b;

    /* renamed from: c  reason: collision with root package name */
    public List<? extends InetSocketAddress> f6568c;

    /* renamed from: d  reason: collision with root package name */
    public final List<k0> f6569d;

    /* renamed from: e  reason: collision with root package name */
    public final i.a f6570e;

    /* renamed from: f  reason: collision with root package name */
    public final j f6571f;

    /* renamed from: g  reason: collision with root package name */
    public final i.f f6572g;

    /* renamed from: h  reason: collision with root package name */
    public final t f6573h;

    /* compiled from: RouteSelector.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public int a;
        public final List<k0> b;

        public a(List<k0> list) {
            this.b = list;
        }

        public final boolean a() {
            return this.a < this.b.size();
        }
    }

    public l(i.a aVar, j jVar, i.f fVar, t tVar) {
        List<? extends Proxy> o;
        if (jVar != null) {
            this.f6570e = aVar;
            this.f6571f = jVar;
            this.f6572g = fVar;
            this.f6573h = tVar;
            h.k.i iVar = h.k.i.a;
            this.a = iVar;
            this.f6568c = iVar;
            this.f6569d = new ArrayList();
            i.a aVar2 = this.f6570e;
            x xVar = aVar2.a;
            Proxy proxy = aVar2.f6354j;
            t tVar2 = this.f6573h;
            i.f fVar2 = this.f6572g;
            if (tVar2 == null) {
                throw null;
            }
            if (fVar2 == null) {
                h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                throw null;
            } else if (xVar != null) {
                if (proxy != null) {
                    o = c.a.a.b.g.h.s0(proxy);
                } else {
                    List<Proxy> select = aVar2.f6355k.select(xVar.m());
                    o = (select == null || !(select.isEmpty() ^ true)) ? i.m0.b.o(Proxy.NO_PROXY) : i.m0.b.D(select);
                }
                this.a = o;
                this.b = 0;
                t tVar3 = this.f6573h;
                i.f fVar3 = this.f6572g;
                if (tVar3 == null) {
                    throw null;
                }
                if (fVar3 != null) {
                    return;
                }
                h.o.c.g.f(NotificationCompat.CATEGORY_CALL);
                throw null;
            } else {
                h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
                throw null;
            }
        }
        h.o.c.g.f("routeDatabase");
        throw null;
    }

    public final boolean a() {
        return b() || (this.f6569d.isEmpty() ^ true);
    }

    public final boolean b() {
        return this.b < this.a.size();
    }
}
