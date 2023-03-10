package com.google.android.material.bottomappbar;

import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;
import f.b.a.a.a;
/* loaded from: classes.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment {
    public static final int ANGLE_LEFT = 180;
    public static final int ANGLE_UP = 270;
    public static final int ARC_HALF = 180;
    public static final int ARC_QUARTER = 90;
    public float cradleVerticalOffset;
    public float fabDiameter;
    public float fabMargin;
    public float horizontalOffset;
    public float roundedCornerRadius;

    public BottomAppBarTopEdgeTreatment(float f2, float f3, float f4) {
        this.fabMargin = f2;
        this.roundedCornerRadius = f3;
        this.cradleVerticalOffset = f4;
        if (f4 >= 0.0f) {
            this.horizontalOffset = 0.0f;
            return;
        }
        throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
    }

    public float getCradleVerticalOffset() {
        return this.cradleVerticalOffset;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f2, float f3, ShapePath shapePath) {
        float f4 = this.fabDiameter;
        if (f4 == 0.0f) {
            shapePath.lineTo(f2, 0.0f);
            return;
        }
        float f5 = ((this.fabMargin * 2.0f) + f4) / 2.0f;
        float f6 = f3 * this.roundedCornerRadius;
        float f7 = (f2 / 2.0f) + this.horizontalOffset;
        float a = a.a(1.0f, f3, f5, this.cradleVerticalOffset * f3);
        if (a / f5 >= 1.0f) {
            shapePath.lineTo(f2, 0.0f);
            return;
        }
        float f8 = f5 + f6;
        float f9 = a + f6;
        float sqrt = (float) Math.sqrt((f8 * f8) - (f9 * f9));
        float f10 = f7 - sqrt;
        float f11 = f7 + sqrt;
        float degrees = (float) Math.toDegrees(Math.atan(sqrt / f9));
        float f12 = 90.0f - degrees;
        float f13 = f10 - f6;
        shapePath.lineTo(f13, 0.0f);
        float f14 = f6 * 2.0f;
        shapePath.addArc(f13, 0.0f, f10 + f6, f14, 270.0f, degrees);
        shapePath.addArc(f7 - f5, (-f5) - a, f7 + f5, f5 - a, 180.0f - f12, (f12 * 2.0f) - 180.0f);
        shapePath.addArc(f11 - f6, 0.0f, f11 + f6, f14, 270.0f - degrees, degrees);
        shapePath.lineTo(f2, 0.0f);
    }

    public float getFabCradleMargin() {
        return this.fabMargin;
    }

    public float getFabCradleRoundedCornerRadius() {
        return this.roundedCornerRadius;
    }

    public float getFabDiameter() {
        return this.fabDiameter;
    }

    public float getHorizontalOffset() {
        return this.horizontalOffset;
    }

    public void setCradleVerticalOffset(float f2) {
        this.cradleVerticalOffset = f2;
    }

    public void setFabCradleMargin(float f2) {
        this.fabMargin = f2;
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        this.roundedCornerRadius = f2;
    }

    public void setFabDiameter(float f2) {
        this.fabDiameter = f2;
    }

    public void setHorizontalOffset(float f2) {
        this.horizontalOffset = f2;
    }
}
