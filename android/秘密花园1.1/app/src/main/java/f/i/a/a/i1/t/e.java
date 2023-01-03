package f.i.a.a.i1.t;

import android.text.Layout;
import android.text.SpannableStringBuilder;

/* compiled from: WebvttCue.java */
/* loaded from: classes.dex */
public final class e extends f.i.a.a.i1.b {
    public final long p;
    public final long q;

    /* compiled from: WebvttCue.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: WebvttCue.java */
    /* loaded from: classes.dex */
    public static class b {
        public long a;
        public long b;

        /* renamed from: c  reason: collision with root package name */
        public SpannableStringBuilder f5369c;

        /* renamed from: d  reason: collision with root package name */
        public Layout.Alignment f5370d;

        /* renamed from: e  reason: collision with root package name */
        public float f5371e;

        /* renamed from: f  reason: collision with root package name */
        public int f5372f;

        /* renamed from: g  reason: collision with root package name */
        public int f5373g;

        /* renamed from: h  reason: collision with root package name */
        public float f5374h;

        /* renamed from: i  reason: collision with root package name */
        public int f5375i;

        /* renamed from: j  reason: collision with root package name */
        public float f5376j;

        public b() {
            b();
        }

        public e a() {
            if (this.f5374h != Float.MIN_VALUE && this.f5375i == Integer.MIN_VALUE) {
                Layout.Alignment alignment = this.f5370d;
                if (alignment == null) {
                    this.f5375i = Integer.MIN_VALUE;
                } else {
                    int i2 = a.a[alignment.ordinal()];
                    if (i2 == 1) {
                        this.f5375i = 0;
                    } else if (i2 == 2) {
                        this.f5375i = 1;
                    } else if (i2 != 3) {
                        StringBuilder o = f.b.a.a.a.o("Unrecognized alignment: ");
                        o.append(this.f5370d);
                        o.toString();
                        this.f5375i = 0;
                    } else {
                        this.f5375i = 2;
                    }
                }
            }
            return new e(this.a, this.b, this.f5369c, this.f5370d, this.f5371e, this.f5372f, this.f5373g, this.f5374h, this.f5375i, this.f5376j);
        }

        public void b() {
            this.a = 0L;
            this.b = 0L;
            this.f5369c = null;
            this.f5370d = null;
            this.f5371e = Float.MIN_VALUE;
            this.f5372f = Integer.MIN_VALUE;
            this.f5373g = Integer.MIN_VALUE;
            this.f5374h = Float.MIN_VALUE;
            this.f5375i = Integer.MIN_VALUE;
            this.f5376j = Float.MIN_VALUE;
        }
    }

    public e(long j2, long j3, CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4) {
        super(charSequence, alignment, f2, i2, i3, f3, i4, f4);
        this.p = j2;
        this.q = j3;
    }
}
