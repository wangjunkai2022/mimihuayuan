package l;

import i.a0;
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
        public final l.l<T, i.g0> f7214c;

        public a(Method method, int i2, l.l<T, i.g0> lVar) {
            this.a = method;
            this.b = i2;
            this.f7214c = lVar;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) {
            if (t != null) {
                try {
                    e0Var.f7238k = this.f7214c.a(t);
                    return;
                } catch (IOException e2) {
                    Method method = this.a;
                    int i2 = this.b;
                    throw l0.m(method, e2, i2, "Unable to convert " + t + " to RequestBody", new Object[0]);
                }
            }
            throw l0.l(this.a, this.b, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class b<T> extends c0<T> {
        public final String a;
        public final l.l<T, String> b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7215c;

        public b(String str, l.l<T, String> lVar, boolean z) {
            this.a = (String) Objects.requireNonNull(str, "name == null");
            this.b = lVar;
            this.f7215c = z;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            String a;
            if (t == null || (a = this.b.a(t)) == null) {
                return;
            }
            e0Var.a(this.a, a, this.f7215c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class c<T> extends c0<Map<String, T>> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l.l<T, String> f7216c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7217d;

        public c(Method method, int i2, l.l<T, String> lVar, boolean z) {
            this.a = method;
            this.b = i2;
            this.f7216c = lVar;
            this.f7217d = z;
        }

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
                            String str2 = (String) this.f7216c.a(value);
                            if (str2 != null) {
                                e0Var.a(str, str2, this.f7217d);
                            } else {
                                Method method = this.a;
                                int i2 = this.b;
                                throw l0.l(method, i2, "Field map value '" + value + "' converted to null by " + this.f7216c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
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
        public final l.l<T, String> b;

        public d(String str, l.l<T, String> lVar) {
            this.a = (String) Objects.requireNonNull(str, "name == null");
            this.b = lVar;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            String a;
            if (t == null || (a = this.b.a(t)) == null) {
                return;
            }
            e0Var.b(this.a, a);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class e<T> extends c0<T> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final i.w f7218c;

        /* renamed from: d  reason: collision with root package name */
        public final l.l<T, i.g0> f7219d;

        public e(Method method, int i2, i.w wVar, l.l<T, i.g0> lVar) {
            this.a = method;
            this.b = i2;
            this.f7218c = wVar;
            this.f7219d = lVar;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) {
            if (t == null) {
                return;
            }
            try {
                e0Var.c(this.f7218c, this.f7219d.a(t));
            } catch (IOException e2) {
                Method method = this.a;
                int i2 = this.b;
                throw l0.l(method, i2, "Unable to convert " + t + " to RequestBody", e2);
            }
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class f<T> extends c0<Map<String, T>> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l.l<T, i.g0> f7220c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7221d;

        public f(Method method, int i2, l.l<T, i.g0> lVar, String str) {
            this.a = method;
            this.b = i2;
            this.f7220c = lVar;
            this.f7221d = str;
        }

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
                            e0Var.c(i.w.b.c("Content-Disposition", f.b.a.a.a.g("form-data; name=\"", str, "\""), "Content-Transfer-Encoding", this.f7221d), (i.g0) this.f7220c.a(value));
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
        public final String f7222c;

        /* renamed from: d  reason: collision with root package name */
        public final l.l<T, String> f7223d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7224e;

        public g(Method method, int i2, String str, l.l<T, String> lVar, boolean z) {
            this.a = method;
            this.b = i2;
            this.f7222c = (String) Objects.requireNonNull(str, "name == null");
            this.f7223d = lVar;
            this.f7224e = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:52:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00e8  */
        @Override // l.c0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void a(l.e0 r18, T r19) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 275
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: l.c0.g.a(l.e0, java.lang.Object):void");
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class h<T> extends c0<T> {
        public final String a;
        public final l.l<T, String> b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7225c;

        public h(String str, l.l<T, String> lVar, boolean z) {
            this.a = (String) Objects.requireNonNull(str, "name == null");
            this.b = lVar;
            this.f7225c = z;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            String a;
            if (t == null || (a = this.b.a(t)) == null) {
                return;
            }
            e0Var.d(this.a, a, this.f7225c);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class i<T> extends c0<Map<String, T>> {
        public final Method a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final l.l<T, String> f7226c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7227d;

        public i(Method method, int i2, l.l<T, String> lVar, boolean z) {
            this.a = method;
            this.b = i2;
            this.f7226c = lVar;
            this.f7227d = z;
        }

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
                            String str2 = (String) this.f7226c.a(value);
                            if (str2 != null) {
                                e0Var.d(str, str2, this.f7227d);
                            } else {
                                Method method = this.a;
                                int i2 = this.b;
                                throw l0.l(method, i2, "Query map value '" + value + "' converted to null by " + this.f7226c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
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
        public final l.l<T, String> a;
        public final boolean b;

        public j(l.l<T, String> lVar, boolean z) {
            this.a = lVar;
            this.b = z;
        }

        @Override // l.c0
        public void a(e0 e0Var, T t) throws IOException {
            if (t == null) {
                return;
            }
            e0Var.d(this.a.a(t), null, this.b);
        }
    }

    /* compiled from: ParameterHandler.java */
    /* loaded from: classes2.dex */
    public static final class k extends c0<a0.c> {
        public static final k a = new k();

        @Override // l.c0
        public void a(e0 e0Var, a0.c cVar) throws IOException {
            a0.c cVar2 = cVar;
            if (cVar2 != null) {
                e0Var.f7236i.b(cVar2);
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
            }
            if (e0Var == null) {
                throw null;
            }
            e0Var.f7230c = obj.toString();
        }
    }

    public abstract void a(e0 e0Var, T t) throws IOException;
}
