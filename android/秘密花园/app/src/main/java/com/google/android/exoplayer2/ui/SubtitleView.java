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
    public List<b> b;
    public final List<f> a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public int f2350c = 0;

    /* renamed from: d  reason: collision with root package name */
    public float f2351d = 0.0533f;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2352e = true;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2353f = true;

    /* renamed from: g  reason: collision with root package name */
    public a f2354g = a.f5222g;

    /* renamed from: h  reason: collision with root package name */
    public float f2355h = 0.08f;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @TargetApi(19)
    private float getUserCaptionFontScaleV19() {
        return ((CaptioningManager) getContext().getSystemService("captioning")).getFontScale();
    }

    @TargetApi(19)
    private a getUserCaptionStyleV19() {
        CaptioningManager.CaptionStyle userStyle = ((CaptioningManager) getContext().getSystemService("captioning")).getUserStyle();
        if (h0.a < 21) {
            return new a(userStyle.foregroundColor, userStyle.backgroundColor, 0, userStyle.edgeType, userStyle.edgeColor, userStyle.getTypeface());
        }
        return new a(userStyle.hasForegroundColor() ? userStyle.foregroundColor : a.f5222g.a, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : a.f5222g.b, userStyle.hasWindowColor() ? userStyle.windowColor : a.f5222g.f5223c, userStyle.hasEdgeType() ? userStyle.edgeType : a.f5222g.f5224d, userStyle.hasEdgeColor() ? userStyle.edgeColor : a.f5222g.f5225e, userStyle.getTypeface());
    }

    public final float a(int i2, float f2, int i3, int i4) {
        float f3;
        if (i2 == 0) {
            f3 = (float) i4;
        } else if (i2 == 1) {
            f3 = (float) i3;
        } else if (i2 != 2) {
            return Float.MIN_VALUE;
        } else {
            return f2;
        }
        return f2 * f3;
    }

    public void b() {
        setStyle((h0.a < 19 || !((CaptioningManager) getContext().getSystemService("captioning")).isEnabled() || isInEditMode()) ? a.f5222g : getUserCaptionStyleV19());
    }

    public void c() {
        setFractionalTextSize(((h0.a < 19 || isInEditMode()) ? 1.0f : getUserCaptionFontScaleV19()) * 0.0533f);
    }

    /* JADX WARNING: Removed duplicated region for block: B:179:0x041f  */
    /* JADX WARNING: Removed duplicated region for block: B:180:0x0421  */
    /* JADX WARNING: Removed duplicated region for block: B:192:0x044e A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0079  */
    @Override // android.view.View
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void dispatchDraw(android.graphics.Canvas r35) {
        /*
        // Method dump skipped, instructions count: 1105
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.SubtitleView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // f.i.a.a.i1.k
    public void e(List<b> list) {
        setCues(list);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        if (this.f2353f != z) {
            this.f2353f = z;
            invalidate();
        }
    }

    public void setApplyEmbeddedStyles(boolean z) {
        if (this.f2352e != z || this.f2353f != z) {
            this.f2352e = z;
            this.f2353f = z;
            invalidate();
        }
    }

    public void setBottomPaddingFraction(float f2) {
        if (this.f2355h != f2) {
            this.f2355h = f2;
            invalidate();
        }
    }

    public void setCues(@Nullable List<b> list) {
        int i2;
        if (this.b != list) {
            this.b = list;
            if (list == null) {
                i2 = 0;
            } else {
                i2 = list.size();
            }
            while (this.a.size() < i2) {
                this.a.add(new f(getContext()));
            }
            invalidate();
        }
    }

    public void setFractionalTextSize(float f2) {
        if (this.f2350c != 0 || this.f2351d != f2) {
            this.f2350c = 0;
            this.f2351d = f2;
            invalidate();
        }
    }

    public void setStyle(a aVar) {
        if (this.f2354g != aVar) {
            this.f2354g = aVar;
            invalidate();
        }
    }
}
