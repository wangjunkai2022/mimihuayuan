package f.i.a.a.i1.m;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.core.view.InputDeviceCompat;
import com.tencent.smtt.sdk.TbsListener;
import f.i.a.a.i1.b;
import f.i.a.a.i1.e;
import f.i.a.a.m1.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: Cea608Decoder.java */
/* loaded from: classes.dex */
public final class a extends d {

    /* renamed from: h  reason: collision with root package name */
    public final int f5247h;

    /* renamed from: i  reason: collision with root package name */
    public final int f5248i;

    /* renamed from: j  reason: collision with root package name */
    public final int f5249j;

    /* renamed from: m  reason: collision with root package name */
    public List<b> f5252m;
    public List<b> n;
    public int o;
    public int p;
    public boolean q;
    public boolean r;
    public byte s;
    public byte t;
    public boolean v;
    public static final int[] w = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] x = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] y = {-1, -16711936, -16776961, -16711681, -65536, InputDeviceCompat.SOURCE_ANY, -65281};
    public static final int[] z = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, TbsListener.ErrorCode.DECOUPLE_INSTLL_SUCCESS, 93, TbsListener.ErrorCode.DECOUPLE_TPATCH_INSTALL_SUCCESS, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, TbsListener.ErrorCode.RENAME_FAIL, 247, TbsListener.ErrorCode.DEXOPT_EXCEPTION, TbsListener.ErrorCode.TPATCH_BACKUP_NOT_VALID, 9632};
    public static final int[] A = {TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_4, TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_6, 189, 191, 8482, TbsListener.ErrorCode.STARTDOWNLOAD_3, TbsListener.ErrorCode.STARTDOWNLOAD_4, 9834, TbsListener.ErrorCode.EXCEED_INCR_UPDATE, 32, TbsListener.ErrorCode.INSTALL_SUCCESS_AND_RELEASE_LOCK, TbsListener.ErrorCode.DEXOAT_EXCEPTION, TbsListener.ErrorCode.DECOUPLE_INCURUPDATE_SUCCESS, TbsListener.ErrorCode.TPATCH_FAIL, 244, 251};
    public static final int[] B = {193, TbsListener.ErrorCode.EXCEED_UNZIP_RETRY_NUM, TbsListener.ErrorCode.EXCEED_COPY_RETRY_NUM, TbsListener.ErrorCode.INCR_UPDATE_EXCEPTION, 220, 252, 8216, TbsListener.ErrorCode.STARTDOWNLOAD_2, 42, 39, 8212, TbsListener.ErrorCode.STARTDOWNLOAD_10, 8480, 8226, 8220, 8221, 192, 194, 199, 200, TbsListener.ErrorCode.APK_PATH_ERROR, TbsListener.ErrorCode.APK_VERSION_ERROR, TbsListener.ErrorCode.DECOUPLE_INCURUPDATE_FAIL, TbsListener.ErrorCode.UNZIP_IO_ERROR, TbsListener.ErrorCode.UNZIP_OTHER_ERROR, TbsListener.ErrorCode.DECOUPLE_TPATCH_FAIL, TbsListener.ErrorCode.COPY_FAIL, 217, 249, TbsListener.ErrorCode.RENAME_EXCEPTION, TbsListener.ErrorCode.NEEDDOWNLOAD_FALSE_1, 187};
    public static final int[] C = {195, TbsListener.ErrorCode.HOST_CONTEXT_IS_NULL, TbsListener.ErrorCode.UNZIP_DIR_ERROR, TbsListener.ErrorCode.APK_INVALID, TbsListener.ErrorCode.TPATCH_INSTALL_SUCCESS, TbsListener.ErrorCode.ROM_NOT_ENOUGH, TbsListener.ErrorCode.TPATCH_ENABLE_EXCEPTION, TbsListener.ErrorCode.COPY_SRCDIR_ERROR, 245, 123, TbsListener.ErrorCode.DOWNLOAD_THROWABLE, 92, 94, 95, 124, TbsListener.ErrorCode.PV_UPLOAD_ERROR, 196, TbsListener.ErrorCode.INCR_ERROR_DETAIL, TbsListener.ErrorCode.COPY_TMPDIR_ERROR, 246, TbsListener.ErrorCode.EXCEED_LZMA_RETRY_NUM, TbsListener.ErrorCode.STARTDOWNLOAD_6, TbsListener.ErrorCode.STARTDOWNLOAD_5, 9474, 197, TbsListener.ErrorCode.INSTALL_FROM_UNZIP, TbsListener.ErrorCode.INCR_UPDATE_ERROR, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] D = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: g  reason: collision with root package name */
    public final u f5246g = new u();

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList<C0072a> f5250k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    public C0072a f5251l = new C0072a(0, 4);
    public int u = 0;

    /* compiled from: Cea608Decoder.java */
    /* renamed from: f.i.a.a.i1.m.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0072a {
        public final List<C0073a> a = new ArrayList();
        public final List<SpannableString> b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        public final StringBuilder f5253c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        public int f5254d;

        /* renamed from: e  reason: collision with root package name */
        public int f5255e;

        /* renamed from: f  reason: collision with root package name */
        public int f5256f;

        /* renamed from: g  reason: collision with root package name */
        public int f5257g;

        /* renamed from: h  reason: collision with root package name */
        public int f5258h;

        /* compiled from: Cea608Decoder.java */
        /* renamed from: f.i.a.a.i1.m.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0073a {
            public final int a;
            public final boolean b;

            /* renamed from: c  reason: collision with root package name */
            public int f5259c;

            public C0073a(int i2, boolean z, int i3) {
                this.a = i2;
                this.b = z;
                this.f5259c = i3;
            }
        }

        public C0072a(int i2, int i3) {
            e(i2);
            this.f5258h = i3;
        }

        public void a() {
            int length = this.f5253c.length();
            if (length > 0) {
                this.f5253c.delete(length - 1, length);
                for (int size = this.a.size() - 1; size >= 0; size--) {
                    C0073a aVar = this.a.get(size);
                    int i2 = aVar.f5259c;
                    if (i2 == length) {
                        aVar.f5259c = i2 - 1;
                    } else {
                        return;
                    }
                }
            }
        }

        public b b(int i2) {
            float f2;
            int i3;
            int i4;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i5 = 0; i5 < this.b.size(); i5++) {
                spannableStringBuilder.append((CharSequence) this.b.get(i5));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) c());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i6 = this.f5255e + this.f5256f;
            int length = (32 - i6) - spannableStringBuilder.length();
            int i7 = i6 - length;
            if (i2 == Integer.MIN_VALUE) {
                if (this.f5257g != 2 || (Math.abs(i7) >= 3 && length >= 0)) {
                    i2 = (this.f5257g != 2 || i7 <= 0) ? 0 : 2;
                } else {
                    i2 = 1;
                }
            }
            if (i2 != 1) {
                if (i2 == 2) {
                    i6 = 32 - length;
                }
                f2 = ((((float) i6) / 32.0f) * 0.8f) + 0.1f;
            } else {
                f2 = 0.5f;
            }
            if (this.f5257g == 1 || (i4 = this.f5254d) > 7) {
                i4 = (this.f5254d - 15) - 2;
                i3 = 2;
            } else {
                i3 = 0;
            }
            return new b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, (float) i4, 1, i3, f2, i2, Float.MIN_VALUE);
        }

        public final SpannableString c() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f5253c);
            int length = spannableStringBuilder.length();
            int i2 = 0;
            int i3 = -1;
            int i4 = -1;
            int i5 = 0;
            int i6 = -1;
            boolean z = false;
            int i7 = -1;
            while (i2 < this.a.size()) {
                C0073a aVar = this.a.get(i2);
                boolean z2 = aVar.b;
                int i8 = aVar.a;
                if (i8 != 8) {
                    boolean z3 = i8 == 7;
                    if (i8 != 7) {
                        i7 = a.y[i8];
                    }
                    z = z3;
                }
                int i9 = aVar.f5259c;
                i2++;
                if (i9 != (i2 < this.a.size() ? this.a.get(i2).f5259c : length)) {
                    if (i3 != -1 && !z2) {
                        spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i9, 33);
                        i3 = -1;
                    } else if (i3 == -1 && z2) {
                        i3 = i9;
                    }
                    if (i4 != -1 && !z) {
                        spannableStringBuilder.setSpan(new StyleSpan(2), i4, i9, 33);
                        i4 = -1;
                    } else if (i4 == -1 && z) {
                        i4 = i9;
                    }
                    if (i7 != i6) {
                        if (i6 != -1) {
                            spannableStringBuilder.setSpan(new ForegroundColorSpan(i6), i5, i9, 33);
                        }
                        i5 = i9;
                        i6 = i7;
                    }
                }
            }
            if (!(i3 == -1 || i3 == length)) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, length, 33);
            }
            if (!(i4 == -1 || i4 == length)) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, length, 33);
            }
            if (!(i5 == length || i6 == -1)) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i6), i5, length, 33);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public boolean d() {
            return this.a.isEmpty() && this.b.isEmpty() && this.f5253c.length() == 0;
        }

        public void e(int i2) {
            this.f5257g = i2;
            this.a.clear();
            this.b.clear();
            this.f5253c.setLength(0);
            this.f5254d = 15;
            this.f5255e = 0;
            this.f5256f = 0;
        }
    }

    public a(String str, int i2) {
        this.f5247h = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i2 == 1) {
            this.f5249j = 0;
            this.f5248i = 0;
        } else if (i2 == 2) {
            this.f5249j = 1;
            this.f5248i = 0;
        } else if (i2 == 3) {
            this.f5249j = 0;
            this.f5248i = 1;
        } else if (i2 != 4) {
            this.f5249j = 0;
            this.f5248i = 0;
        } else {
            this.f5249j = 1;
            this.f5248i = 1;
        }
        l(0);
        k();
        this.v = true;
    }

    @Override // f.i.a.a.i1.m.d, f.i.a.a.y0.c
    public void a() {
    }

    @Override // f.i.a.a.i1.m.d
    public e f() {
        List<b> list = this.f5252m;
        this.n = list;
        return new e(list);
    }

    @Override // f.i.a.a.i1.m.d, f.i.a.a.y0.c
    public void flush() {
        super.flush();
        this.f5252m = null;
        this.n = null;
        l(0);
        m(4);
        k();
        this.q = false;
        this.r = false;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:207:0x008e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:217:0x0014 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0068  */
    @Override // f.i.a.a.i1.m.d
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void g(f.i.a.a.i1.i r14) {
        /*
        // Method dump skipped, instructions count: 766
        */
        throw new UnsupportedOperationException("Method not decompiled: f.i.a.a.i1.m.a.g(f.i.a.a.i1.i):void");
    }

    @Override // f.i.a.a.i1.m.d
    public boolean h() {
        return this.f5252m != this.n;
    }

    public final List<b> j() {
        int size = this.f5250k.size();
        ArrayList arrayList = new ArrayList(size);
        int i2 = 2;
        for (int i3 = 0; i3 < size; i3++) {
            b b = this.f5250k.get(i3).b(Integer.MIN_VALUE);
            arrayList.add(b);
            if (b != null) {
                i2 = Math.min(i2, b.f5232h);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            b bVar = (b) arrayList.get(i4);
            if (bVar != null) {
                if (bVar.f5232h != i2) {
                    bVar = this.f5250k.get(i4).b(i2);
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    public final void k() {
        this.f5251l.e(this.o);
        this.f5250k.clear();
        this.f5250k.add(this.f5251l);
    }

    public final void l(int i2) {
        int i3 = this.o;
        if (i3 != i2) {
            this.o = i2;
            if (i2 == 3) {
                for (int i4 = 0; i4 < this.f5250k.size(); i4++) {
                    this.f5250k.get(i4).f5257g = i2;
                }
                return;
            }
            k();
            if (i3 == 3 || i2 == 1 || i2 == 0) {
                this.f5252m = Collections.emptyList();
            }
        }
    }

    public final void m(int i2) {
        this.p = i2;
        this.f5251l.f5258h = i2;
    }
}
