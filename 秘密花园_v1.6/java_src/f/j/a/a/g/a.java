package f.j.a.a.g;
/* compiled from: DimensionStatus.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f6194c = new a(0, false);

    /* renamed from: d  reason: collision with root package name */
    public static final a f6195d = new a(1, true);

    /* renamed from: e  reason: collision with root package name */
    public static final a f6196e = new a(2, false);

    /* renamed from: f  reason: collision with root package name */
    public static final a f6197f = new a(3, true);

    /* renamed from: g  reason: collision with root package name */
    public static final a f6198g = new a(4, false);

    /* renamed from: h  reason: collision with root package name */
    public static final a f6199h = new a(5, true);

    /* renamed from: i  reason: collision with root package name */
    public static final a f6200i = new a(6, false);

    /* renamed from: j  reason: collision with root package name */
    public static final a f6201j = new a(7, true);

    /* renamed from: k  reason: collision with root package name */
    public static final a f6202k = new a(8, false);

    /* renamed from: l  reason: collision with root package name */
    public static final a f6203l = new a(9, true);

    /* renamed from: m  reason: collision with root package name */
    public static final a f6204m = new a(10, false);
    public static final a n;
    public static final a[] o;
    public final int a;
    public final boolean b;

    static {
        a aVar = new a(10, true);
        n = aVar;
        o = new a[]{f6194c, f6195d, f6196e, f6197f, f6198g, f6199h, f6200i, f6201j, f6202k, f6203l, f6204m, aVar};
    }

    public a(int i2, boolean z) {
        this.a = i2;
        this.b = z;
    }

    public boolean a(a aVar) {
        return this.a < aVar.a || ((!this.b || f6203l == this) && this.a == aVar.a);
    }

    public a b() {
        if (this.b) {
            a aVar = o[this.a - 1];
            return !aVar.b ? aVar : f6194c;
        }
        return this;
    }
}
