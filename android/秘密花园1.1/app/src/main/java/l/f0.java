package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: RequestFactory.java */
/* loaded from: classes2.dex */
public final class f0 {
    public final Method a;
    public final i.x b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7165c;

    /* renamed from: d  reason: collision with root package name */
    public final String f7166d;

    /* renamed from: e  reason: collision with root package name */
    public final i.w f7167e;

    /* renamed from: f  reason: collision with root package name */
    public final i.z f7168f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7169g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7170h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f7171i;

    /* renamed from: j  reason: collision with root package name */
    public final c0<?>[] f7172j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f7173k;

    /* compiled from: RequestFactory.java */
    /* loaded from: classes2.dex */
    public static final class a {
        public static final Pattern x = Pattern.compile("\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}");
        public static final Pattern y = Pattern.compile("[a-zA-Z][a-zA-Z0-9_-]*");
        public final h0 a;
        public final Method b;

        /* renamed from: c  reason: collision with root package name */
        public final Annotation[] f7174c;

        /* renamed from: d  reason: collision with root package name */
        public final Annotation[][] f7175d;

        /* renamed from: e  reason: collision with root package name */
        public final Type[] f7176e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f7177f;

        /* renamed from: g  reason: collision with root package name */
        public boolean f7178g;

        /* renamed from: h  reason: collision with root package name */
        public boolean f7179h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f7180i;

        /* renamed from: j  reason: collision with root package name */
        public boolean f7181j;

        /* renamed from: k  reason: collision with root package name */
        public boolean f7182k;

        /* renamed from: l  reason: collision with root package name */
        public boolean f7183l;

        /* renamed from: m  reason: collision with root package name */
        public boolean f7184m;
        public String n;
        public boolean o;
        public boolean p;
        public boolean q;
        public String r;
        public i.w s;
        public i.z t;
        public Set<String> u;
        public c0<?>[] v;
        public boolean w;

        public a(h0 h0Var, Method method) {
            this.a = h0Var;
            this.b = method;
            this.f7174c = method.getAnnotations();
            this.f7176e = method.getGenericParameterTypes();
            this.f7175d = method.getParameterAnnotations();
        }

        public static Class<?> a(Class<?> cls) {
            return Boolean.TYPE == cls ? Boolean.class : Byte.TYPE == cls ? Byte.class : Character.TYPE == cls ? Character.class : Double.TYPE == cls ? Double.class : Float.TYPE == cls ? Float.class : Integer.TYPE == cls ? Integer.class : Long.TYPE == cls ? Long.class : Short.TYPE == cls ? Short.class : cls;
        }

        public final void b(String str, String str2, boolean z) {
            String str3 = this.n;
            if (str3 != null) {
                throw l0.j(this.b, "Only one HTTP method is allowed. Found: %s and %s.", str3, str);
            }
            this.n = str;
            this.o = z;
            if (str2.isEmpty()) {
                return;
            }
            int indexOf = str2.indexOf(63);
            if (indexOf != -1 && indexOf < str2.length() - 1) {
                String substring = str2.substring(indexOf + 1);
                if (x.matcher(substring).find()) {
                    throw l0.j(this.b, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query.", substring);
                }
            }
            this.r = str2;
            Matcher matcher = x.matcher(str2);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (matcher.find()) {
                linkedHashSet.add(matcher.group(1));
            }
            this.u = linkedHashSet;
        }

        public final void c(int i2, Type type) {
            if (l0.h(type)) {
                throw l0.l(this.b, i2, "Parameter type must not include a type variable or wildcard: %s", type);
            }
        }
    }

    public f0(a aVar) {
        this.a = aVar.b;
        this.b = aVar.a.f7186c;
        this.f7165c = aVar.n;
        this.f7166d = aVar.r;
        this.f7167e = aVar.s;
        this.f7168f = aVar.t;
        this.f7169g = aVar.o;
        this.f7170h = aVar.p;
        this.f7171i = aVar.q;
        this.f7172j = aVar.v;
        this.f7173k = aVar.w;
    }
}
