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
    public final Bitmap f5302c;

    /* renamed from: d  reason: collision with root package name */
    public final float f5303d;

    /* renamed from: e  reason: collision with root package name */
    public final int f5304e;

    /* renamed from: f  reason: collision with root package name */
    public final int f5305f;

    /* renamed from: g  reason: collision with root package name */
    public final float f5306g;

    /* renamed from: h  reason: collision with root package name */
    public final int f5307h;

    /* renamed from: i  reason: collision with root package name */
    public final float f5308i;

    /* renamed from: j  reason: collision with root package name */
    public final float f5309j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f5310k;

    /* renamed from: l  reason: collision with root package name */
    public final int f5311l;

    /* renamed from: m  reason: collision with root package name */
    public final int f5312m;
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
        this.f5302c = bitmap;
        this.f5303d = f2;
        this.f5304e = i2;
        this.f5305f = i3;
        this.f5306g = f3;
        this.f5307h = i4;
        this.f5308i = f5;
        this.f5309j = f6;
        this.f5310k = z;
        this.f5311l = i6;
        this.f5312m = i5;
        this.n = f4;
    }
}
