package f.i.a.a.m1;

import com.umeng.commonsdk.proguard.ac;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* compiled from: NalUnitUtil.java */
/* loaded from: classes.dex */
public final class s {
    public static final byte[] a = {0, 0, 0, 1};
    public static final float[] b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c  reason: collision with root package name */
    public static final Object f5685c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static int[] f5686d = new int[10];

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f5687c;

        public a(int i2, int i3, boolean z) {
            this.a = i2;
            this.b = i3;
            this.f5687c = z;
        }
    }

    /* compiled from: NalUnitUtil.java */
    /* loaded from: classes.dex */
    public static final class b {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5688c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5689d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5690e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5691f;

        /* renamed from: g  reason: collision with root package name */
        public final float f5692g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f5693h;

        /* renamed from: i  reason: collision with root package name */
        public final boolean f5694i;

        /* renamed from: j  reason: collision with root package name */
        public final int f5695j;

        /* renamed from: k  reason: collision with root package name */
        public final int f5696k;

        /* renamed from: l  reason: collision with root package name */
        public final int f5697l;

        /* renamed from: m  reason: collision with root package name */
        public final boolean f5698m;

        public b(int i2, int i3, int i4, int i5, int i6, int i7, float f2, boolean z, boolean z2, int i8, int i9, int i10, boolean z3) {
            this.a = i2;
            this.b = i3;
            this.f5688c = i4;
            this.f5689d = i5;
            this.f5690e = i6;
            this.f5691f = i7;
            this.f5692g = f2;
            this.f5693h = z;
            this.f5694i = z2;
            this.f5695j = i8;
            this.f5696k = i9;
            this.f5697l = i10;
            this.f5698m = z3;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static void b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 < position) {
                int i5 = byteBuffer.get(i2) & 255;
                if (i3 == 3) {
                    if (i5 == 1 && (byteBuffer.get(i4) & ac.f3004j) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i2 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                } else if (i5 == 0) {
                    i3++;
                }
                if (i5 != 0) {
                    i3 = 0;
                }
                i2 = i4;
            } else {
                byteBuffer.clear();
                return;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:66:0x00a3, code lost:
        r8 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int c(byte[] r7, int r8, int r9, boolean[] r10) {
        /*
        // Method dump skipped, instructions count: 200
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.m1.s.c(byte[], int, int, boolean[]):int");
    }

    public static boolean d(String str, byte b2) {
        if ("video/avc".equals(str) && (b2 & ac.f3004j) == 6) {
            return true;
        }
        if (!"video/hevc".equals(str) || ((b2 & 126) >> 1) != 39) {
            return false;
        }
        return true;
    }

    public static a e(byte[] bArr, int i2, int i3) {
        v vVar = new v(bArr, i2, i3);
        vVar.j(8);
        int f2 = vVar.f();
        int f3 = vVar.f();
        vVar.i();
        return new a(f2, f3, vVar.d());
    }

    /* JADX WARN: Type inference failed for: r17v0, types: [int, boolean] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0103  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x014f  */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x0162  */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static f.i.a.a.m1.s.b f(byte[] r21, int r22, int r23) {
        /*
        // Method dump skipped, instructions count: 375
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.m1.s.f(byte[], int, int):f.i.a.a.m1.s$b");
    }

    public static int g(byte[] bArr, int i2) {
        int i3;
        synchronized (f5685c) {
            int i4 = 0;
            int i5 = 0;
            while (i4 < i2) {
                while (true) {
                    if (i4 >= i2 - 2) {
                        i4 = i2;
                        break;
                    }
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 3) {
                        break;
                    }
                    i4++;
                }
                if (i4 < i2) {
                    if (f5686d.length <= i5) {
                        f5686d = Arrays.copyOf(f5686d, f5686d.length * 2);
                    }
                    i5++;
                    f5686d[i5] = i4;
                    i4 += 3;
                }
            }
            i3 = i2 - i5;
            int i6 = 0;
            int i7 = 0;
            for (int i8 = 0; i8 < i5; i8++) {
                int i9 = f5686d[i8] - i7;
                System.arraycopy(bArr, i7, bArr, i6, i9);
                int i10 = i6 + i9;
                int i11 = i10 + 1;
                bArr[i10] = 0;
                i6 = i11 + 1;
                bArr[i11] = 0;
                i7 += i9 + 3;
            }
            System.arraycopy(bArr, i7, bArr, i6, i3 - i6);
        }
        return i3;
    }
}
