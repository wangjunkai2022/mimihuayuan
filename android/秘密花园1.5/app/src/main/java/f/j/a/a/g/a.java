package f.j.a.a.g;

/* compiled from: DimensionStatus.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f6185c = new a(0, false);

    /* renamed from: d  reason: collision with root package name */
    public static final a f6186d = new a(1, true);

    /* renamed from: e  reason: collision with root package name */
    public static final a f6187e = new a(2, false);

    /* renamed from: f  reason: collision with root package name */
    public static final a f6188f = new a(3, true);

    /* renamed from: g  reason: collision with root package name */
    public static final a f6189g = new a(4, false);

    /* renamed from: h  reason: collision with root package name */
    public static final a f6190h = new a(5, true);

    /* renamed from: i  reason: collision with root package name */
    public static final a f6191i = new a(6, false);

    /* renamed from: j  reason: collision with root package name */
    public static final a f6192j = new a(7, true);

    /* renamed from: k  reason: collision with root package name */
    public static final a f6193k = new a(8, false);

    /* renamed from: l  reason: collision with root package name */
    public static final a f6194l = new a(9, true);

    /* renamed from: m  reason: collision with root package name */
    public static final a f6195m = new a(10, false);
    public static final a n;
    public static final a[] o;
    public final int a;
    public final boolean b;

    static {
        a aVar = new a(10, true);
        n = aVar;
        o = new a[]{f6185c, f6186d, f6187e, f6188f, f6189g, f6190h, f6191i, f6192j, f6193k, f6194l, f6195m, aVar};
    }

    public a(int i2, boolean z) {
        this.a = i2;
        this.b = z;
    }

    public boolean a(a aVar) {
        return this.a < aVar.a || ((!this.b || f6194l == this) && this.a == aVar.a);
    }

    public a b() {
        if (this.b) {
            a aVar = o[this.a - 1];
            return !aVar.b ? aVar : f6185c;
        }
        return this;
    }
}
