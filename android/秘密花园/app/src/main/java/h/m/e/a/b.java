package h.m.e.a;

import h.m.a;
import h.m.c;

/* compiled from: ContinuationImpl.kt */
/* loaded from: classes.dex */
public final class b implements a<Object> {
    public static final b a = new b();

    @Override // h.m.a
    public void a(Object obj) {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    @Override // h.m.a
    public c getContext() {
        throw new IllegalStateException("This continuation is already complete".toString());
    }

    public String toString() {
        return "This continuation is already complete";
    }
}
