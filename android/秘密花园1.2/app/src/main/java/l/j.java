package l;

import java.util.concurrent.CompletableFuture;
import l.i;

/* compiled from: CompletableFutureCallAdapterFactory.java */
/* loaded from: classes2.dex */
public class j extends CompletableFuture<g0<R>> {
    public final /* synthetic */ d a;

    public j(i.b bVar, d dVar) {
        this.a = dVar;
    }

    @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        if (z) {
            this.a.cancel();
        }
        return super.cancel(z);
    }
}
