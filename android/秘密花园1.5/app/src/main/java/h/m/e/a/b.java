package h.m.e.a;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public final class b implements h.m.a<Object> {
    public static final b a = new b();

    @Override // h.m.a
    public void a(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // h.m.a
    public h.m.c getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
