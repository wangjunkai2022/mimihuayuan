package l;

import h.i;
import h.o.b.b;
import h.o.c.h;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class q extends h implements b<Throwable, i> {
    public final /* synthetic */ d a;

    /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
    public q(d dVar) {
        super(1);
        this.a = dVar;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // h.o.b.b
    public i d(Throwable th) {
        this.a.cancel();
        return i.a;
    }
}
