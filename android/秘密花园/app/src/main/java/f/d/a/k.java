package f.d.a;

import f.d.a.k;
import f.d.a.s.i.a;
import f.d.a.s.i.c;

/* compiled from: TransitionOptions.java */
/* loaded from: classes.dex */
public abstract class k<CHILD extends k<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    public c<? super TranscodeType> a = (c<? super TranscodeType>) a.b;

    public final CHILD a() {
        try {
            return (CHILD) ((k) super.clone());
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.lang.Object
    public Object clone() throws CloneNotSupportedException {
        try {
            return (k) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }
}
