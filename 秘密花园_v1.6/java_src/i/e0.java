package i;

import com.tencent.smtt.sdk.TbsVideoCacheTask;
import i.m0.b;
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
    public final String f6516c;

    /* renamed from: d  reason: collision with root package name */
    public final w f6517d;

    /* renamed from: e  reason: collision with root package name */
    public final g0 f6518e;

    /* renamed from: f  reason: collision with root package name */
    public final Map<Class<?>, Object> f6519f;

    public e0(x xVar, String str, w wVar, g0 g0Var, Map<Class<?>, ? extends Object> map) {
        if (xVar == null) {
            h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        } else if (str == null) {
            h.o.c.g.f("method");
            throw null;
        } else if (wVar == null) {
            h.o.c.g.f("headers");
            throw null;
        } else if (map == null) {
            h.o.c.g.f("tags");
            throw null;
        } else {
            this.b = xVar;
            this.f6516c = str;
            this.f6517d = wVar;
            this.f6518e = g0Var;
            this.f6519f = map;
        }
    }

    public final e a() {
        e eVar = this.a;
        if (eVar == null) {
            e b = e.n.b(this.f6517d);
            this.a = b;
            return b;
        }
        return eVar;
    }

    public final String b(String str) {
        return this.f6517d.b(str);
    }

    public String toString() {
        StringBuilder o = f.b.a.a.a.o("Request{method=");
        o.append(this.f6516c);
        o.append(", url=");
        o.append(this.b);
        if (this.f6517d.size() != 0) {
            o.append(", headers=[");
            int i2 = 0;
            for (h.c<? extends String, ? extends String> cVar : this.f6517d) {
                int i3 = i2 + 1;
                if (i2 >= 0) {
                    h.c<? extends String, ? extends String> cVar2 = cVar;
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
                    c.a.a.b.g.h.s1();
                    throw null;
                }
            }
            o.append(']');
        }
        if (!this.f6519f.isEmpty()) {
            o.append(", tags=");
            o.append(this.f6519f);
        }
        o.append('}');
        String sb = o.toString();
        h.o.c.g.b(sb, "StringBuilder().apply(builderAction).toString()");
        return sb;
    }

    /* compiled from: Request.kt */
    /* loaded from: classes.dex */
    public static class a {
        public x a;
        public String b;

        /* renamed from: c  reason: collision with root package name */
        public w.a f6520c;

        /* renamed from: d  reason: collision with root package name */
        public g0 f6521d;

        /* renamed from: e  reason: collision with root package name */
        public Map<Class<?>, Object> f6522e;

        public a() {
            this.f6522e = new LinkedHashMap();
            this.b = "GET";
            this.f6520c = new w.a();
        }

        public a a(String str, String str2) {
            if (str == null) {
                h.o.c.g.f("name");
                throw null;
            } else if (str2 != null) {
                this.f6520c.a(str, str2);
                return this;
            } else {
                h.o.c.g.f("value");
                throw null;
            }
        }

        public e0 b() {
            x xVar = this.a;
            if (xVar != null) {
                return new e0(xVar, this.b, this.f6520c.d(), this.f6521d, b.E(this.f6522e));
            }
            throw new IllegalStateException("url == null".toString());
        }

        public a c(String str, String str2) {
            if (str == null) {
                h.o.c.g.f("name");
                throw null;
            } else if (str2 != null) {
                this.f6520c.g(str, str2);
                return this;
            } else {
                h.o.c.g.f("value");
                throw null;
            }
        }

        public a d(w wVar) {
            if (wVar != null) {
                this.f6520c = wVar.d();
                return this;
            }
            h.o.c.g.f("headers");
            throw null;
        }

        public a e(String str, g0 g0Var) {
            if (str != null) {
                boolean z = false;
                if (str.length() > 0) {
                    if (g0Var == null) {
                        if (!(!((h.o.c.g.a(str, "POST") || h.o.c.g.a(str, "PUT") || h.o.c.g.a(str, "PATCH") || h.o.c.g.a(str, "PROPPATCH") || h.o.c.g.a(str, "REPORT")) ? true : true))) {
                            throw new IllegalArgumentException(f.b.a.a.a.g("method ", str, " must have a request body.").toString());
                        }
                    } else if (!i.m0.e.f.a(str)) {
                        throw new IllegalArgumentException(f.b.a.a.a.g("method ", str, " must not have a request body.").toString());
                    }
                    this.b = str;
                    this.f6521d = g0Var;
                    return this;
                }
                throw new IllegalArgumentException("method.isEmpty() == true".toString());
            }
            h.o.c.g.f("method");
            throw null;
        }

        public a f(g0 g0Var) {
            e("POST", g0Var);
            return this;
        }

        public a g(String str) {
            this.f6520c.f(str);
            return this;
        }

        public <T> a h(Class<? super T> cls, T t) {
            if (cls == null) {
                h.o.c.g.f("type");
                throw null;
            }
            if (t == null) {
                this.f6522e.remove(cls);
            } else {
                if (this.f6522e.isEmpty()) {
                    this.f6522e = new LinkedHashMap();
                }
                Map<Class<?>, Object> map = this.f6522e;
                T cast = cls.cast(t);
                if (cast == null) {
                    h.o.c.g.e();
                    throw null;
                }
                map.put(cls, cast);
            }
            return this;
        }

        public a i(String str) {
            if (str != null) {
                if (h.s.d.u(str, "ws:", true)) {
                    StringBuilder o = f.b.a.a.a.o("http:");
                    String substring = str.substring(3);
                    h.o.c.g.b(substring, "(this as java.lang.String).substring(startIndex)");
                    o.append(substring);
                    str = o.toString();
                } else if (h.s.d.u(str, "wss:", true)) {
                    StringBuilder o2 = f.b.a.a.a.o("https:");
                    String substring2 = str.substring(4);
                    h.o.c.g.b(substring2, "(this as java.lang.String).substring(startIndex)");
                    o2.append(substring2);
                    str = o2.toString();
                }
                if (str != null) {
                    x.a aVar = new x.a();
                    aVar.f(null, str);
                    this.a = aVar.b();
                    return this;
                }
                h.o.c.g.f("$this$toHttpUrl");
                throw null;
            }
            h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }

        public a j(x xVar) {
            if (xVar != null) {
                this.a = xVar;
                return this;
            }
            h.o.c.g.f(TbsVideoCacheTask.KEY_VIDEO_CACHE_PARAM_URL);
            throw null;
        }

        public a(e0 e0Var) {
            LinkedHashMap linkedHashMap;
            this.f6522e = new LinkedHashMap();
            this.a = e0Var.b;
            this.b = e0Var.f6516c;
            this.f6521d = e0Var.f6518e;
            if (e0Var.f6519f.isEmpty()) {
                linkedHashMap = new LinkedHashMap();
            } else {
                Map<Class<?>, Object> map = e0Var.f6519f;
                if (map != null) {
                    linkedHashMap = new LinkedHashMap(map);
                } else {
                    h.o.c.g.f("$this$toMutableMap");
                    throw null;
                }
            }
            this.f6522e = linkedHashMap;
            this.f6520c = e0Var.f6517d.d();
        }
    }
}
