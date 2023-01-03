package f.i.a.a.b1.s;

import f.i.a.a.b1.d;
import java.io.IOException;
import java.util.ArrayDeque;

/* compiled from: DefaultEbmlReader.java */
/* loaded from: classes.dex */
public final class a implements c {
    public final byte[] a = new byte[8];
    public final ArrayDeque<b> b = new ArrayDeque<>();

    /* renamed from: c  reason: collision with root package name */
    public final f f4092c = new f();

    /* renamed from: d  reason: collision with root package name */
    public b f4093d;

    /* renamed from: e  reason: collision with root package name */
    public int f4094e;

    /* renamed from: f  reason: collision with root package name */
    public int f4095f;

    /* renamed from: g  reason: collision with root package name */
    public long f4096g;

    /* compiled from: DefaultEbmlReader.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final long b;

        public b(int i2, long j2, C0054a aVar) {
            this.a = i2;
            this.b = j2;
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:264:0x051c, code lost:
        if (r0 == 0) goto L_0x0567;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:275:0x0552, code lost:
        if (r0.j() == f.i.a.a.b1.s.d.e0.getLeastSignificantBits()) goto L_0x0554;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:280:0x055f, code lost:
        if (r0 != 0) goto L_0x0562;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:281:0x0562, code lost:
        r2 = "audio/raw";
        r6 = null;
     */
    /* JADX WARNING: Removed duplicated region for block: B:161:0x0370  */
    /* JADX WARNING: Removed duplicated region for block: B:279:0x0559  */
    /* JADX WARNING: Removed duplicated region for block: B:372:0x075b  */
    /* JADX WARNING: Removed duplicated region for block: B:373:0x075d  */
    /* JADX WARNING: Removed duplicated region for block: B:376:0x0765  */
    /* JADX WARNING: Removed duplicated region for block: B:377:0x078a  */
    /* JADX WARNING: Removed duplicated region for block: B:473:0x09e8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(f.i.a.a.b1.d r39) throws java.io.IOException, java.lang.InterruptedException {
        /*
        // Method dump skipped, instructions count: 3514
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.b1.s.a.a(f.i.a.a.b1.d):boolean");
    }

    public final double b(d dVar, int i2) throws IOException, InterruptedException {
        long c2 = c(dVar, i2);
        if (i2 == 4) {
            return (double) Float.intBitsToFloat((int) c2);
        }
        return Double.longBitsToDouble(c2);
    }

    public final long c(d dVar, int i2) throws IOException, InterruptedException {
        dVar.g(this.a, 0, i2, false);
        long j2 = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            j2 = (j2 << 8) | ((long) (this.a[i3] & 255));
        }
        return j2;
    }
}
