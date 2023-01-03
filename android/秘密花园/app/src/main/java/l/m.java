package l;

import i.e0;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import l.e;

/* compiled from: DefaultCallAdapterFactory.java */
/* loaded from: classes2.dex */
public final class m extends e.a {
    public final Executor a;

    /* compiled from: DefaultCallAdapterFactory.java */
    /* loaded from: classes2.dex */
    public class a implements e<Object, d<?>> {
        public final /* synthetic */ Type a;
        public final /* synthetic */ Executor b;

        public a(m mVar, Type type, Executor executor) {
            this.a = type;
            this.b = executor;
        }

        @Override // l.e
        public Type a() {
            return this.a;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l.d] */
        @Override // l.e
        public d<?> b(d<Object> dVar) {
            Executor executor = this.b;
            return executor == null ? dVar : new b(executor, dVar);
        }
    }

    /* compiled from: DefaultCallAdapterFactory.java */
    /* loaded from: classes2.dex */
    public static final class b<T> implements d<T> {
        public final Executor a;
        public final d<T> b;

        /* compiled from: DefaultCallAdapterFactory.java */
        /* loaded from: classes2.dex */
        public class a implements f<T> {
            public final /* synthetic */ f a;

            public a(f fVar) {
                this.a = fVar;
            }

            @Override // l.f
            public void a(d<T> dVar, g0<T> g0Var) {
                b.this.a.execute(new a(this, this.a, g0Var));
            }

            @Override // l.f
            public void b(d<T> dVar, Throwable th) {
                b.this.a.execute(new b(this, this.a, th));
            }

            public /* synthetic */ void c(f fVar, Throwable th) {
                fVar.b(b.this, th);
            }

            public /* synthetic */ void d(f fVar, g0 g0Var) {
                if (b.this.b.U()) {
                    fVar.b(b.this, new IOException("Canceled"));
                } else {
                    fVar.a(b.this, g0Var);
                }
            }
        }

        public b(Executor executor, d<T> dVar) {
            this.a = executor;
            this.b = dVar;
        }

        @Override // l.d
        public e0 S() {
            return this.b.S();
        }

        @Override // l.d
        public g0<T> T() throws IOException {
            return this.b.T();
        }

        @Override // l.d
        public boolean U() {
            return this.b.U();
        }

        @Override // l.d
        /* renamed from: V */
        public d<T> clone() {
            return new b(this.a, this.b.V());
        }

        @Override // l.d
        public void X(f<T> fVar) {
            Objects.requireNonNull(fVar, "callback == null");
            this.b.X(new a(fVar));
        }

        @Override // l.d
        public void cancel() {
            this.b.cancel();
        }
    }

    public m(Executor executor) {
        this.a = executor;
    }

    @Override // l.e.a
    public e<?, ?> a(Type type, Annotation[] annotationArr, h0 h0Var) {
        Executor executor = null;
        if (l0.f(type) != d.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type e2 = l0.e(0, (ParameterizedType) type);
            if (!l0.i(annotationArr, j0.class)) {
                executor = this.a;
            }
            return new a(this, e2, executor);
        }
        throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
    }
}
