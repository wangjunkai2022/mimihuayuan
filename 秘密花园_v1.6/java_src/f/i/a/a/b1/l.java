package f.i.a.a.b1;

import com.tencent.smtt.sdk.TbsListener;
/* compiled from: MpegAudioHeader.java */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: h  reason: collision with root package name */
    public static final String[] f4132h = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: i  reason: collision with root package name */
    public static final int[] f4133i = {44100, 48000, 32000};

    /* renamed from: j  reason: collision with root package name */
    public static final int[] f4134j = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f4135k = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: l  reason: collision with root package name */
    public static final int[] f4136l = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: m  reason: collision with root package name */
    public static final int[] f4137m = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};
    public static final int[] n = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};
    public int a;
    public String b;

    /* renamed from: c  reason: collision with root package name */
    public int f4138c;

    /* renamed from: d  reason: collision with root package name */
    public int f4139d;

    /* renamed from: e  reason: collision with root package name */
    public int f4140e;

    /* renamed from: f  reason: collision with root package name */
    public int f4141f;

    /* renamed from: g  reason: collision with root package name */
    public int f4142g;

    public static int a(int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return -1;
        }
        int i8 = f4133i[i6];
        if (i3 == 2) {
            i8 /= 2;
        } else if (i3 == 0) {
            i8 /= 4;
        }
        int i9 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            return ((((i3 == 3 ? f4134j[i5 - 1] : f4135k[i5 - 1]) * 12) / i8) + i9) * 4;
        }
        if (i3 == 3) {
            i7 = i4 == 2 ? f4136l[i5 - 1] : f4137m[i5 - 1];
        } else {
            i7 = n[i5 - 1];
        }
        int i10 = TbsListener.ErrorCode.NEEDDOWNLOAD_5;
        if (i3 == 3) {
            return ((i7 * TbsListener.ErrorCode.NEEDDOWNLOAD_5) / i8) + i9;
        }
        if (i4 == 1) {
            i10 = 72;
        }
        return ((i10 * i7) / i8) + i9;
    }

    public static boolean b(int i2, l lVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if ((i2 & (-2097152)) != -2097152 || (i3 = (i2 >>> 19) & 3) == 1 || (i4 = (i2 >>> 17) & 3) == 0 || (i5 = (i2 >>> 12) & 15) == 0 || i5 == 15 || (i6 = (i2 >>> 10) & 3) == 3) {
            return false;
        }
        int i10 = f4133i[i6];
        if (i3 == 2) {
            i10 /= 2;
        } else if (i3 == 0) {
            i10 /= 4;
        }
        int i11 = (i2 >>> 9) & 1;
        if (i4 == 3) {
            i7 = i3 == 3 ? f4134j[i5 - 1] : f4135k[i5 - 1];
            i8 = (((i7 * 12) / i10) + i11) * 4;
            i9 = 384;
        } else if (i3 == 3) {
            i7 = i4 == 2 ? f4136l[i5 - 1] : f4137m[i5 - 1];
            i8 = i11 + ((i7 * TbsListener.ErrorCode.NEEDDOWNLOAD_5) / i10);
            i9 = 1152;
        } else {
            i7 = n[i5 - 1];
            int i12 = i4 == 1 ? 576 : 1152;
            i8 = i11 + (((i4 == 1 ? 72 : TbsListener.ErrorCode.NEEDDOWNLOAD_5) * i7) / i10);
            i9 = i12;
        }
        String str = f4132h[3 - i4];
        int i13 = ((i2 >> 6) & 3) == 3 ? 1 : 2;
        lVar.a = i3;
        lVar.b = str;
        lVar.f4138c = i8;
        lVar.f4139d = i10;
        lVar.f4140e = i13;
        lVar.f4141f = i7;
        lVar.f4142g = i9;
        return true;
    }
}
