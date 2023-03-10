package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class CircularPropagation extends VisibilityPropagation {
    public float mPropagationSpeed = 3.0f;

    public static float distance(float f2, float f3, float f4, float f5) {
        float f6 = f4 - f2;
        float f7 = f5 - f3;
        return (float) Math.sqrt((double) ((f7 * f7) + (f6 * f6)));
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i2;
        int i3;
        int i4;
        if (transitionValues == null && transitionValues2 == null) {
            return 0;
        }
        if (transitionValues2 == null || getViewVisibility(transitionValues) == 0) {
            i2 = -1;
        } else {
            transitionValues = transitionValues2;
            i2 = 1;
        }
        int viewX = getViewX(transitionValues);
        int viewY = getViewY(transitionValues);
        Rect epicenter = transition.getEpicenter();
        if (epicenter != null) {
            i4 = epicenter.centerX();
            i3 = epicenter.centerY();
        } else {
            int[] iArr = new int[2];
            viewGroup.getLocationOnScreen(iArr);
            int round = Math.round(viewGroup.getTranslationX() + ((float) ((viewGroup.getWidth() / 2) + iArr[0])));
            int i5 = iArr[1];
            i3 = Math.round(viewGroup.getTranslationY() + ((float) ((viewGroup.getHeight() / 2) + i5)));
            i4 = round;
        }
        float distance = distance((float) viewX, (float) viewY, (float) i4, (float) i3) / distance(0.0f, 0.0f, (float) viewGroup.getWidth(), (float) viewGroup.getHeight());
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return (long) Math.round((((float) (duration * ((long) i2))) / this.mPropagationSpeed) * distance);
    }

    public void setPropagationSpeed(float f2) {
        if (f2 != 0.0f) {
            this.mPropagationSpeed = f2;
            return;
        }
        throw new IllegalArgumentException("propagationSpeed may not be 0");
    }
}
