package f.i.a.a.m1;
/* compiled from: ConditionVariable.java */
/* loaded from: classes.dex */
public final class k {
    public boolean a;

    public synchronized boolean a() {
        if (this.a) {
            return false;
        }
        this.a = true;
        notifyAll();
        return true;
    }
}
