package androidx.interpolator.view.animation;

import android.view.animation.Interpolator;
import f.b.a.a.a;

/* loaded from: classes.dex */
public abstract class LookupTableInterpolator implements Interpolator {
    public final float mStepSize;
    public final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / ((float) (fArr.length - 1));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (f2 >= 1.0f) {
            return 1.0f;
        }
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.mValues;
        int min = Math.min((int) (((float) (fArr.length - 1)) * f2), fArr.length - 2);
        float f3 = this.mStepSize;
        float f4 = (f2 - (((float) min) * f3)) / f3;
        float[] fArr2 = this.mValues;
        return a.a(fArr2[min + 1], fArr2[min], f4, fArr2[min]);
    }
}
