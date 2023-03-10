package f.i.a.a.h1.t0.k;

import java.util.Locale;
/* compiled from: UrlTemplate.java */
/* loaded from: classes.dex */
public final class l {
    public final String[] a;
    public final int[] b;

    /* renamed from: c  reason: collision with root package name */
    public final String[] f5084c;

    /* renamed from: d  reason: collision with root package name */
    public final int f5085d;

    public l(String[] strArr, int[] iArr, String[] strArr2, int i2) {
        this.a = strArr;
        this.b = iArr;
        this.f5084c = strArr2;
        this.f5085d = i2;
    }

    public String a(String str, long j2, int i2, long j3) {
        StringBuilder sb = new StringBuilder();
        int i3 = 0;
        while (true) {
            int i4 = this.f5085d;
            if (i3 < i4) {
                sb.append(this.a[i3]);
                int[] iArr = this.b;
                if (iArr[i3] == 1) {
                    sb.append(str);
                } else if (iArr[i3] == 2) {
                    sb.append(String.format(Locale.US, this.f5084c[i3], Long.valueOf(j2)));
                } else if (iArr[i3] == 3) {
                    sb.append(String.format(Locale.US, this.f5084c[i3], Integer.valueOf(i2)));
                } else if (iArr[i3] == 4) {
                    sb.append(String.format(Locale.US, this.f5084c[i3], Long.valueOf(j3)));
                }
                i3++;
            } else {
                sb.append(this.a[i4]);
                return sb.toString();
            }
        }
    }
}
