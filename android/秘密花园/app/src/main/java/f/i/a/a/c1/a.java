package f.i.a.a.c1;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import f.i.a.a.b0;
import f.i.a.a.m1.h0;

/* compiled from: MediaCodecInfo.java */
/* loaded from: classes.dex */
public final class a {
    public final String a;
    @Nullable
    public final String b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f4521c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f4522d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f4523e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f4524f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f4525g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f4526h;

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0042, code lost:
        if (r4 == null) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0046, code lost:
        if (f.i.a.a.m1.h0.a < 21) goto L_0x0052;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x004e, code lost:
        if (r4.isFeatureSupported("secure-playback") == false) goto L_0x0052;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0050, code lost:
        r4 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0052, code lost:
        r4 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0053, code lost:
        if (r4 == false) goto L_0x0056;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0056, code lost:
        r1 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(java.lang.String r1, @androidx.annotation.Nullable java.lang.String r2, @androidx.annotation.Nullable java.lang.String r3, @androidx.annotation.Nullable android.media.MediaCodecInfo.CodecCapabilities r4, boolean r5, boolean r6, boolean r7) {
        /*
            r0 = this;
            r0.<init>()
            if (r1 == 0) goto L_0x0060
            r0.a = r1
            r0.b = r2
            r0.f4521c = r3
            r0.f4522d = r4
            r0.f4525g = r5
            r1 = 1
            r3 = 0
            if (r6 != 0) goto L_0x002a
            if (r4 == 0) goto L_0x002a
            int r5 = f.i.a.a.m1.h0.a
            r6 = 19
            if (r5 < r6) goto L_0x0025
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = r4.isFeatureSupported(r5)
            if (r5 == 0) goto L_0x0025
            r5 = 1
            goto L_0x0026
        L_0x0025:
            r5 = 0
        L_0x0026:
            if (r5 == 0) goto L_0x002a
            r5 = 1
            goto L_0x002b
        L_0x002a:
            r5 = 0
        L_0x002b:
            r0.f4523e = r5
            r5 = 21
            if (r4 == 0) goto L_0x0040
            int r6 = f.i.a.a.m1.h0.a
            if (r6 < r5) goto L_0x003f
            java.lang.String r6 = "tunneled-playback"
            boolean r6 = r4.isFeatureSupported(r6)
            if (r6 == 0) goto L_0x003f
            r6 = 1
            goto L_0x0040
        L_0x003f:
            r6 = 0
        L_0x0040:
            if (r7 != 0) goto L_0x0057
            if (r4 == 0) goto L_0x0056
            int r6 = f.i.a.a.m1.h0.a
            if (r6 < r5) goto L_0x0052
            java.lang.String r5 = "secure-playback"
            boolean r4 = r4.isFeatureSupported(r5)
            if (r4 == 0) goto L_0x0052
            r4 = 1
            goto L_0x0053
        L_0x0052:
            r4 = 0
        L_0x0053:
            if (r4 == 0) goto L_0x0056
            goto L_0x0057
        L_0x0056:
            r1 = 0
        L_0x0057:
            r0.f4524f = r1
            boolean r1 = f.i.a.a.m1.r.j(r2)
            r0.f4526h = r1
            return
        L_0x0060:
            r1 = 0
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.c1.a.<init>(java.lang.String, java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean, boolean):void");
    }

    @TargetApi(21)
    public static boolean a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i2, int i3, double d2) {
        if (d2 == -1.0d || d2 <= 0.0d) {
            return videoCapabilities.isSizeSupported(i2, i3);
        }
        return videoCapabilities.areSizeAndRateSupported(i2, i3, Math.floor(d2));
    }

    public static a f(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new a(str, str2, str3, codecCapabilities, false, z, z2);
    }

    /* JADX WARNING: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0060 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0061  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean b(f.i.a.a.b0 r10) throws f.i.a.a.c1.d.c {
        /*
        // Method dump skipped, instructions count: 340
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.c1.a.b(f.i.a.a.b0):boolean");
    }

    public boolean c(b0 b0Var) {
        if (this.f4526h) {
            return this.f4523e;
        }
        Pair<Integer, Integer> c2 = d.c(b0Var.f4010f);
        return c2 != null && ((Integer) c2.first).intValue() == 42;
    }

    public boolean d(b0 b0Var, b0 b0Var2, boolean z) {
        if (!this.f4526h) {
            if ("audio/mp4a-latm".equals(this.b) && b0Var.f4013i.equals(b0Var2.f4013i) && b0Var.v == b0Var2.v && b0Var.w == b0Var2.w) {
                Pair<Integer, Integer> c2 = d.c(b0Var.f4010f);
                Pair<Integer, Integer> c3 = d.c(b0Var2.f4010f);
                if (!(c2 == null || c3 == null)) {
                    int intValue = ((Integer) c2.first).intValue();
                    int intValue2 = ((Integer) c3.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return true;
                    }
                    return false;
                }
            }
            return false;
        } else if (!b0Var.f4013i.equals(b0Var2.f4013i) || b0Var.q != b0Var2.q || ((!this.f4523e && (b0Var.n != b0Var2.n || b0Var.o != b0Var2.o)) || ((z || b0Var2.u != null) && !h0.b(b0Var.u, b0Var2.u)))) {
            return false;
        } else {
            return true;
        }
    }

    @TargetApi(21)
    public boolean e(int i2, int i3, double d2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4522d;
        if (codecCapabilities == null) {
            String str = h0.f5664e;
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            String str2 = h0.f5664e;
            return false;
        } else if (a(videoCapabilities, i2, i3, d2)) {
            return true;
        } else {
            if (i2 >= i3 || !a(videoCapabilities, i3, i2, d2)) {
                String str3 = h0.f5664e;
                return false;
            }
            String str4 = h0.f5664e;
            return true;
        }
    }

    public String toString() {
        return this.a;
    }
}
