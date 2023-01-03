package i;

import androidx.appcompat.widget.ActivityChooserView;
import h.o.c.f;
import h.o.c.g;
import h.s.d;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheControl.kt */
/* loaded from: classes.dex */
public final class e {
    public static final a n = new a(null);
    public final boolean a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6421c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6422d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6423e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6424f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6425g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6426h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6427i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f6428j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f6429k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f6430l;

    /* renamed from: m  reason: collision with root package name */
    public String f6431m;

    /* compiled from: CacheControl.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(f fVar) {
        }

        public final int a(String str, String str2, int i2) {
            int length = str.length();
            while (i2 < length) {
                if (d.a(str2, str.charAt(i2), false, 2)) {
                    return i2;
                }
                i2++;
            }
            return str.length();
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x0047  */
        /* JADX WARNING: Removed duplicated region for block: B:32:0x00ca  */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x00ce  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final i.e b(i.w r27) {
            /*
            // Method dump skipped, instructions count: 395
            */
            throw new UnsupportedOperationException("Method not decompiled: i.e.a.b(i.w):i.e");
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        if (timeUnit != null) {
            timeUnit.toSeconds((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        } else {
            g.f("timeUnit");
            throw null;
        }
    }

    public e(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, String str, f fVar) {
        this.a = z;
        this.b = z2;
        this.f6421c = i2;
        this.f6422d = i3;
        this.f6423e = z3;
        this.f6424f = z4;
        this.f6425g = z5;
        this.f6426h = i4;
        this.f6427i = i5;
        this.f6428j = z6;
        this.f6429k = z7;
        this.f6430l = z8;
        this.f6431m = str;
    }

    public String toString() {
        String str = this.f6431m;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.a) {
            sb.append("no-cache, ");
        }
        if (this.b) {
            sb.append("no-store, ");
        }
        if (this.f6421c != -1) {
            sb.append("max-age=");
            sb.append(this.f6421c);
            sb.append(", ");
        }
        if (this.f6422d != -1) {
            sb.append("s-maxage=");
            sb.append(this.f6422d);
            sb.append(", ");
        }
        if (this.f6423e) {
            sb.append("private, ");
        }
        if (this.f6424f) {
            sb.append("public, ");
        }
        if (this.f6425g) {
            sb.append("must-revalidate, ");
        }
        if (this.f6426h != -1) {
            sb.append("max-stale=");
            sb.append(this.f6426h);
            sb.append(", ");
        }
        if (this.f6427i != -1) {
            sb.append("min-fresh=");
            sb.append(this.f6427i);
            sb.append(", ");
        }
        if (this.f6428j) {
            sb.append("only-if-cached, ");
        }
        if (this.f6429k) {
            sb.append("no-transform, ");
        }
        if (this.f6430l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String sb2 = sb.toString();
        g.b(sb2, "StringBuilder().apply(builderAction).toString()");
        this.f6431m = sb2;
        return sb2;
    }
}
