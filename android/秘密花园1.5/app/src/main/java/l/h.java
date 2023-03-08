package l;

import java.util.concurrent.CompletableFuture;
import l.i;

/* compiled from: CompletableFutureCallAdapterFactory.java */
/* loaded from: classes2.dex */
public class h implements f<R> {
    public final /* synthetic */ CompletableFuture a;

    public h(i.a aVar, CompletableFuture completableFuture) {
        this.a = completableFuture;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // l.f
    public void a(d<R> dVar, g0<R> g0Var) {
        if (g0Var.a()) {
            this.a.complete(g0Var.b);
        } else {
            this.a.completeExceptionally(new n(g0Var));
        }
    }

    @Override // l.f
    public void b(d<R> dVar, Throwable th) {
        this.a.completeExceptionally(th);
    }
}
