package j;

/* compiled from: SegmentPool.kt */
/* loaded from: classes.dex */
public final class w {
    public static v a;
    public static long b;

    /* renamed from: c  reason: collision with root package name */
    public static final w f6995c = new w();

    public static final void a(v vVar) {
        if (vVar.f6993f == null && vVar.f6994g == null) {
            if (vVar.f6991d) {
                return;
            }
            synchronized (f6995c) {
                long j2 = 8192;
                if (b + j2 > 65536) {
                    return;
                }
                b += j2;
                vVar.f6993f = a;
                vVar.f6990c = 0;
                vVar.b = 0;
                a = vVar;
                return;
            }
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final v b() {
        synchronized (f6995c) {
            v vVar = a;
            if (vVar != null) {
                a = vVar.f6993f;
                vVar.f6993f = null;
                b -= 8192;
                return vVar;
            }
            return new v();
        }
    }
}
