package m.o.d.j;

/* compiled from: SpscArrayQueue.java */
/* JADX WARN: Incorrect class signature, class is equals to this class: <E:Ljava/lang/Object;>Lm/o/d/j/l<TE;>; */
/* loaded from: classes2.dex */
public abstract class l<E> extends a {

    /* renamed from: f  reason: collision with root package name */
    public static final Integer f7321f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    public l(int i2) {
        super(i2);
        Math.min(i2 / 4, f7321f.intValue());
    }
}
