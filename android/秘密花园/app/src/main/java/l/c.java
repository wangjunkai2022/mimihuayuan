package l;

import h.i;
import i.g0;
import i.i0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l.l;
import l.o0.u;

/* compiled from: BuiltInConverters.java */
/* loaded from: classes2.dex */
public final class c extends l.a {
    public boolean a = true;

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class a implements l<i0, i0> {
        public static final a a = new a();

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // l.l
        public i0 a(i0 i0Var) throws IOException {
            i0 i0Var2 = i0Var;
            try {
                return l0.a(i0Var2);
            } finally {
                i0Var2.close();
            }
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class b implements l<g0, g0> {
        public static final b a = new b();

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // l.l
        public g0 a(g0 g0Var) throws IOException {
            return g0Var;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* renamed from: l.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0115c implements l<i0, i0> {
        public static final C0115c a = new C0115c();

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // l.l
        public i0 a(i0 i0Var) throws IOException {
            return i0Var;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class d implements l<Object, String> {
        public static final d a = new d();

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // l.l
        public String a(Object obj) throws IOException {
            return obj.toString();
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class e implements l<i0, i> {
        public static final e a = new e();

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // l.l
        public i a(i0 i0Var) throws IOException {
            i0Var.close();
            return i.a;
        }
    }

    /* compiled from: BuiltInConverters.java */
    /* loaded from: classes2.dex */
    public static final class f implements l<i0, Void> {
        public static final f a = new f();

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // l.l
        public Void a(i0 i0Var) throws IOException {
            i0Var.close();
            return null;
        }
    }

    @Override // l.l.a
    public l<?, g0> a(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, h0 h0Var) {
        if (g0.class.isAssignableFrom(l0.f(type))) {
            return b.a;
        }
        return null;
    }

    @Override // l.l.a
    public l<i0, ?> b(Type type, Annotation[] annotationArr, h0 h0Var) {
        if (type == i0.class) {
            if (l0.i(annotationArr, u.class)) {
                return C0115c.a;
            }
            return a.a;
        } else if (type == Void.class) {
            return f.a;
        } else {
            if (!this.a || type != i.class) {
                return null;
            }
            try {
                return e.a;
            } catch (NoClassDefFoundError unused) {
                this.a = false;
                return null;
            }
        }
    }
}
