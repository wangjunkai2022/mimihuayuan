package f.i.a.a.i1.s;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.core.graphics.TypefaceCompatApi28Impl;
import androidx.recyclerview.widget.ItemTouchHelper;
import f.i.a.a.i1.b;
import f.i.a.a.i1.c;
import f.i.a.a.i1.e;
import f.i.a.a.i1.g;
import f.i.a.a.m1.h0;
import f.i.a.a.m1.u;
import java.nio.charset.Charset;
import java.util.List;

/* compiled from: Tx3gDecoder.java */
/* loaded from: classes.dex */
public final class a extends c {
    public static final int u = h0.C("styl");
    public static final int v = h0.C("tbox");
    public final u n = new u();
    public boolean o;
    public int p;
    public int q;
    public String r;
    public float s;
    public int t;

    public a(List<byte[]> list) {
        super("Tx3gDecoder");
        String str = TypefaceCompatApi28Impl.DEFAULT_FAMILY;
        boolean z = false;
        if (list != null && list.size() == 1 && (list.get(0).length == 48 || list.get(0).length == 53)) {
            byte[] bArr = list.get(0);
            this.p = bArr[24];
            this.q = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.r = "Serif".equals(h0.w(bArr, 43, bArr.length - 43)) ? "serif" : str;
            this.t = bArr[25] * 20;
            z = (bArr[0] & 32) != 0 ? true : z;
            this.o = z;
            if (z) {
                float f2 = ((float) ((bArr[11] & 255) | ((bArr[10] & 255) << 8))) / ((float) this.t);
                this.s = f2;
                this.s = h0.n(f2, 0.0f, 0.95f);
                return;
            }
            this.s = 0.85f;
            return;
        }
        this.p = 0;
        this.q = -1;
        this.r = str;
        this.o = false;
        this.s = 0.85f;
    }

    public static void l(boolean z) throws g {
        if (!z) {
            throw new g("Unexpected subtitle format.");
        }
    }

    public static void m(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4, int i5, int i6) {
        if (i2 != i3) {
            int i7 = i6 | 33;
            boolean z = true;
            boolean z2 = (i2 & 1) != 0;
            boolean z3 = (i2 & 2) != 0;
            if (z2) {
                if (z3) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i4, i5, i7);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i4, i5, i7);
                }
            } else if (z3) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, i5, i7);
            }
            if ((i2 & 4) == 0) {
                z = false;
            }
            if (z) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, i5, i7);
            }
            if (!z && !z2 && !z3) {
                spannableStringBuilder.setSpan(new StyleSpan(0), i4, i5, i7);
            }
        }
    }

    @Override // f.i.a.a.i1.c
    public e k(byte[] bArr, int i2, boolean z) throws g {
        String str;
        u uVar = this.n;
        uVar.a = bArr;
        uVar.f5701c = i2;
        uVar.b = 0;
        int i3 = 1;
        l(uVar.a() >= 2);
        int u2 = uVar.u();
        if (u2 == 0) {
            str = "";
        } else {
            if (uVar.a() >= 2) {
                byte[] bArr2 = uVar.a;
                int i4 = uVar.b;
                char c2 = (char) ((bArr2[i4 + 1] & 255) | ((bArr2[i4] & 255) << 8));
                if (c2 == 65279 || c2 == 65534) {
                    str = uVar.n(u2, Charset.forName("UTF-16"));
                }
            }
            str = uVar.n(u2, Charset.forName("UTF-8"));
        }
        if (str.isEmpty()) {
            return b.b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        m(spannableStringBuilder, this.p, 0, 0, spannableStringBuilder.length(), ItemTouchHelper.ACTION_MODE_DRAG_MASK);
        int i5 = this.q;
        int length = spannableStringBuilder.length();
        if (i5 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i5 >>> 8) | ((i5 & 255) << 24)), 0, length, 16711713);
        }
        String str2 = this.r;
        int length2 = spannableStringBuilder.length();
        if (str2 != TypefaceCompatApi28Impl.DEFAULT_FAMILY) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str2), 0, length2, 16711713);
        }
        float f2 = this.s;
        while (this.n.a() >= 8) {
            u uVar2 = this.n;
            int i6 = uVar2.b;
            int d2 = uVar2.d();
            int d3 = this.n.d();
            if (d3 == u) {
                l(this.n.a() >= 2);
                int u3 = this.n.u();
                int i7 = 0;
                while (i7 < u3) {
                    u uVar3 = this.n;
                    l(uVar3.a() >= 12);
                    int u4 = uVar3.u();
                    int u5 = uVar3.u();
                    uVar3.B(2);
                    int p = uVar3.p();
                    uVar3.B(i3);
                    int d4 = uVar3.d();
                    m(spannableStringBuilder, p, this.p, u4, u5, 0);
                    if (d4 != this.q) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan((d4 >>> 8) | ((d4 & 255) << 24)), u4, u5, 33);
                    }
                    i7++;
                    i3 = 1;
                }
            } else if (d3 == v && this.o) {
                l(this.n.a() >= 2);
                f2 = h0.n(((float) this.n.u()) / ((float) this.t), 0.0f, 0.95f);
            }
            this.n.A(i6 + d2);
            i3 = 1;
        }
        return new b(new b(spannableStringBuilder, null, f2, 0, 0, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE));
    }
}
