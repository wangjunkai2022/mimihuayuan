package f.i.b;

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
    public static final f.i.b.d0.a<?> f6182k = new f.i.b.d0.a<>(Object.class);
    public final ThreadLocal<Map<f.i.b.d0.a<?>, a<?>>> a;
    public final Map<f.i.b.d0.a<?>, z<?>> b;

    /* renamed from: c  reason: collision with root package name */
    public final f.i.b.c0.g f6183c;

    /* renamed from: d  reason: collision with root package name */
    public final f.i.b.c0.a0.d f6184d;

    /* renamed from: e  reason: collision with root package name */
    public final List<a0> f6185e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6186f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6187g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f6188h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f6189i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f6190j;

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
        public void b(f.i.b.e0.c cVar, T t) throws IOException {
            z<T> zVar = this.a;
            if (zVar != null) {
                zVar.b(cVar, t);
                return;
            }
            throw new IllegalStateException();
        }
    }

    public j() {
        z gVar;
        f.i.b.c0.o oVar = f.i.b.c0.o.f6130f;
        c cVar = c.a;
        Map emptyMap = Collections.emptyMap();
        x xVar = x.a;
        Collections.emptyList();
        Collections.emptyList();
        List emptyList = Collections.emptyList();
        this.a = new ThreadLocal<>();
        this.b = new ConcurrentHashMap();
        this.f6183c = new f.i.b.c0.g(emptyMap);
        this.f6186f = false;
        this.f6187g = false;
        this.f6188h = true;
        this.f6189i = false;
        this.f6190j = false;
        ArrayList arrayList = new ArrayList();
        arrayList.add(f.i.b.c0.a0.o.Y);
        arrayList.add(f.i.b.c0.a0.h.b);
        arrayList.add(oVar);
        arrayList.addAll(emptyList);
        arrayList.add(f.i.b.c0.a0.o.D);
        arrayList.add(f.i.b.c0.a0.o.f6124m);
        arrayList.add(f.i.b.c0.a0.o.f6118g);
        arrayList.add(f.i.b.c0.a0.o.f6120i);
        arrayList.add(f.i.b.c0.a0.o.f6122k);
        if (xVar == x.a) {
            gVar = f.i.b.c0.a0.o.t;
        } else {
            gVar = new g();
        }
        arrayList.add(new f.i.b.c0.a0.q(Long.TYPE, Long.class, gVar));
        arrayList.add(new f.i.b.c0.a0.q(Double.TYPE, Double.class, new e(this)));
        arrayList.add(new f.i.b.c0.a0.q(Float.TYPE, Float.class, new f(this)));
        arrayList.add(f.i.b.c0.a0.o.x);
        arrayList.add(f.i.b.c0.a0.o.o);
        arrayList.add(f.i.b.c0.a0.o.q);
        arrayList.add(new f.i.b.c0.a0.p(AtomicLong.class, new y(new h(gVar))));
        arrayList.add(new f.i.b.c0.a0.p(AtomicLongArray.class, new y(new i(gVar))));
        arrayList.add(f.i.b.c0.a0.o.s);
        arrayList.add(f.i.b.c0.a0.o.z);
        arrayList.add(f.i.b.c0.a0.o.F);
        arrayList.add(f.i.b.c0.a0.o.H);
        arrayList.add(new f.i.b.c0.a0.p(BigDecimal.class, f.i.b.c0.a0.o.B));
        arrayList.add(new f.i.b.c0.a0.p(BigInteger.class, f.i.b.c0.a0.o.C));
        arrayList.add(f.i.b.c0.a0.o.J);
        arrayList.add(f.i.b.c0.a0.o.L);
        arrayList.add(f.i.b.c0.a0.o.P);
        arrayList.add(f.i.b.c0.a0.o.R);
        arrayList.add(f.i.b.c0.a0.o.W);
        arrayList.add(f.i.b.c0.a0.o.N);
        arrayList.add(f.i.b.c0.a0.o.f6115d);
        arrayList.add(f.i.b.c0.a0.c.b);
        arrayList.add(f.i.b.c0.a0.o.U);
        arrayList.add(f.i.b.c0.a0.l.b);
        arrayList.add(f.i.b.c0.a0.k.b);
        arrayList.add(f.i.b.c0.a0.o.S);
        arrayList.add(f.i.b.c0.a0.a.f6093c);
        arrayList.add(f.i.b.c0.a0.o.b);
        arrayList.add(new f.i.b.c0.a0.b(this.f6183c));
        arrayList.add(new f.i.b.c0.a0.g(this.f6183c, false));
        f.i.b.c0.a0.d dVar = new f.i.b.c0.a0.d(this.f6183c);
        this.f6184d = dVar;
        arrayList.add(dVar);
        arrayList.add(f.i.b.c0.a0.o.Z);
        arrayList.add(new f.i.b.c0.a0.j(this.f6183c, cVar, oVar, this.f6184d));
        this.f6185e = Collections.unmodifiableList(arrayList);
    }

    public static void a(Object obj, f.i.b.e0.a aVar) {
        if (obj != null) {
            try {
                if (aVar.V() == f.i.b.e0.b.END_DOCUMENT) {
                    return;
                }
                throw new p("JSON document was not fully consumed.");
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
        boolean z = aVar.b;
        boolean z2 = true;
        aVar.b = true;
        try {
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
        return (T) f.i.b.c0.u.a(cls).cast(e(str, cls));
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
            for (a0 a0Var : this.f6185e) {
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
        if (!this.f6185e.contains(a0Var)) {
            a0Var = this.f6184d;
        }
        boolean z = false;
        for (a0 a0Var2 : this.f6185e) {
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
        aVar.b = this.f6190j;
        return aVar;
    }

    public f.i.b.e0.c i(Writer writer) throws IOException {
        if (this.f6187g) {
            writer.write(")]}'\n");
        }
        f.i.b.e0.c cVar = new f.i.b.e0.c(writer);
        if (this.f6189i) {
            cVar.f6176d = "  ";
            cVar.f6177e = ": ";
        }
        cVar.f6181i = this.f6186f;
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
        }
        Type type = obj.getClass();
        StringWriter stringWriter2 = new StringWriter();
        try {
            l(obj, type, i(stringWriter2));
            return stringWriter2.toString();
        } catch (IOException e3) {
            throw new p(e3);
        }
    }

    public void k(o oVar, f.i.b.e0.c cVar) throws p {
        boolean z = cVar.f6178f;
        cVar.f6178f = true;
        boolean z2 = cVar.f6179g;
        cVar.f6179g = this.f6188h;
        boolean z3 = cVar.f6181i;
        cVar.f6181i = this.f6186f;
        try {
            try {
                f.i.b.c0.a0.o.X.b(cVar, oVar);
            } catch (IOException e2) {
                throw new p(e2);
            } catch (AssertionError e3) {
                throw new AssertionError("AssertionError (GSON 2.8.5): " + e3.getMessage(), e3);
            }
        } finally {
            cVar.f6178f = z;
            cVar.f6179g = z2;
            cVar.f6181i = z3;
        }
    }

    public void l(Object obj, Type type, f.i.b.e0.c cVar) throws p {
        z f2 = f(new f.i.b.d0.a(type));
        boolean z = cVar.f6178f;
        cVar.f6178f = true;
        boolean z2 = cVar.f6179g;
        cVar.f6179g = this.f6188h;
        boolean z3 = cVar.f6181i;
        cVar.f6181i = this.f6186f;
        try {
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
            cVar.f6178f = z;
            cVar.f6179g = z2;
            cVar.f6181i = z3;
        }
    }

    public String toString() {
        return "{serializeNulls:" + this.f6186f + ",factories:" + this.f6185e + ",instanceCreators:" + this.f6183c + "}";
    }
}
