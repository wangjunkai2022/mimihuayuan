package f.i.a.a.l1.k0;

import androidx.annotation.Nullable;
import java.io.File;
import java.util.regex.Pattern;

/* compiled from: SimpleCacheSpan.java */
/* loaded from: classes.dex */
public final class w extends k {

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f5671g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f5672h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* renamed from: i  reason: collision with root package name */
    public static final Pattern f5673i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    public w(String str, long j2, long j3, long j4, @Nullable File file) {
        super(str, j2, j3, j4, file);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0063, code lost:
        if (r16.renameTo(r1) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
        if (r1 == null) goto L32;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static f.i.a.a.l1.k0.w b(java.io.File r16, long r17, long r19, f.i.a.a.l1.k0.n r21) {
        /*
            r0 = r21
            java.lang.String r1 = r16.getName()
            java.lang.String r2 = ".v3.exo"
            boolean r2 = r1.endsWith(r2)
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 != 0) goto L70
            java.lang.String r1 = r16.getName()
            java.util.regex.Pattern r2 = f.i.a.a.l1.k0.w.f5672h
            java.util.regex.Matcher r2 = r2.matcher(r1)
            boolean r7 = r2.matches()
            if (r7 == 0) goto L2d
            java.lang.String r1 = r2.group(r5)
            java.lang.String r1 = f.i.a.a.m1.h0.r0(r1)
            if (r1 != 0) goto L3f
            goto L39
        L2d:
            java.util.regex.Pattern r2 = f.i.a.a.l1.k0.w.f5671g
            java.util.regex.Matcher r2 = r2.matcher(r1)
            boolean r1 = r2.matches()
            if (r1 != 0) goto L3b
        L39:
            r1 = r6
            goto L66
        L3b:
            java.lang.String r1 = r2.group(r5)
        L3f:
            java.io.File r7 = r16.getParentFile()
            f.i.a.a.l1.k0.m r1 = r0.d(r1)
            int r8 = r1.a
            java.lang.String r1 = r2.group(r4)
            long r9 = java.lang.Long.parseLong(r1)
            java.lang.String r1 = r2.group(r3)
            long r11 = java.lang.Long.parseLong(r1)
            java.io.File r1 = c(r7, r8, r9, r11)
            r2 = r16
            boolean r2 = r2.renameTo(r1)
            if (r2 != 0) goto L66
            goto L39
        L66:
            if (r1 != 0) goto L69
            return r6
        L69:
            java.lang.String r2 = r1.getName()
            r15 = r1
            r1 = r2
            goto L73
        L70:
            r2 = r16
            r15 = r2
        L73:
            java.util.regex.Pattern r2 = f.i.a.a.l1.k0.w.f5673i
            java.util.regex.Matcher r1 = r2.matcher(r1)
            boolean r2 = r1.matches()
            if (r2 != 0) goto L80
            return r6
        L80:
            java.lang.String r2 = r1.group(r5)
            int r2 = java.lang.Integer.parseInt(r2)
            android.util.SparseArray<java.lang.String> r0 = r0.b
            java.lang.Object r0 = r0.get(r2)
            r8 = r0
            java.lang.String r8 = (java.lang.String) r8
            if (r8 != 0) goto L94
            return r6
        L94:
            r9 = -1
            int r0 = (r17 > r9 ? 1 : (r17 == r9 ? 0 : -1))
            if (r0 != 0) goto La0
            long r9 = r15.length()
            r11 = r9
            goto La2
        La0:
            r11 = r17
        La2:
            r9 = 0
            int r0 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r0 != 0) goto La9
            return r6
        La9:
            java.lang.String r0 = r1.group(r4)
            long r9 = java.lang.Long.parseLong(r0)
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r19 > r4 ? 1 : (r19 == r4 ? 0 : -1))
            if (r0 != 0) goto Lc4
            java.lang.String r0 = r1.group(r3)
            long r0 = java.lang.Long.parseLong(r0)
            r13 = r0
            goto Lc6
        Lc4:
            r13 = r19
        Lc6:
            f.i.a.a.l1.k0.w r0 = new f.i.a.a.l1.k0.w
            r7 = r0
            r7.<init>(r8, r9, r11, r13, r15)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.l1.k0.w.b(java.io.File, long, long, f.i.a.a.l1.k0.n):f.i.a.a.l1.k0.w");
    }

    public static File c(File file, int i2, long j2, long j3) {
        return new File(file, i2 + "." + j2 + "." + j3 + ".v3.exo");
    }
}
