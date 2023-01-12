package k.a.f;

/* compiled from: ParseSettings.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    public static final f f7140c = new f(false, false);

    /* renamed from: d  reason: collision with root package name */
    public static final f f7141d = new f(true, true);
    public final boolean a;
    public final boolean b;

    public f(boolean z, boolean z2) {
        this.a = z;
        this.b = z2;
    }

    public k.a.e.b a(k.a.e.b bVar) {
        if (bVar != null && !this.b) {
            for (int i2 = 0; i2 < bVar.a; i2++) {
                String[] strArr = bVar.b;
                strArr[i2] = j.b.o(strArr[i2]);
            }
        }
        return bVar;
    }
}
