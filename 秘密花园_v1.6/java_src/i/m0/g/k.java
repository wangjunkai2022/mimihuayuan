package i.m0.g;

import com.tencent.smtt.sdk.TbsVideoCacheTask;
import i.b0;
import i.c0;
import i.e0;
import i.h0;
import i.m0.g.m;
import i.w;
import i.x;
import i.y;
import j.a0;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
/* compiled from: Http2ExchangeCodec.kt */
/* loaded from: classes.dex */
public final class k implements i.m0.e.d {

    /* renamed from: g  reason: collision with root package name */
    public static final List<String> f6767g = i.m0.b.o("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");

    /* renamed from: h  reason: collision with root package name */
    public static final List<String> f6768h = i.m0.b.o("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    public volatile m a;
    public final c0 b;

    /* renamed from: c  reason: collision with root package name */
    public volatile boolean f6769c;

    /* renamed from: d  reason: collision with root package name */
    public final i.m0.d.h f6770d;

    /* renamed from: e  reason: collision with root package name */
    public final y.a f6771e;

    /* renamed from: f  reason: collision with root package name */
    public final f f6772f;

    public k(b0 b0Var, i.m0.d.h hVar, y.a aVar, f fVar) {
        c0 c0Var = c0.H2_PRIOR_KNOWLEDGE;
        this.f6770d = hVar;
        this.f6771e = aVar;
        this.f6772f = fVar;
        this.b = b0Var.t.contains(c0Var) ? c0Var : c0.HTTP_2;
    }

    @Override // i.m0.e.d
    public void a() {
        m mVar = this.a;
        if (mVar != null) {
            ((m.a) mVar.g()).close();
        } else {
            h.o.c.g.e();
            throw null;
        }
    }

    @Override // i.m0.e.d
    public void b(e0 e0Var) {
        int i2;
        m mVar;
        if (this.a != null) {
            return;
        }
        boolean z = false;
        boolean z2 = e0Var.f6518e != null;
        w wVar = e0Var.f6517d;
        ArrayList arrayList = new ArrayList(wVar.size() + 4);
        arrayList.add(new c(c.f6707f, e0Var.f6516c));
        j.k kVar = c.f6708g;
        x xVar = e0Var.b;
        if (xVar != null) {
            String b = xVar.b();
            String d2 = xVar.d();
            if (d2 != null) {
                b = b + '?' + d2;
            }
            arrayList.add(new c(kVar, b));
            String b2 = e0Var.b("Host");
            if (b2 != null) {
                arrayList.add(new c(c.f6710i, b2));
            }
            arrayList.add(new c(c.f6709h, e0Var.b.b));
            int size = wVar.size();
            for (int i3 = 0; i3 < size; i3++) {
                String c2 = wVar.c(i3);
                Locale locale = Locale.US;
                h.o.c.g.b(locale, "Locale.US");
                if (c2 != null) {
                    String lowerCase = c2.toLowerCase(locale);
                    h.o.c.g.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    if (!f6767g.contains(lowerCase) || (h.o.c.g.a(lowerCase, "te") && h.o.c.g.a(wVar.f(i3), "trailers"))) {
                        arrayList.add(new c(lowerCase, wVar.f(i3)));
                    }
                } else {
                    throw new h.f("null cannot be cast to non-null type java.lang.String");
                }
            }
            f fVar = this.f6772f;
            boolean z3 = !z2;
            synchronized (fVar.s) {
                synchronized (fVar) {
                    if (fVar.f6733f > 1073741823) {
                        fVar.F(b.REFUSED_STREAM);
                    }
                    if (!fVar.f6734g) {
                        i2 = fVar.f6733f;
                        fVar.f6733f += 2;
                        mVar = new m(i2, fVar, z3, false, null);
                        z = (!z2 || fVar.p >= fVar.q || mVar.f6781c >= mVar.f6782d) ? true : true;
                        if (mVar.i()) {
                            fVar.f6730c.put(Integer.valueOf(i2), mVar);
                        }
                    } else {
                        throw new a();
                    }
                }
                fVar.s.E(z3, i2, arrayList);
            }
            if (z) {
                fVar.s.flush();
            }
            this.a = mVar;
            if (this.f6769c) {
                m mVar2 = this.a;
                if (mVar2 == null) {
                    h.o.c.g.e();
                    throw null;
                } else {
                    mVar2.e(b.CANCEL);
                    throw new IOException("Canceled");
                }
            }
            m mVar3 = this.a;
            if (mVar3 != null) {
                mVar3.f6787i.g(this.f6771e.b(), TimeUnit.MILLISECONDS);
                m mVar4 = this.a;
                if (mVar4 != null) {
                    mVar4.f6788j.g(this.f6771e.c(), TimeUnit.MILLISECONDS);
                    return;
                } else {
                    h.o.c.g.e();
                    throw null;
                }
            }
            h.o.c.g.e();
            throw null;
        }
        h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
        throw null;
    }

    @Override // i.m0.e.d
    public void c() {
        this.f6772f.s.flush();
    }

    @Override // i.m0.e.d
    public void cancel() {
        this.f6769c = true;
        m mVar = this.a;
        if (mVar != null) {
            mVar.e(b.CANCEL);
        }
    }

    @Override // i.m0.e.d
    public long d(h0 h0Var) {
        return i.m0.b.n(h0Var);
    }

    @Override // i.m0.e.d
    public a0 e(h0 h0Var) {
        m mVar = this.a;
        if (mVar != null) {
            return mVar.f6785g;
        }
        h.o.c.g.e();
        throw null;
    }

    @Override // i.m0.e.d
    public j.y f(e0 e0Var, long j2) {
        m mVar = this.a;
        if (mVar != null) {
            return mVar.g();
        }
        h.o.c.g.e();
        throw null;
    }

    @Override // i.m0.e.d
    public h0.a g(boolean z) {
        w wVar;
        m mVar = this.a;
        if (mVar != null) {
            synchronized (mVar) {
                mVar.f6787i.h();
                while (mVar.f6783e.isEmpty() && mVar.f6789k == null) {
                    mVar.l();
                }
                mVar.f6787i.n();
                if (!mVar.f6783e.isEmpty()) {
                    w removeFirst = mVar.f6783e.removeFirst();
                    h.o.c.g.b(removeFirst, "headersQueue.removeFirst()");
                    wVar = removeFirst;
                } else {
                    Throwable th = mVar.f6790l;
                    if (th == null) {
                        b bVar = mVar.f6789k;
                        if (bVar == null) {
                            h.o.c.g.e();
                            throw null;
                        }
                        th = new s(bVar);
                    }
                    throw th;
                }
            }
            c0 c0Var = this.b;
            if (c0Var != null) {
                ArrayList arrayList = new ArrayList(20);
                int size = wVar.size();
                i.m0.e.j jVar = null;
                for (int i2 = 0; i2 < size; i2++) {
                    String c2 = wVar.c(i2);
                    String f2 = wVar.f(i2);
                    if (h.o.c.g.a(c2, ":status")) {
                        jVar = i.m0.e.j.a("HTTP/1.1 " + f2);
                    } else if (f6768h.contains(c2)) {
                        continue;
                    } else if (c2 == null) {
                        h.o.c.g.f("name");
                        throw null;
                    } else if (f2 != null) {
                        arrayList.add(c2);
                        arrayList.add(h.s.d.y(f2).toString());
                    } else {
                        h.o.c.g.f("value");
                        throw null;
                    }
                }
                if (jVar != null) {
                    h0.a aVar = new h0.a();
                    aVar.b = c0Var;
                    aVar.f6542c = jVar.b;
                    aVar.g(jVar.f6682c);
                    Object[] array = arrayList.toArray(new String[0]);
                    if (array != null) {
                        String[] strArr = (String[]) array;
                        w.a aVar2 = new w.a();
                        List<String> list = aVar2.a;
                        if (list != null) {
                            List asList = Arrays.asList(strArr);
                            h.o.c.g.b(asList, "ArraysUtilJVM.asList(this)");
                            list.addAll(asList);
                            aVar.f6545f = aVar2;
                            if (z && aVar.f6542c == 100) {
                                return null;
                            }
                            return aVar;
                        }
                        h.o.c.g.f("$this$addAll");
                        throw null;
                    }
                    throw new h.f("null cannot be cast to non-null type kotlin.Array<T>");
                }
                throw new ProtocolException("Expected ':status' header not present");
            }
            h.o.c.g.f("protocol");
            throw null;
        }
        h.o.c.g.e();
        throw null;
    }

    @Override // i.m0.e.d
    public i.m0.d.h h() {
        return this.f6770d;
    }
}
