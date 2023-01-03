package f.i.a.a.i1;

import android.graphics.Bitmap;
import android.text.Layout;

/* compiled from: Cue.java */
/* loaded from: classes.dex */
public class b {
    public static final b o = new b("");
    public final CharSequence a;
    public final Layout.Alignment b;

    /* renamed from: c  reason: collision with root package name */
    public final Bitmap f5227c;

    /* renamed from: d  reason: collision with root package name */
    public final float f5228d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5229e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5230f;

    /* renamed from: g  reason: collision with root package name */
    public final float f5231g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5232h;

    /* renamed from: i  reason: collision with root package name */
    public final float f5233i;

    /* renamed from: j  reason: collision with root package name */
    public final float f5234j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f5235k;

    /* renamed from: l  reason: collision with root package name */
    public final int f5236l;

    /* renamed from: m  reason: collision with root package name */
    public final int f5237m;
    public final float n;

    public b(Bitmap bitmap, float f2, int i2, float f3, int i3, float f4, float f5) {
        this(null, null, bitmap, f3, 0, i3, f2, i2, Integer.MIN_VALUE, Float.MIN_VALUE, f4, f5, false, -16777216);
    }

    public b(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4) {
        this(charSequence, alignment, f2, i2, i3, f3, i4, f4, false, -16777216);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f2, int i2, int i3, float f3, int i4, float f4, boolean z, int i5) {
        this(charSequence, alignment, null, f2, i2, i3, f3, i4, Integer.MIN_VALUE, Float.MIN_VALUE, f4, Float.MIN_VALUE, z, i5);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f2, int i2, int i3, float f3, int i4, int i5, float f4, float f5, float f6, boolean z, int i6) {
        this.a = charSequence;
        this.b = alignment;
        this.f5227c = bitmap;
        this.f5228d = f2;
        this.f5229e = i2;
        this.f5230f = i3;
        this.f5231g = f3;
        this.f5232h = i4;
        this.f5233i = f5;
        this.f5234j = f6;
        this.f5235k = z;
        this.f5236l = i6;
        this.f5237m = i5;
        this.n = f4;
    }
}
