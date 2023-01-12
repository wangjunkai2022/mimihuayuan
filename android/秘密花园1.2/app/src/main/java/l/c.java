package l;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l.l;

/* compiled from: BuiltInConverters.java */
/* loaded from: classes2.dex */
public final class c extends l.a {
    public boolean a = true;

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class a implements l<i.i0, i.i0> {
        public static final a a = new a();

        @Override // l.l
        public i.i0 a(i.i0 i0Var) throws IOException {
            i.i0 i0Var2 = i0Var;
            try {
                return l0.a(i0Var2);
            } finally {
                i0Var2.close();
            }
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class b implements l<i.g0, i.g0> {
        public static final b a = new b();

        @Override // l.l
        public i.g0 a(i.g0 g0Var) throws IOException {
            return g0Var;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* renamed from: l.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0122c implements l<i.i0, i.i0> {
        public static final C0122c a = new C0122c();

        @Override // l.l
        public i.i0 a(i.i0 i0Var) throws IOException {
            return i0Var;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class d implements l<Object, String> {
        public static final d a = new d();

        @Override // l.l
        public String a(Object obj) throws IOException {
            return obj.toString();
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class e implements l<i.i0, h.i> {
        public static final e a = new e();

        @Override // l.l
        public h.i a(i.i0 i0Var) throws IOException {
            i0Var.close();
            return h.i.a;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class f implements l<i.i0, Void> {
        public static final f a = new f();

        @Override // l.l
        public Void a(i.i0 i0Var) throws IOException {
            i0Var.close();
            return null;
        }
    }

    @Override // l.l.a
    public l<?, i.g0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, h0 h0Var) {
        if (i.g0.class.isAssignableFrom(l0.f(type))) {
            return b.a;
        }
        return null;
    }

    @Override // l.l.a
    public l<i.i0, ?> b(Type type, Annotation[] annotationArr, h0 h0Var) {
        if (type == i.i0.class) {
            if (l0.i(annotationArr, l.o0.u.class)) {
                return C0122c.a;
            }
            return a.a;
        } else if (type == Void.class) {
            return f.a;
        } else {
            if (this.a && type == h.i.class) {
                try {
                    return e.a;
                } catch (NoClassDefFoundError unused) {
                    this.a = false;
                    return null;
                }
            }
            return null;
        }
    }
}
