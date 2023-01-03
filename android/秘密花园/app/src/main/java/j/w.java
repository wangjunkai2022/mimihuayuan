package j;

/* compiled from: SegmentPool.kt */
/* loaded from: classes.dex */
public final class w {
    public static v a;
    public static long b;

    /* renamed from: c  reason: collision with root package name */
    public static final w f6995c = new w();

    public static final void a(v vVar) {
        if (!(vVar.f6993f == null && vVar.f6994g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        } else if (!vVar.f6991d) {
            synchronized (f6995c) {
                long j2 = (long) 8192;
                if (b + j2 <= 65536) {
                    b += j2;
                    vVar.f6993f = a;
                    vVar.f6990c = 0;
                    vVar.b = 0;
                    a = vVar;
                }
            }
        }
    }

    public static final v b() {
        synchronized (f6995c) {
            v vVar = a;
            if (vVar == null) {
                return new v();
            }
            a = vVar.f6993f;
            vVar.f6993f = null;
            b -= (long) 8192;
            return vVar;
        }
    }
}
