package i;

import c.a.a.b.g.h;
import com.tencent.smtt.sdk.TbsVideoCacheTask;
import h.c;
import h.o.c.g;
import h.s.d;
import i.m0.b;
import i.m0.e.f;
import i.w;
import i.x;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Request.kt */
/* loaded from: classes.dex */
public final class e0 {
    public e a;
    public final x b;

    /* renamed from: c  reason: collision with root package name */
    public final String f6432c;

    /* renamed from: d  reason: collision with root package name */
    public final w f6433d;

    /* renamed from: e  reason: collision with root package name */
    public final g0 f6434e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<Class<?>, Object> f6435f;

    public e0(x xVar, String str, w wVar, g0 g0Var, Map<Class<?>, ? extends Object> map) {
        if (xVar == null) {
            g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        } else if (str == null) {
            g.f("method");
            throw null;
        } else if (wVar == null) {
            g.f("headers");
            throw null;
        } else if (map != null) {
            this.b = xVar;
            this.f6432c = str;
            this.f6433d = wVar;
            this.f6434e = g0Var;
            this.f6435f = map;
        } else {
            g.f("tags");
            throw null;
        }
    }

    public final e a() {
        e eVar = this.a;
        if (eVar != null) {
            return eVar;
        }
        e b = e.n.b(this.f6433d);
        this.a = b;
        return b;
    }

    public final String b(String str) {
        return this.f6433d.b(str);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Request{method=");
        o.append(this.f6432c);
        o.append(", url=");
        o.append(this.b);
        if (this.f6433d.size() != 0) {
            o.append(", headers=[");
            int i2 = 0;
            for (c<? extends String, ? extends String> cVar : this.f6433d) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    c<? extends String, ? extends String> cVar2 = cVar;
                    String str = (String) cVar2.a;
                    String str2 = (String) cVar2.b;
                    if (i2 > 0) {
                        o.append(", ");
                    }
                    o.append(str);
                    o.append(':');
                    o.append(str2);
                    i2 = i3;
                } else {
                    h.q1();
                    throw null;
                }
            }
            o.append(']');
        }
        if (!this.f6435f.isEmpty()) {
            o.append(", tags=");
            o.append(this.f6435f);
        }
        o.append('}');
        String sb = o.toString();
        g.b(sb, "StringBuilder().apply(builderAction).toString()");
        return sb;
    }

    /* compiled from: Request.kt */
    /* loaded from: classes.dex */
    public static class a {
        public x a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public w.a f6436c;

        /* renamed from: d  reason: collision with root package name */
        public g0 f6437d;

        /* renamed from: e  reason: collision with root package name */
        public Map<Class<?>, Object> f6438e;

        public a() {
            this.f6438e = new LinkedHashMap();
            this.b = "GET";
            this.f6436c = new w.a();
        }

        public a a(String str, String str2) {
            if (str == null) {
                g.f("name");
                throw null;
            } else if (str2 != null) {
                this.f6436c.a(str, str2);
                return this;
            } else {
                g.f("value");
                throw null;
            }
        }

        public e0 b() {
            x xVar = this.a;
            if (xVar != null) {
                return new e0(xVar, this.b, this.f6436c.d(), this.f6437d, b.E(this.f6438e));
            }
            throw new IllegalStateException("url == null".toString());
        }

        public a c(String str, String str2) {
            if (str == null) {
                g.f("name");
                throw null;
            } else if (str2 != null) {
                this.f6436c.g(str, str2);
                return this;
            } else {
                g.f("value");
                throw null;
            }
        }

        public a d(w wVar) {
            if (wVar != null) {
                this.f6436c = wVar.d();
                return this;
            }
            g.f("headers");
            throw null;
        }

        public a e(String str, g0 g0Var) {
            if (str != null) {
                boolean z = false;
                if (str.length() > 0) {
                    if (g0Var == null) {
                        if (g.a(str, "POST") || g.a(str, "PUT") || g.a(str, "PATCH") || g.a(str, "PROPPATCH") || g.a(str, "REPORT")) {
                            z = true;
                        }
                        if (!(!z)) {
                            throw new IllegalArgumentException(f.b.a.a.a.g("method ", str, " must have a request body.").toString());
                        }
                    } else if (!f.a(str)) {
                        throw new IllegalArgumentException(f.b.a.a.a.g("method ", str, " must not have a request body.").toString());
                    }
                    this.b = str;
                    this.f6437d = g0Var;
                    return this;
                }
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            g.f("method");
            throw null;
        }

        public a f(g0 g0Var) {
            e("POST", g0Var);
            return this;
        }

        public a g(String str) {
            this.f6436c.f(str);
            return this;
        }

        public <T> a h(Class<? super T> cls, T t) {
            if (cls != null) {
                if (t == null) {
                    this.f6438e.remove(cls);
                } else {
                    if (this.f6438e.isEmpty()) {
                        this.f6438e = new LinkedHashMap();
                    }
                    Map<Class<?>, Object> map = this.f6438e;
                    Object cast = cls.cast(t);
                    if (cast != null) {
                        map.put(cls, cast);
                    } else {
                        g.e();
                        throw null;
                    }
                }
                return this;
            }
            g.f("type");
            throw null;
        }

        public a i(String str) {
            if (str != null) {
                if (d.u(str, "ws:", true)) {
                    StringBuilder o = f.b.a.a.a.o("http:");
                    String substring = str.substring(3);
                    g.b(substring, "(this as java.lang.String).substring(startIndex)");
                    o.append(substring);
                    str = o.toString();
                } else if (d.u(str, "wss:", true)) {
                    StringBuilder o2 = f.b.a.a.a.o("https:");
                    String substring2 = str.substring(4);
                    g.b(substring2, "(this as java.lang.String).substring(startIndex)");
                    o2.append(substring2);
                    str = o2.toString();
                }
                if (str != null) {
                    x.a aVar = new x.a();
                    aVar.f(null, str);
                    this.a = aVar.b();
                    return this;
                }
                g.f("$this$toHttpUrl");
                throw null;
            }
            g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }

        public a j(x xVar) {
            if (xVar != null) {
                this.a = xVar;
                return this;
            }
            g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }

        public a(e0 e0Var) {
            LinkedHashMap linkedHashMap;
            this.f6438e = new LinkedHashMap();
            this.a = e0Var.b;
            this.b = e0Var.f6432c;
            this.f6437d = e0Var.f6434e;
            if (e0Var.f6435f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = e0Var.f6435f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    g.f("$this$toMutableMap");
                    throw null;
                }
            }
            this.f6438e = linkedHashMap;
            this.f6436c = e0Var.f6433d.d();
        }
    }
}
