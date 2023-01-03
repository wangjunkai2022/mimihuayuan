package f.i.b;

import f.i.b.c0.a0.b;
import f.i.b.c0.a0.d;
import f.i.b.c0.a0.h;
import f.i.b.c0.a0.k;
import f.i.b.c0.a0.l;
import f.i.b.c0.a0.p;
import f.i.b.c0.a0.q;
import f.i.b.c0.g;
import f.i.b.c0.o;
import f.i.b.c0.u;
import f.i.b.e0.c;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: Gson.java */
/* loaded from: classes.dex */
public final class j {

    /* renamed from: k  reason: collision with root package name */
    public static final f.i.b.d0.a<?> f6098k = new f.i.b.d0.a<>(Object.class);

    /* renamed from: c  reason: collision with root package name */
    public final g f6099c;

    /* renamed from: d  reason: collision with root package name */
    public final d f6100d;

    /* renamed from: e  reason: collision with root package name */
    public final List<a0> f6101e;
    public final ThreadLocal<Map<f.i.b.d0.a<?>, a<?>>> a = new ThreadLocal<>();
    public final Map<f.i.b.d0.a<?>, z<?>> b = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6102f = false;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6103g = false;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6104h = true;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6105i = false;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f6106j = false;

    /* compiled from: Gson.java */
    /* loaded from: classes.dex */
    public static class a<T> extends z<T> {
        public z<T> a;

        @Override // f.i.b.z
        public T a(f.i.b.e0.a aVar) throws IOException {
            z<T> zVar = this.a;
            if (zVar != null) {
                return zVar.a(aVar);
            }
            throw new IllegalStateException();
        }

        @Override // f.i.b.z
        public void b(c cVar, T t) throws IOException {
            z<T> zVar = this.a;
            if (zVar != null) {
                zVar.b(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public j() {
        z zVar;
        o oVar = o.f6046f;
        c cVar = c.IDENTITY;
        Map emptyMap = Collections.emptyMap();
        x xVar = x.DEFAULT;
        Collections.emptyList();
        Collections.emptyList();
        List emptyList = Collections.emptyList();
        this.f6099c = new g(emptyMap);
        ArrayList arrayList = new ArrayList();
        arrayList.add(f.i.b.c0.a0.o.Y);
        arrayList.add(h.b);
        arrayList.add(oVar);
        arrayList.addAll(emptyList);
        arrayList.add(f.i.b.c0.a0.o.D);
        arrayList.add(f.i.b.c0.a0.o.f6040m);
        arrayList.add(f.i.b.c0.a0.o.f6034g);
        arrayList.add(f.i.b.c0.a0.o.f6036i);
        arrayList.add(f.i.b.c0.a0.o.f6038k);
        if (xVar == x.DEFAULT) {
            zVar = f.i.b.c0.a0.o.t;
        } else {
            zVar = new g();
        }
        arrayList.add(new q(Long.TYPE, Long.class, zVar));
        arrayList.add(new q(Double.TYPE, Double.class, new e(this)));
        arrayList.add(new q(Float.TYPE, Float.class, new f(this)));
        arrayList.add(f.i.b.c0.a0.o.x);
        arrayList.add(f.i.b.c0.a0.o.o);
        arrayList.add(f.i.b.c0.a0.o.q);
        arrayList.add(new p(AtomicLong.class, new y(new h(zVar))));
        arrayList.add(new p(AtomicLongArray.class, new y(new i(zVar))));
        arrayList.add(f.i.b.c0.a0.o.s);
        arrayList.add(f.i.b.c0.a0.o.z);
        arrayList.add(f.i.b.c0.a0.o.F);
        arrayList.add(f.i.b.c0.a0.o.H);
        arrayList.add(new p(BigDecimal.class, f.i.b.c0.a0.o.B));
        arrayList.add(new p(BigInteger.class, f.i.b.c0.a0.o.C));
        arrayList.add(f.i.b.c0.a0.o.J);
        arrayList.add(f.i.b.c0.a0.o.L);
        arrayList.add(f.i.b.c0.a0.o.P);
        arrayList.add(f.i.b.c0.a0.o.R);
        arrayList.add(f.i.b.c0.a0.o.W);
        arrayList.add(f.i.b.c0.a0.o.N);
        arrayList.add(f.i.b.c0.a0.o.f6031d);
        arrayList.add(f.i.b.c0.a0.c.b);
        arrayList.add(f.i.b.c0.a0.o.U);
        arrayList.add(l.b);
        arrayList.add(k.b);
        arrayList.add(f.i.b.c0.a0.o.S);
        arrayList.add(f.i.b.c0.a0.a.f6009c);
        arrayList.add(f.i.b.c0.a0.o.b);
        arrayList.add(new b(this.f6099c));
        arrayList.add(new f.i.b.c0.a0.g(this.f6099c, false));
        d dVar = new d(this.f6099c);
        this.f6100d = dVar;
        arrayList.add(dVar);
        arrayList.add(f.i.b.c0.a0.o.Z);
        arrayList.add(new f.i.b.c0.a0.j(this.f6099c, cVar, oVar, this.f6100d));
        this.f6101e = Collections.unmodifiableList(arrayList);
    }

    public static void a(Object obj, f.i.b.e0.a aVar) {
        if (obj != null) {
            try {
                if (aVar.V() != f.i.b.e0.b.END_DOCUMENT) {
                    throw new p("JSON document was not fully consumed.");
                }
            } catch (f.i.b.e0.d e2) {
                throw new w(e2);
            } catch (IOException e3) {
                throw new p(e3);
            }
        }
    }

    public static void b(double d2) {
        if (Double.isNaN(d2) || Double.isInfinite(d2)) {
            throw new IllegalArgumentException(d2 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public <T> T c(f.i.b.e0.a aVar, Type type) throws p, w {
        boolean z;
        try {
            z = aVar.b;
            boolean z2 = true;
            aVar.b = true;
            try {
                try {
                    aVar.V();
                    z2 = false;
                    T a2 = f(new f.i.b.d0.a<>(type)).a(aVar);
                    aVar.b = z;
                    return a2;
                } catch (AssertionError e2) {
                    throw new AssertionError("AssertionError (GSON 2.8.5): " + e2.getMessage(), e2);
                } catch (IllegalStateException e3) {
                    throw new w(e3);
                }
            } catch (EOFException e4) {
                if (z2) {
                    aVar.b = z;
                    return null;
                }
                throw new w(e4);
            } catch (IOException e5) {
                throw new w(e5);
            }
        } catch (Throwable th) {
            aVar.b = z;
            throw th;
        }
    }

    public <T> T d(String str, Class<T> cls) throws w {
        return (T) u.a(cls).cast(e(str, cls));
    }

    public <T> T e(String str, Type type) throws w {
        if (str == null) {
            return null;
        }
        f.i.b.e0.a h2 = h(new StringReader(str));
        T t = (T) c(h2, type);
        a(t, h2);
        return t;
    }

    public <T> z<T> f(f.i.b.d0.a<T> aVar) {
        z<T> zVar = (z<T>) this.b.get(aVar);
        if (zVar != null) {
            return zVar;
        }
        Map<f.i.b.d0.a<?>, a<?>> map = this.a.get();
        boolean z = false;
        if (map == null) {
            map = new HashMap<>();
            this.a.set(map);
            z = true;
        }
        a<?> aVar2 = map.get(aVar);
        if (aVar2 != null) {
            return aVar2;
        }
        try {
            a<?> aVar3 = new a<>();
            map.put(aVar, aVar3);
            for (a0 a0Var : this.f6101e) {
                z<T> a2 = a0Var.a(this, aVar);
                if (a2 != null) {
                    if (aVar3.a == null) {
                        aVar3.a = a2;
                        this.b.put(aVar, a2);
                        return a2;
                    }
                    throw new AssertionError();
                }
            }
            throw new IllegalArgumentException("GSON (2.8.5) cannot handle " + aVar);
        } finally {
            map.remove(aVar);
            if (z) {
                this.a.remove();
            }
        }
    }

    public <T> z<T> g(a0 a0Var, f.i.b.d0.a<T> aVar) {
        if (!this.f6101e.contains(a0Var)) {
            a0Var = this.f6100d;
        }
        boolean z = false;
        for (a0 a0Var2 : this.f6101e) {
            if (z) {
                z<T> a2 = a0Var2.a(this, aVar);
                if (a2 != null) {
                    return a2;
                }
            } else if (a0Var2 == a0Var) {
                z = true;
            }
        }
        throw new IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public f.i.b.e0.a h(Reader reader) {
        f.i.b.e0.a aVar = new f.i.b.e0.a(reader);
        aVar.b = this.f6106j;
        return aVar;
    }

    public c i(Writer writer) throws IOException {
        if (this.f6103g) {
            writer.write(")]}'\n");
        }
        c cVar = new c(writer);
        if (this.f6105i) {
            cVar.f6092d = "  ";
            cVar.f6093e = ": ";
        }
        cVar.f6097i = this.f6102f;
        return cVar;
    }

    public String j(Object obj) {
        if (obj == null) {
            o oVar = q.a;
            StringWriter stringWriter = new StringWriter();
            try {
                k(oVar, i(stringWriter));
                return stringWriter.toString();
            } catch (IOException e2) {
                throw new p(e2);
            }
        } else {
            Type type = obj.getClass();
            StringWriter stringWriter2 = new StringWriter();
            try {
                l(obj, type, i(stringWriter2));
                return stringWriter2.toString();
            } catch (IOException e3) {
                throw new p(e3);
            }
        }
    }

    public void k(o oVar, c cVar) throws p {
        boolean z;
        boolean z2;
        boolean z3;
        try {
            z = cVar.f6094f;
            cVar.f6094f = true;
            z2 = cVar.f6095g;
            cVar.f6095g = this.f6104h;
            z3 = cVar.f6097i;
            cVar.f6097i = this.f6102f;
            try {
                f.i.b.c0.a0.o.X.b(cVar, oVar);
            } catch (IOException e2) {
                throw new p(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
            }
        } finally {
            cVar.f6094f = z;
            cVar.f6095g = z2;
            cVar.f6097i = z3;
        }
    }

    public void l(Object obj, Type type, c cVar) throws p {
        boolean z;
        boolean z2;
        boolean z3;
        try {
            z f2 = f(new f.i.b.d0.a(type));
            z = cVar.f6094f;
            cVar.f6094f = true;
            z2 = cVar.f6095g;
            cVar.f6095g = this.f6104h;
            z3 = cVar.f6097i;
            cVar.f6097i = this.f6102f;
            try {
                try {
                    f2.b(cVar, obj);
                } catch (IOException e2) {
                    throw new p(e2);
                }
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
            }
        } finally {
            cVar.f6094f = z;
            cVar.f6095g = z2;
            cVar.f6097i = z3;
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.f6102f + ",factories:" + this.f6101e + ",instanceCreators:" + this.f6099c + "}";
    }
}
