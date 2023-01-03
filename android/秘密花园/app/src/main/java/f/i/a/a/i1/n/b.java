package f.i.a.a.i1.n;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.tencent.smtt.sdk.TbsListener;
import com.umeng.commonsdk.proguard.ap;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.t;

/* compiled from: DvbParser.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: h  reason: collision with root package name */
    public static final byte[] f5286h = {0, 7, 8, ap.f3041m};

    /* renamed from: i  reason: collision with root package name */
    public static final byte[] f5287i = {0, 119, -120, -1};

    /* renamed from: j  reason: collision with root package name */
    public static final byte[] f5288j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    public final Paint a;
    public final Paint b;

    /* renamed from: c  reason: collision with root package name */
    public final Canvas f5289c = new Canvas();

    /* renamed from: d  reason: collision with root package name */
    public final C0074b f5290d = new C0074b(719, 575, 0, 719, 0, 575);

    /* renamed from: e  reason: collision with root package name */
    public final a f5291e = new a(0, new int[]{0, -1, -16777216, -8421505}, b(), c());

    /* renamed from: f  reason: collision with root package name */
    public final h f5292f;

    /* renamed from: g  reason: collision with root package name */
    public Bitmap f5293g;

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class a {
        public final int a;
        public final int[] b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f5294c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f5295d;

        public a(int i2, int[] iArr, int[] iArr2, int[] iArr3) {
            this.a = i2;
            this.b = iArr;
            this.f5294c = iArr2;
            this.f5295d = iArr3;
        }
    }

    /* compiled from: DvbParser.java */
    /* renamed from: f.i.a.a.i1.n.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0074b {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5296c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5297d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5298e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5299f;

        public C0074b(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.a = i2;
            this.b = i3;
            this.f5296c = i4;
            this.f5297d = i5;
            this.f5298e = i6;
            this.f5299f = i7;
        }
    }

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class c {
        public final int a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f5300c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f5301d;

        public c(int i2, boolean z, byte[] bArr, byte[] bArr2) {
            this.a = i2;
            this.b = z;
            this.f5300c = bArr;
            this.f5301d = bArr2;
        }
    }

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class d {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<e> f5302c;

        public d(int i2, int i3, int i4, SparseArray<e> sparseArray) {
            this.a = i3;
            this.b = i4;
            this.f5302c = sparseArray;
        }
    }

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class e {
        public final int a;
        public final int b;

        public e(int i2, int i3) {
            this.a = i2;
            this.b = i3;
        }
    }

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class f {
        public final int a;
        public final boolean b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5303c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5304d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5305e;

        /* renamed from: f  reason: collision with root package name */
        public final int f5306f;

        /* renamed from: g  reason: collision with root package name */
        public final int f5307g;

        /* renamed from: h  reason: collision with root package name */
        public final int f5308h;

        /* renamed from: i  reason: collision with root package name */
        public final int f5309i;

        /* renamed from: j  reason: collision with root package name */
        public final SparseArray<g> f5310j;

        public f(int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, SparseArray<g> sparseArray) {
            this.a = i2;
            this.b = z;
            this.f5303c = i3;
            this.f5304d = i4;
            this.f5305e = i6;
            this.f5306f = i7;
            this.f5307g = i8;
            this.f5308h = i9;
            this.f5309i = i10;
            this.f5310j = sparseArray;
        }
    }

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class g {
        public final int a;
        public final int b;

        public g(int i2, int i3, int i4, int i5, int i6, int i7) {
            this.a = i4;
            this.b = i5;
        }
    }

    /* compiled from: DvbParser.java */
    /* loaded from: classes.dex */
    public static final class h {
        public final int a;
        public final int b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray<f> f5311c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray<a> f5312d = new SparseArray<>();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray<c> f5313e = new SparseArray<>();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray<a> f5314f = new SparseArray<>();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray<c> f5315g = new SparseArray<>();

        /* renamed from: h  reason: collision with root package name */
        public C0074b f5316h;

        /* renamed from: i  reason: collision with root package name */
        public d f5317i;

        public h(int i2, int i3) {
            this.a = i2;
            this.b = i3;
        }
    }

    public b(int i2, int i3) {
        Paint paint = new Paint();
        this.a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.a.setPathEffect(null);
        Paint paint2 = new Paint();
        this.b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.b.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.b.setPathEffect(null);
        this.f5292f = new h(i2, i3);
    }

    public static byte[] a(int i2, int i3, t tVar) {
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) tVar.f(i3);
        }
        return bArr;
    }

    public static int[] b() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i2 = 1; i2 < 16; i2++) {
            if (i2 < 8) {
                iArr[i2] = d(255, (i2 & 1) != 0 ? 255 : 0, (i2 & 2) != 0 ? 255 : 0, (i2 & 4) != 0 ? 255 : 0);
            } else {
                int i3 = 127;
                int i4 = (i2 & 1) != 0 ? 127 : 0;
                int i5 = (i2 & 2) != 0 ? 127 : 0;
                if ((i2 & 4) == 0) {
                    i3 = 0;
                }
                iArr[i2] = d(255, i4, i5, i3);
            }
        }
        return iArr;
    }

    public static int[] c() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            int i3 = 255;
            if (i2 < 8) {
                int i4 = (i2 & 1) != 0 ? 255 : 0;
                int i5 = (i2 & 2) != 0 ? 255 : 0;
                if ((i2 & 4) == 0) {
                    i3 = 0;
                }
                iArr[i2] = d(63, i4, i5, i3);
            } else {
                int i6 = i2 & 136;
                int i7 = TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE;
                int i8 = 85;
                if (i6 == 0) {
                    int i9 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE : 0);
                    int i10 = ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE : 0);
                    if ((i2 & 4) == 0) {
                        i8 = 0;
                    }
                    if ((i2 & 64) == 0) {
                        i7 = 0;
                    }
                    iArr[i2] = d(255, i9, i10, i8 + i7);
                } else if (i6 != 8) {
                    int i11 = 43;
                    if (i6 == 128) {
                        int i12 = ((i2 & 1) != 0 ? 43 : 0) + 127 + ((i2 & 16) != 0 ? 85 : 0);
                        int i13 = ((i2 & 2) != 0 ? 43 : 0) + 127 + ((i2 & 32) != 0 ? 85 : 0);
                        if ((i2 & 4) == 0) {
                            i11 = 0;
                        }
                        int i14 = i11 + 127;
                        if ((i2 & 64) == 0) {
                            i8 = 0;
                        }
                        iArr[i2] = d(255, i12, i13, i14 + i8);
                    } else if (i6 == 136) {
                        int i15 = ((i2 & 1) != 0 ? 43 : 0) + ((i2 & 16) != 0 ? 85 : 0);
                        int i16 = ((i2 & 2) != 0 ? 43 : 0) + ((i2 & 32) != 0 ? 85 : 0);
                        if ((i2 & 4) == 0) {
                            i11 = 0;
                        }
                        if ((i2 & 64) == 0) {
                            i8 = 0;
                        }
                        iArr[i2] = d(255, i15, i16, i11 + i8);
                    }
                } else {
                    int i17 = ((i2 & 1) != 0 ? 85 : 0) + ((i2 & 16) != 0 ? TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE : 0);
                    int i18 = ((i2 & 2) != 0 ? 85 : 0) + ((i2 & 32) != 0 ? TbsListener.ErrorCode.NEEDDOWNLOAD_TRUE : 0);
                    if ((i2 & 4) == 0) {
                        i8 = 0;
                    }
                    if ((i2 & 64) == 0) {
                        i7 = 0;
                    }
                    iArr[i2] = d(127, i17, i18, i8 + i7);
                }
            }
        }
        return iArr;
    }

    public static int d(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:62:0x0108 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:106:0x01b6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARNING: Removed duplicated region for block: B:105:0x01b4 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:113:0x01e6 A[LOOP:3: B:82:0x0155->B:113:0x01e6, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:136:0x012f A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:137:0x01e0 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0106 A[ADDED_TO_REGION] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0135 A[LOOP:2: B:37:0x009f->B:69:0x0135, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x015c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void e(byte[] r22, int[] r23, int r24, int r25, int r26, android.graphics.Paint r27, android.graphics.Canvas r28) {
        /*
        // Method dump skipped, instructions count: 518
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.n.b.e(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    public static a f(t tVar, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 8;
        int f2 = tVar.f(8);
        tVar.l(8);
        int i8 = i2 - 2;
        int i9 = 4;
        int[] iArr = {0, -1, -16777216, -8421505};
        int[] b = b();
        int[] c2 = c();
        while (i8 > 0) {
            int f3 = tVar.f(i7);
            int f4 = tVar.f(i7);
            int i10 = i8 - 2;
            int[] iArr2 = (f4 & 128) != 0 ? iArr : (f4 & 64) != 0 ? b : c2;
            if ((f4 & 1) != 0) {
                i6 = tVar.f(i7);
                i5 = tVar.f(i7);
                i4 = tVar.f(i7);
                i3 = tVar.f(i7);
                i8 = i10 - 4;
            } else {
                int f5 = tVar.f(i9) << i9;
                i3 = tVar.f(2) << 6;
                i8 = i10 - 2;
                i5 = f5;
                i6 = tVar.f(6) << 2;
                i4 = tVar.f(i9) << i9;
            }
            if (i6 == 0) {
                i5 = 0;
                i4 = 0;
                i3 = 255;
            }
            double d2 = (double) i6;
            double d3 = (double) (i5 - 128);
            double d4 = (double) (i4 - 128);
            iArr2[f3] = d((byte) (255 - (i3 & 255)), h0.o((int) ((1.402d * d3) + d2), 0, 255), h0.o((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), h0.o((int) ((d4 * 1.772d) + d2), 0, 255));
            iArr = iArr;
            f2 = f2;
            i7 = 8;
            i9 = 4;
        }
        return new a(f2, iArr, b, c2);
    }

    public static c g(t tVar) {
        byte[] bArr;
        int f2 = tVar.f(16);
        tVar.l(4);
        int f3 = tVar.f(2);
        boolean e2 = tVar.e();
        tVar.l(1);
        byte[] bArr2 = null;
        if (f3 == 1) {
            tVar.l(tVar.f(8) * 16);
        } else if (f3 == 0) {
            int f4 = tVar.f(16);
            int f5 = tVar.f(16);
            if (f4 > 0) {
                bArr2 = new byte[f4];
                tVar.h(bArr2, 0, f4);
            }
            if (f5 > 0) {
                bArr = new byte[f5];
                tVar.h(bArr, 0, f5);
                return new c(f2, e2, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(f2, e2, bArr2, bArr);
    }
}
