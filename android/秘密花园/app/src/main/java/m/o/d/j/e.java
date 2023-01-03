package m.o.d.j;

/* compiled from: SpmcArrayQueue.java */
/* loaded from: classes2.dex */
public abstract class e<E> extends g<E> {

    /* renamed from: g  reason: collision with root package name */
    public static final long f7317g = o.a(e.class, "consumerIndex");
    public volatile long consumerIndex;

    public e(int i2) {
        super(i2);
    }

    public final boolean h(long j2, long j3) {
        return o.a.compareAndSwapLong(this, f7317g, j2, j3);
    }
}
