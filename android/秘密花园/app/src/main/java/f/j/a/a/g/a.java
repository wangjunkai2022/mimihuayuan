package f.j.a.a.g;

/* compiled from: DimensionStatus.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f6110c = new a(0, false);

    /* renamed from: d  reason: collision with root package name */
    public static final a f6111d = new a(1, true);

    /* renamed from: e  reason: collision with root package name */
    public static final a f6112e = new a(2, false);

    /* renamed from: f  reason: collision with root package name */
    public static final a f6113f = new a(3, true);

    /* renamed from: g  reason: collision with root package name */
    public static final a f6114g = new a(4, false);

    /* renamed from: h  reason: collision with root package name */
    public static final a f6115h = new a(5, true);

    /* renamed from: i  reason: collision with root package name */
    public static final a f6116i = new a(6, false);

    /* renamed from: j  reason: collision with root package name */
    public static final a f6117j = new a(7, true);

    /* renamed from: k  reason: collision with root package name */
    public static final a f6118k = new a(8, false);

    /* renamed from: l  reason: collision with root package name */
    public static final a f6119l = new a(9, true);

    /* renamed from: m  reason: collision with root package name */
    public static final a f6120m = new a(10, false);
    public static final a n;
    public static final a[] o;
    public final int a;
    public final boolean b;

    static {
        a aVar = new a(10, true);
        n = aVar;
        o = new a[]{f6110c, f6111d, f6112e, f6113f, f6114g, f6115h, f6116i, f6117j, f6118k, f6119l, f6120m, aVar};
    }

    public a(int i2, boolean z) {
        this.a = i2;
        this.b = z;
    }

    public boolean a(a aVar) {
        return this.a < aVar.a || ((!this.b || f6119l == this) && this.a == aVar.a);
    }

    public a b() {
        if (!this.b) {
            return this;
        }
        a aVar = o[this.a - 1];
        if (!aVar.b) {
            return aVar;
        }
        return f6110c;
    }
}
