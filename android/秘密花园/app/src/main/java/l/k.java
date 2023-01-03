package l;

import java.util.concurrent.CompletableFuture;
import l.i;

/* compiled from: CompletableFutureCallAdapterFactory.java */
/* loaded from: classes2.dex */
public class k implements f<R> {
    public final /* synthetic */ CompletableFuture a;

    public k(i.b bVar, CompletableFuture completableFuture) {
        this.a = completableFuture;
    }

    @Override // l.f
    public void a(d<R> dVar, g0<R> g0Var) {
        this.a.complete(g0Var);
    }

    @Override // l.f
    public void b(d<R> dVar, Throwable th) {
        this.a.completeExceptionally(th);
    }
}
