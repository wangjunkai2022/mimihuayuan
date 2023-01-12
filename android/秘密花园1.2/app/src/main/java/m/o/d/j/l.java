package m.o.d.j;

/* JADX WARN: Incorrect class signature, class is equals to this class: <E:Ljava/lang/Object;>Lm/o/d/j/l<TE;>; */
/* compiled from: SpscArrayQueue.java */
/* loaded from: classes2.dex */
public abstract class l<E> extends a {

    /* renamed from: f  reason: collision with root package name */
    public static final Integer f7396f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    public l(int i2) {
        super(i2);
        Math.min(i2 / 4, f7396f.intValue());
    }
}
