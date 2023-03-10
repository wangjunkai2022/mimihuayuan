package f.d.a;

import f.d.a.k;
/* compiled from: TransitionOptions.java */
/* loaded from: classes.dex */
public abstract class k<CHILD extends k<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    public f.d.a.s.i.c<? super TranscodeType> a = (f.d.a.s.i.c<? super TranscodeType>) f.d.a.s.i.a.b;

    public final CHILD a() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (k) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }
}
