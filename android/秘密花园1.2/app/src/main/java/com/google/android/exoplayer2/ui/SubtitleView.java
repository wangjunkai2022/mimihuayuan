package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import androidx.annotation.Nullable;
import f.i.a.a.i1.a;
import f.i.a.a.i1.b;
import f.i.a.a.i1.k;
import f.i.a.a.k1.f;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class SubtitleView extends View implements k {
    public final List<f> a;
    public List<b> b;

    /* renamed from: c  reason: collision with root package name */
    public int f2425c;

    /* renamed from: d  reason: collision with root package name */
    public float f2426d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2427e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2428f;

    /* renamed from: g  reason: collision with root package name */
    public a f2429g;

    /* renamed from: h  reason: collision with root package name */
    public float f2430h;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new ArrayList();
        this.f2425c = 0;
        this.f2426d = 0.0533f;
        this.f2427e = true;
        this.f2428f = true;
        this.f2429g = a.f5297g;
        this.f2430h = 0.08f;
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private a getUserCaptionStyleV19() {
        CaptioningManager.CaptionStyle userStyle = ((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle();
        if (h0.a >= 21) {
            return new a(userStyle.hasForegroundColor() ? userStyle.foregroundColor : a.f5297g.a, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : a.f5297g.b, userStyle.hasWindowColor() ? userStyle.windowColor : a.f5297g.f5298c, userStyle.hasEdgeType() ? userStyle.edgeType : a.f5297g.f5299d, userStyle.hasEdgeColor() ? userStyle.edgeColor : a.f5297g.f5300e, userStyle.getTypeface());
        }
        return new a(userStyle.foregroundColor, userStyle.backgroundColor, 0, userStyle.edgeType, userStyle.edgeColor, userStyle.getTypeface());
    }

    public final float a(int i2, float f2, int i3, int i4) {
        float f3;
        if (i2 == 0) {
            f3 = i4;
        } else if (i2 != 1) {
            if (i2 != 2) {
                return Float.MIN_VALUE;
            }
            return f2;
        } else {
            f3 = i3;
        }
        return f2 * f3;
    }

    public void b() {
        setStyle((h0.a < 19 || !((CaptioningManager) getContext().getSystemService("captioning")).isEnabled() || isInEditMode()) ? a.f5297g : getUserCaptionStyleV19());
    }

    public void c() {
        setFractionalTextSize(((h0.a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x044e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dispatchDraw(android.graphics.Canvas r35) {
        /*
            Method dump skipped, instructions count: 1105
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.SubtitleView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // f.i.a.a.i1.k
    public void e(List<b> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.f2428f == z) {
            return;
        }
        this.f2428f = z;
        invalidate();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.f2427e == z && this.f2428f == z) {
            return;
        }
        this.f2427e = z;
        this.f2428f = z;
        invalidate();
    }

    public void setBottomPaddingFraction(float f2) {
        if (this.f2430h == f2) {
            return;
        }
        this.f2430h = f2;
        invalidate();
    }

    public void setCues(@Nullable List<b> list) {
        if (this.b == list) {
            return;
        }
        this.b = list;
        int size = list == null ? 0 : list.size();
        while (this.a.size() < size) {
            this.a.add(new f(getContext()));
        }
        invalidate();
    }

    public void setFractionalTextSize(float f2) {
        if (this.f2425c == 0 && this.f2426d == f2) {
            return;
        }
        this.f2425c = 0;
        this.f2426d = f2;
        invalidate();
    }

    public void setStyle(a aVar) {
        if (this.f2429g == aVar) {
            return;
        }
        this.f2429g = aVar;
        invalidate();
    }
}
