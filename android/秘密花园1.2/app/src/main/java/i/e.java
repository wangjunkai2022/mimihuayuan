package i;

import androidx.appcompat.widget.ActivityChooserView;
import java.util.concurrent.TimeUnit;

/* compiled from: CacheControl.kt */
/* loaded from: classes.dex */
public final class e {
    public static final a n = new a(null);
    public final boolean a;
    public final boolean b;

    /* renamed from: c  reason: collision with root package name */
    public final int f6496c;

    /* renamed from: d  reason: collision with root package name */
    public final int f6497d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f6498e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f6499f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f6500g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6501h;

    /* renamed from: i  reason: collision with root package name */
    public final int f6502i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f6503j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f6504k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f6505l;

    /* renamed from: m  reason: collision with root package name */
    public String f6506m;

    /* compiled from: CacheControl.kt */
    /* loaded from: classes.dex */
    public static final class a {
        public a(h.o.c.f fVar) {
        }

        public final int a(String str, String str2, int i2) {
            int length = str.length();
            while (i2 < length) {
                if (h.s.d.a(str2, str.charAt(i2), false, 2)) {
                    return i2;
                }
                i2++;
            }
            return str.length();
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00ce  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final i.e b(i.w r27) {
            /*
                Method dump skipped, instructions count: 395
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: i.e.a.b(i.w):i.e");
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        if (timeUnit != null) {
            timeUnit.toSeconds((long) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        } else {
            h.o.c.g.f("timeUnit");
            throw null;
        }
    }

    public e(boolean z, boolean z2, int i2, int i3, boolean z3, boolean z4, boolean z5, int i4, int i5, boolean z6, boolean z7, boolean z8, String str, h.o.c.f fVar) {
        this.a = z;
        this.b = z2;
        this.f6496c = i2;
        this.f6497d = i3;
        this.f6498e = z3;
        this.f6499f = z4;
        this.f6500g = z5;
        this.f6501h = i4;
        this.f6502i = i5;
        this.f6503j = z6;
        this.f6504k = z7;
        this.f6505l = z8;
        this.f6506m = str;
    }

    public String toString() {
        String str = this.f6506m;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.a) {
                sb.append("no-cache, ");
            }
            if (this.b) {
                sb.append("no-store, ");
            }
            if (this.f6496c != -1) {
                sb.append("max-age=");
                sb.append(this.f6496c);
                sb.append(", ");
            }
            if (this.f6497d != -1) {
                sb.append("s-maxage=");
                sb.append(this.f6497d);
                sb.append(", ");
            }
            if (this.f6498e) {
                sb.append("private, ");
            }
            if (this.f6499f) {
                sb.append("public, ");
            }
            if (this.f6500g) {
                sb.append("must-revalidate, ");
            }
            if (this.f6501h != -1) {
                sb.append("max-stale=");
                sb.append(this.f6501h);
                sb.append(", ");
            }
            if (this.f6502i != -1) {
                sb.append("min-fresh=");
                sb.append(this.f6502i);
                sb.append(", ");
            }
            if (this.f6503j) {
                sb.append("only-if-cached, ");
            }
            if (this.f6504k) {
                sb.append("no-transform, ");
            }
            if (this.f6505l) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                return "";
            }
            sb.delete(sb.length() - 2, sb.length());
            String sb2 = sb.toString();
            h.o.c.g.b(sb2, "StringBuilder().apply(builderAction).toString()");
            this.f6506m = sb2;
            return sb2;
        }
        return str;
    }
}
