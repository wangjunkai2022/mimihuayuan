package m.m;

/* compiled from: OnErrorFailedException.java */
/* loaded from: classes2.dex */
public class d extends RuntimeException {
    public d(String str, Throwable th) {
        super(str, th);
    }

    public d(Throwable th) {
        super(th.getMessage(), th);
    }
}
