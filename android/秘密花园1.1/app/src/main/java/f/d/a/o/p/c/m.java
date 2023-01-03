package f.d.a.o.p.c;

/* compiled from: DownsampleStrategy.java */
/* loaded from: classes.dex */
public abstract class m {
    public static final m a = new c();
    public static final m b = new a();

    /* renamed from: c  reason: collision with root package name */
    public static final m f3681c = new b();

    /* renamed from: d  reason: collision with root package name */
    public static final m f3682d = new d();

    /* renamed from: e  reason: collision with root package name */
    public static final m f3683e;

    /* renamed from: f  reason: collision with root package name */
    public static final f.d.a.o.g<m> f3684f;

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f3685g;

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class a extends m {
        @Override // f.d.a.o.p.c.m
        public e a(int i2, int i3, int i4, int i5) {
            if (b(i2, i3, i4, i5) == 1.0f) {
                return e.QUALITY;
            }
            return m.a.a(i2, i3, i4, i5);
        }

        @Override // f.d.a.o.p.c.m
        public float b(int i2, int i3, int i4, int i5) {
            return Math.min(1.0f, m.a.b(i2, i3, i4, i5));
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class b extends m {
        @Override // f.d.a.o.p.c.m
        public e a(int i2, int i3, int i4, int i5) {
            return e.QUALITY;
        }

        @Override // f.d.a.o.p.c.m
        public float b(int i2, int i3, int i4, int i5) {
            return Math.max(i4 / i2, i5 / i3);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class c extends m {
        @Override // f.d.a.o.p.c.m
        public e a(int i2, int i3, int i4, int i5) {
            if (m.f3685g) {
                return e.QUALITY;
            }
            return e.MEMORY;
        }

        @Override // f.d.a.o.p.c.m
        public float b(int i2, int i3, int i4, int i5) {
            if (m.f3685g) {
                return Math.min(i4 / i2, i5 / i3);
            }
            int max = Math.max(i3 / i5, i2 / i4);
            if (max == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(max);
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public static class d extends m {
        @Override // f.d.a.o.p.c.m
        public e a(int i2, int i3, int i4, int i5) {
            return e.QUALITY;
        }

        @Override // f.d.a.o.p.c.m
        public float b(int i2, int i3, int i4, int i5) {
            return 1.0f;
        }
    }

    /* compiled from: DownsampleStrategy.java */
    /* loaded from: classes.dex */
    public enum e {
        MEMORY,
        QUALITY
    }

    static {
        m mVar = f3681c;
        f3683e = mVar;
        f3684f = f.d.a.o.g.a("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", mVar);
        f3685g = true;
    }

    public abstract e a(int i2, int i3, int i4, int i5);

    public abstract float b(int i2, int i3, int i4, int i5);
}
