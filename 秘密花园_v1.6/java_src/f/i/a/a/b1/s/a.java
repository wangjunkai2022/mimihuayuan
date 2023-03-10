package f.i.a.a.b1.s;

import java.io.IOException;
import java.util.ArrayDeque;
/* compiled from: DefaultEbmlReader.java */
/* loaded from: classes.dex */
public final class a implements c {
    public final byte[] a = new byte[8];
    public final ArrayDeque<b> b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    public final f f4176c = new f();

    /* renamed from: d  reason: collision with root package name */
    public f.i.a.a.b1.s.b f4177d;

    /* renamed from: e  reason: collision with root package name */
    public int f4178e;

    /* renamed from: f  reason: collision with root package name */
    public int f4179f;

    /* renamed from: g  reason: collision with root package name */
    public long f4180g;

    /* compiled from: DefaultEbmlReader.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final long b;

        public b(int i2, long j2, C0061a c0061a) {
            this.a = i2;
            this.b = j2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x051c, code lost:
        if (r0 == 0) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0552, code lost:
        if (r0.j() == f.i.a.a.b1.s.d.e0.getLeastSignificantBits()) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x055f, code lost:
        if (r0 != 0) goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0562, code lost:
        r2 = "audio/raw";
        r6 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0559  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x075b  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x075d  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0765  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x078a  */
    /* JADX WARN: Removed duplicated region for block: B:483:0x09e8  */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v49, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v51 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(f.i.a.a.b1.d r39) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 3514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.s.a.a(f.i.a.a.b1.d):boolean");
    }

    public final double b(f.i.a.a.b1.d dVar, int i2) throws IOException, InterruptedException {
        long c2 = c(dVar, i2);
        if (i2 == 4) {
            return Float.intBitsToFloat((int) c2);
        }
        return Double.longBitsToDouble(c2);
    }

    public final long c(f.i.a.a.b1.d dVar, int i2) throws IOException, InterruptedException {
        dVar.g(this.a, 0, i2, false);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | (this.a[i3] & 255);
        }
        return j2;
    }
}
