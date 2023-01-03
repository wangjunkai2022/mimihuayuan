package l;

import i.a0;
import i.g0;
import i.w;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;

/* compiled from: ParameterHandler.java */
/* loaded from: classes2.dex */
public abstract class c0<T> {

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class a<T> extends c0<T> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l<T, g0> f7139c;

        public a(Method method, int i2, l<T, g0> lVar) {
            this.a = method;
            this.b = i2;
            this.f7139c = lVar;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) {
            if (t != null) {
                try {
                    e0Var.f7163k = this.f7139c.a(t);
                } catch (IOException e2) {
                    Method method = this.a;
                    int i2 = this.b;
                    throw l0.m(method, e2, i2, "Unable to convert " + t + " to RequestBody", new Object[0]);
                }
            } else {
                throw l0.l(this.a, this.b, "Body parameter value must not be null.", new Object[0]);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class b<T> extends c0<T> {
        public final String a;
        public final l<T, String> b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7140c;

        public b(String str, l<T, String> lVar, boolean z) {
            this.a = (String) Objects.requireNonNull(str, "name == null");
            this.b = lVar;
            this.f7140c = z;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            String a;
            if (t != null && (a = this.b.a(t)) != null) {
                e0Var.a(this.a, a, this.f7140c);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class c<T> extends c0<Map<String, T>> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l<T, String> f7141c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7142d;

        public c(Method method, int i2, l<T, String> lVar, boolean z) {
            this.a = method;
            this.b = i2;
            this.f7141c = lVar;
            this.f7142d = z;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: l.l<T, java.lang.String> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // l.c0
        public void a(e0 e0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            String str2 = (String) this.f7141c.a(value);
                            if (str2 != null) {
                                e0Var.a(str, str2, this.f7142d);
                            } else {
                                Method method = this.a;
                                int i2 = this.b;
                                throw l0.l(method, i2, "Field map value '" + value + "' converted to null by " + this.f7141c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                            }
                        } else {
                            throw l0.l(this.a, this.b, f.b.a.a.a.g("Field map contained null value for key '", str, "'."), new Object[0]);
                        }
                    } else {
                        throw l0.l(this.a, this.b, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw l0.l(this.a, this.b, "Field map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class d<T> extends c0<T> {
        public final String a;
        public final l<T, String> b;

        public d(String str, l<T, String> lVar) {
            this.a = (String) Objects.requireNonNull(str, "name == null");
            this.b = lVar;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            String a;
            if (t != null && (a = this.b.a(t)) != null) {
                e0Var.b(this.a, a);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class e<T> extends c0<T> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final w f7143c;

        /* renamed from: d  reason: collision with root package name */
        public final l<T, g0> f7144d;

        public e(Method method, int i2, w wVar, l<T, g0> lVar) {
            this.a = method;
            this.b = i2;
            this.f7143c = wVar;
            this.f7144d = lVar;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) {
            if (t != null) {
                try {
                    e0Var.c(this.f7143c, this.f7144d.a(t));
                } catch (IOException e2) {
                    Method method = this.a;
                    int i2 = this.b;
                    throw l0.l(method, i2, "Unable to convert " + t + " to RequestBody", e2);
                }
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class f<T> extends c0<Map<String, T>> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l<T, g0> f7145c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7146d;

        public f(Method method, int i2, l<T, g0> lVar, String str) {
            this.a = method;
            this.b = i2;
            this.f7145c = lVar;
            this.f7146d = str;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r3v3, resolved type: l.l<T, i.g0> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // l.c0
        public void a(e0 e0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            e0Var.c(w.b.c("Content-Disposition", f.b.a.a.a.g("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", this.f7146d), (g0) this.f7145c.a(value));
                        } else {
                            throw l0.l(this.a, this.b, f.b.a.a.a.g("Part map contained null value for key '", str, "'."), new Object[0]);
                        }
                    } else {
                        throw l0.l(this.a, this.b, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw l0.l(this.a, this.b, "Part map was null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class g<T> extends c0<T> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final String f7147c;

        /* renamed from: d  reason: collision with root package name */
        public final l<T, String> f7148d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7149e;

        public g(Method method, int i2, String str, l<T, String> lVar, boolean z) {
            this.a = method;
            this.b = i2;
            this.f7147c = (String) Objects.requireNonNull(str, "name == null");
            this.f7148d = lVar;
            this.f7149e = z;
        }

        /* JADX WARNING: Removed duplicated region for block: B:49:0x00e5  */
        /* JADX WARNING: Removed duplicated region for block: B:51:0x00e8  */
        @Override // l.c0
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void a(l.e0 r18, T r19) throws java.io.IOException {
            /*
            // Method dump skipped, instructions count: 275
            */
            throw new UnsupportedOperationException("Method not decompiled: l.c0.g.a(l.e0, java.lang.Object):void");
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class h<T> extends c0<T> {
        public final String a;
        public final l<T, String> b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7150c;

        public h(String str, l<T, String> lVar, boolean z) {
            this.a = (String) Objects.requireNonNull(str, "name == null");
            this.b = lVar;
            this.f7150c = z;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            String a;
            if (t != null && (a = this.b.a(t)) != null) {
                e0Var.d(this.a, a, this.f7150c);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class i<T> extends c0<Map<String, T>> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l<T, String> f7151c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7152d;

        public i(Method method, int i2, l<T, String> lVar, boolean z) {
            this.a = method;
            this.b = i2;
            this.f7151c = lVar;
            this.f7152d = z;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: l.l<T, java.lang.String> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // l.c0
        public void a(e0 e0Var, Object obj) throws IOException {
            Map map = (Map) obj;
            if (map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    if (str != null) {
                        Object value = entry.getValue();
                        if (value != null) {
                            String str2 = (String) this.f7151c.a(value);
                            if (str2 != null) {
                                e0Var.d(str, str2, this.f7152d);
                            } else {
                                Method method = this.a;
                                int i2 = this.b;
                                throw l0.l(method, i2, "Query map value '" + value + "' converted to null by " + this.f7151c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                            }
                        } else {
                            throw l0.l(this.a, this.b, f.b.a.a.a.g("Query map contained null value for key '", str, "'."), new Object[0]);
                        }
                    } else {
                        throw l0.l(this.a, this.b, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw l0.l(this.a, this.b, "Query map was null", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class j<T> extends c0<T> {
        public final l<T, String> a;
        public final boolean b;

        public j(l<T, String> lVar, boolean z) {
            this.a = lVar;
            this.b = z;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            if (t != null) {
                e0Var.d(this.a.a(t), null, this.b);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class k extends c0<a0.c> {
        public static final k a = new k();

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l.e0, java.lang.Object] */
        @Override // l.c0
        public void a(e0 e0Var, a0.c cVar) throws IOException {
            a0.c cVar2 = cVar;
            if (cVar2 != null) {
                e0Var.f7161i.b(cVar2);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class l extends c0<Object> {
        public final Method a;
        public final int b;

        public l(Method method, int i2) {
            this.a = method;
            this.b = i2;
        }

        @Override // l.c0
        public void a(e0 e0Var, Object obj) {
            if (obj == null) {
                throw l0.l(this.a, this.b, "@Url parameter is null.", new Object[0]);
            } else if (e0Var != null) {
                e0Var.f7155c = obj.toString();
            } else {
                throw null;
            }
        }
    }

    public abstract void a(e0 e0Var, T t) throws IOException;
}
