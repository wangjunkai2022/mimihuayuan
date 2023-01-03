package l;

/* compiled from: KotlinExtensions.kt */
/* loaded from: classes2.dex */
public final class r extends h.o.c.h implements h.o.b.b<Throwable, h.i> {
    public final /* synthetic */ d a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(d dVar) {
        super(1);
        this.a = dVar;
    }

    @Override // h.o.b.b
    public h.i d(Throwable th) {
        this.a.cancel();
        return h.i.a;
    }
}
