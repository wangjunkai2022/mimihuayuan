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
    public final Bitmap f5311c;

    /* renamed from: d  reason: collision with root package name */
    public final float f5312d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5313e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5314f;

    /* renamed from: g  reason: collision with root package name */
    public final float f5315g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5316h;

    /* renamed from: i  reason: collision with root package name */
    public final float f5317i;

    /* renamed from: j  reason: collision with root package name */
    public final float f5318j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f5319k;

    /* renamed from: l  reason: collision with root package name */
    public final int f5320l;

    /* renamed from: m  reason: collision with root package name */
    public final int f5321m;
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
        this.f5311c = bitmap;
        this.f5312d = f2;
        this.f5313e = i2;
        this.f5314f = i3;
        this.f5315g = f3;
        this.f5316h = i4;
        this.f5317i = f5;
        this.f5318j = f6;
        this.f5319k = z;
        this.f5320l = i6;
        this.f5321m = i5;
        this.n = f4;
    }
}
