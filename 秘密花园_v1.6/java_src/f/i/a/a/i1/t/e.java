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
        public SpannableStringBuilder f5453c;

        /* renamed from: d  reason: collision with root package name */
        public Layout.Alignment f5454d;

        /* renamed from: e  reason: collision with root package name */
        public float f5455e;

        /* renamed from: f  reason: collision with root package name */
        public int f5456f;

        /* renamed from: g  reason: collision with root package name */
        public int f5457g;

        /* renamed from: h  reason: collision with root package name */
        public float f5458h;

        /* renamed from: i  reason: collision with root package name */
        public int f5459i;

        /* renamed from: j  reason: collision with root package name */
        public float f5460j;

        public b() {
            b();
        }

        public e a() {
            if (this.f5458h != Float.MIN_VALUE && this.f5459i == Integer.MIN_VALUE) {
                Layout.Alignment alignment = this.f5454d;
                if (alignment == null) {
                    this.f5459i = Integer.MIN_VALUE;
                } else {
                    int i2 = a.a[alignment.ordinal()];
                    if (i2 == 1) {
                        this.f5459i = 0;
                    } else if (i2 == 2) {
                        this.f5459i = 1;
                    } else if (i2 != 3) {
                        StringBuilder o = f.b.a.a.a.o("Unrecognized alignment: ");
                        o.append(this.f5454d);
                        o.toString();
                        this.f5459i = 0;
                    } else {
                        this.f5459i = 2;
                    }
                }
            }
            return new e(this.a, this.b, this.f5453c, this.f5454d, this.f5455e, this.f5456f, this.f5457g, this.f5458h, this.f5459i, this.f5460j);
        }

        public void b() {
            this.a = 0L;
            this.b = 0L;
            this.f5453c = null;
            this.f5454d = null;
            this.f5455e = Float.MIN_VALUE;
            this.f5456f = Integer.MIN_VALUE;
            this.f5457g = Integer.MIN_VALUE;
            this.f5458h = Float.MIN_VALUE;
            this.f5459i = Integer.MIN_VALUE;
            this.f5460j = Float.MIN_VALUE;
        }
    }

    public e(long j2, long j3, CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4) {
        super(charSequence, alignment, f2, i2, i3, f3, i4, f4);
        this.p = j2;
        this.q = j3;
    }
}
