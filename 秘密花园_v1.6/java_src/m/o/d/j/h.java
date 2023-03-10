package m.o.d.j;
/* compiled from: SpmcArrayQueue.java */
/* loaded from: classes2.dex */
public abstract class h<E> extends f<E> {

    /* renamed from: f  reason: collision with root package name */
    public static final long f7402f = o.a(h.class, "producerIndex");
    public volatile long producerIndex;

    public h(int i2) {
        super(i2);
    }

    public final void g(long j2) {
        o.a.putOrderedLong(this, f7402f, j2);
    }
}
