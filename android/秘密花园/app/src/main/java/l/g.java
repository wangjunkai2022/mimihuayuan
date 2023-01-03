package l;

import java.util.concurrent.CompletableFuture;
import l.i;

/* compiled from: CompletableFutureCallAdapterFactory.java */
/* loaded from: classes2.dex */
public class g extends CompletableFuture<R> {
    public final /* synthetic */ d a;

    public g(i.a aVar, d dVar) {
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
