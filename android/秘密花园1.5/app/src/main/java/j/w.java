package j;

/* compiled from: SegmentPool.kt */
/* loaded from: classes.dex */
public final class w {
    public static v a;
    public static long b;

    /* renamed from: c  reason: collision with root package name */
    public static final w f7070c = new w();

    public static final void a(v vVar) {
        if (vVar.f7068f == null && vVar.f7069g == null) {
            if (vVar.f7066d) {
                return;
            }
            synchronized (f7070c) {
                long j2 = 8192;
                if (b + j2 > 65536) {
                    return;
                }
                b += j2;
                vVar.f7068f = a;
                vVar.f7065c = 0;
                vVar.b = 0;
                a = vVar;
                return;
            }
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    public static final v b() {
        synchronized (f7070c) {
            v vVar = a;
            if (vVar != null) {
                a = vVar.f7068f;
                vVar.f7068f = null;
                b -= 8192;
                return vVar;
            }
            return new v();
        }
    }
}
