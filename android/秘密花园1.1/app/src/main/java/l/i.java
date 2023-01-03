package l;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;
import l.e;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: CompletableFutureCallAdapterFactory.java */
@IgnoreJRERequirement
/* loaded from: classes2.dex */
public final class i extends e.a {
    public static final e.a a = new i();

    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes2.dex */
    public static final class a<R> implements e<R, CompletableFuture<R>> {
        public final Type a;

        public a(Type type) {
            this.a = type;
        }

        @Override // l.e
        public Type a() {
            return this.a;
        }

        @Override // l.e
        public Object b(d dVar) {
            g gVar = new g(this, dVar);
            dVar.X(new h(this, gVar));
            return gVar;
        }
    }

    /* compiled from: CompletableFutureCallAdapterFactory.java */
    @IgnoreJRERequirement
    /* loaded from: classes2.dex */
    public static final class b<R> implements e<R, CompletableFuture<g0<R>>> {
        public final Type a;

        public b(Type type) {
            this.a = type;
        }

        @Override // l.e
        public Type a() {
            return this.a;
        }

        @Override // l.e
        public Object b(d dVar) {
            j jVar = new j(this, dVar);
            dVar.X(new k(this, jVar));
            return jVar;
        }
    }

    @Override // l.e.a
    public e<?, ?> a(Type type, Annotation[] annotationArr, h0 h0Var) {
        if (l0.f(type) != CompletableFuture.class) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            Type e2 = l0.e(0, (ParameterizedType) type);
            if (l0.f(e2) != g0.class) {
                return new a(e2);
            }
            if (e2 instanceof ParameterizedType) {
                return new b(l0.e(0, (ParameterizedType) e2));
            }
            throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        }
        throw new IllegalStateException("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
    }
}
