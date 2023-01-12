package l;

import i.f;
import java.lang.annotation.Annotation;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import l.c;
import l.e;
import l.l;

/* compiled from: Retrofit.java */
/* loaded from: classes2.dex */
public final class h0 {
    public final Map<Method, i0<?>> a = new ConcurrentHashMap();
    public final f.a b;

    /* renamed from: c  reason: collision with root package name */
    public final i.x f7261c;

    /* renamed from: d  reason: collision with root package name */
    public final List<l.a> f7262d;

    /* renamed from: e  reason: collision with root package name */
    public final List<e.a> f7263e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7264f;

    /* compiled from: Retrofit.java */
    /* loaded from: classes2.dex */
    public class a implements InvocationHandler {
        public final d0 a = d0.b;
        public final Object[] b = new Object[0];

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Class f7265c;

        public a(Class cls) {
            this.f7265c = cls;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.getDeclaringClass() == Object.class) {
                return method.invoke(this, objArr);
            }
            if (this.a.a && method.isDefault()) {
                d0 d0Var = this.a;
                Class<?> cls = this.f7265c;
                if (d0Var != null) {
                    Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
                    declaredConstructor.setAccessible(true);
                    return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
                }
                throw null;
            }
            i0<?> c2 = h0.this.c(method);
            if (objArr == null) {
                objArr = this.b;
            }
            o oVar = (o) c2;
            return oVar.b(new y(oVar.a, objArr, oVar.b, oVar.f7283c), objArr);
        }
    }

    /* compiled from: Retrofit.java */
    /* loaded from: classes2.dex */
    public static final class b {
        public final d0 a;
        public f.a b;

        /* renamed from: c  reason: collision with root package name */
        public i.x f7267c;

        /* renamed from: d  reason: collision with root package name */
        public final List<l.a> f7268d;

        /* renamed from: e  reason: collision with root package name */
        public final List<e.a> f7269e;

        public b() {
            d0 d0Var = d0.b;
            this.f7268d = new ArrayList();
            this.f7269e = new ArrayList();
            this.a = d0Var;
        }

        public b a(String str) {
            Objects.requireNonNull(str, "baseUrl == null");
            i.x f2 = i.x.f(str);
            Objects.requireNonNull(f2, "baseUrl == null");
            List<String> list = f2.f6851g;
            if ("".equals(list.get(list.size() - 1))) {
                this.f7267c = f2;
                return this;
            }
            throw new IllegalArgumentException("baseUrl must end in /: " + f2);
        }

        public h0 b() {
            List emptyList;
            if (this.f7267c != null) {
                f.a aVar = this.b;
                if (aVar == null) {
                    aVar = new i.b0();
                }
                f.a aVar2 = aVar;
                Executor a = this.a.a();
                ArrayList arrayList = new ArrayList(this.f7269e);
                d0 d0Var = this.a;
                m mVar = new m(a);
                arrayList.addAll(d0Var.a ? Arrays.asList(i.a, mVar) : Collections.singletonList(mVar));
                ArrayList arrayList2 = new ArrayList(this.f7268d.size() + 1 + (this.a.a ? 1 : 0));
                arrayList2.add(new c());
                arrayList2.addAll(this.f7268d);
                if (this.a.a) {
                    emptyList = Collections.singletonList(z.a);
                } else {
                    emptyList = Collections.emptyList();
                }
                arrayList2.addAll(emptyList);
                return new h0(aVar2, this.f7267c, Collections.unmodifiableList(arrayList2), Collections.unmodifiableList(arrayList), a, false);
            }
            throw new IllegalStateException("Base URL required.");
        }

        public b c(i.b0 b0Var) {
            this.b = (f.a) Objects.requireNonNull((f.a) Objects.requireNonNull(b0Var, "client == null"), "factory == null");
            return this;
        }
    }

    public h0(f.a aVar, i.x xVar, List<l.a> list, List<e.a> list2, Executor executor, boolean z) {
        this.b = aVar;
        this.f7261c = xVar;
        this.f7262d = list;
        this.f7263e = list2;
        this.f7264f = z;
    }

    public e<?, ?> a(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "returnType == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f7263e.indexOf(null) + 1;
        int size = this.f7263e.size();
        for (int i2 = indexOf; i2 < size; i2++) {
            e<?, ?> a2 = this.f7263e.get(i2).a(type, annotationArr, this);
            if (a2 != null) {
                return a2;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate call adapter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f7263e.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f7263e.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> T b(Class<T> cls) {
        Method[] declaredMethods;
        if (cls.isInterface()) {
            ArrayDeque arrayDeque = new ArrayDeque(1);
            arrayDeque.add(cls);
            while (!arrayDeque.isEmpty()) {
                Class<T> cls2 = (Class) arrayDeque.removeFirst();
                if (cls2.getTypeParameters().length != 0) {
                    StringBuilder sb = new StringBuilder("Type parameters are unsupported on ");
                    sb.append(cls2.getName());
                    if (cls2 != cls) {
                        sb.append(" which is an interface of ");
                        sb.append(cls.getName());
                    }
                    throw new IllegalArgumentException(sb.toString());
                }
                Collections.addAll(arrayDeque, cls2.getInterfaces());
            }
            if (this.f7264f) {
                d0 d0Var = d0.b;
                for (Method method : cls.getDeclaredMethods()) {
                    if (!(d0Var.a && method.isDefault()) && !Modifier.isStatic(method.getModifiers())) {
                        c(method);
                    }
                }
            }
            return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(cls));
        }
        throw new IllegalArgumentException("API declarations must be interfaces.");
    }

    public i0<?> c(Method method) {
        i0<?> i0Var;
        i0<?> i0Var2 = this.a.get(method);
        if (i0Var2 != null) {
            return i0Var2;
        }
        synchronized (this.a) {
            i0Var = this.a.get(method);
            if (i0Var == null) {
                i0Var = i0.a(this, method);
                this.a.put(method, i0Var);
            }
        }
        return i0Var;
    }

    public <T> l<T, i.g0> d(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "parameterAnnotations == null");
        Objects.requireNonNull(annotationArr2, "methodAnnotations == null");
        int indexOf = this.f7262d.indexOf(null) + 1;
        int size = this.f7262d.size();
        for (int i2 = indexOf; i2 < size; i2++) {
            l<T, i.g0> lVar = (l<T, i.g0>) this.f7262d.get(i2).a(type, annotationArr, annotationArr2, this);
            if (lVar != null) {
                return lVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate RequestBody converter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f7262d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f7262d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> l<i.i0, T> e(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int indexOf = this.f7262d.indexOf(null) + 1;
        int size = this.f7262d.size();
        for (int i2 = indexOf; i2 < size; i2++) {
            l<i.i0, T> lVar = (l<i.i0, T>) this.f7262d.get(i2).b(type, annotationArr, this);
            if (lVar != null) {
                return lVar;
            }
        }
        StringBuilder sb = new StringBuilder("Could not locate ResponseBody converter for ");
        sb.append(type);
        sb.append(".\n");
        sb.append("  Tried:");
        int size2 = this.f7262d.size();
        while (indexOf < size2) {
            sb.append("\n   * ");
            sb.append(this.f7262d.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(sb.toString());
    }

    public <T> l<T, String> f(Type type, Annotation[] annotationArr) {
        Objects.requireNonNull(type, "type == null");
        Objects.requireNonNull(annotationArr, "annotations == null");
        int size = this.f7262d.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f7262d.get(i2) == null) {
                throw null;
            }
        }
        return c.d.a;
    }
}
