package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class Explode extends Visibility {
    public static final String PROPNAME_SCREEN_BOUNDS = "android:explode:screenBounds";
    public int[] mTempLoc;
    public static final TimeInterpolator sDecelerate = new DecelerateInterpolator();
    public static final TimeInterpolator sAccelerate = new AccelerateInterpolator();

    public Explode() {
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    public static float calculateDistance(float f2, float f3) {
        return (float) Math.sqrt((double) ((f3 * f3) + (f2 * f2)));
    }

    public static float calculateMaxDistance(View view, int i2, int i3) {
        return calculateDistance((float) Math.max(i2, view.getWidth() - i2), (float) Math.max(i3, view.getHeight() - i3));
    }

    private void calculateOut(View view, Rect rect, int[] iArr) {
        int i2;
        int i3;
        view.getLocationOnScreen(this.mTempLoc);
        int[] iArr2 = this.mTempLoc;
        int i4 = iArr2[0];
        int i5 = iArr2[1];
        Rect epicenter = getEpicenter();
        if (epicenter == null) {
            i3 = Math.round(view.getTranslationX()) + (view.getWidth() / 2) + i4;
            i2 = Math.round(view.getTranslationY()) + (view.getHeight() / 2) + i5;
        } else {
            i3 = epicenter.centerX();
            i2 = epicenter.centerY();
        }
        float centerX = (float) (rect.centerX() - i3);
        float centerY = (float) (rect.centerY() - i2);
        if (centerX == 0.0f && centerY == 0.0f) {
            float random = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerY = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerX = random;
        }
        float calculateDistance = calculateDistance(centerX, centerY);
        float calculateMaxDistance = calculateMaxDistance(view, i3 - i4, i2 - i5);
        iArr[0] = Math.round((centerX / calculateDistance) * calculateMaxDistance);
        iArr[1] = Math.round(calculateMaxDistance * (centerY / calculateDistance));
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.mTempLoc);
        int[] iArr = this.mTempLoc;
        int i2 = iArr[0];
        int i3 = iArr[1];
        transitionValues.values.put(PROPNAME_SCREEN_BOUNDS, new Rect(i2, i3, view.getWidth() + i2, view.getHeight() + i3));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(PROPNAME_SCREEN_BOUNDS);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        calculateOut(viewGroup, rect, this.mTempLoc);
        int[] iArr = this.mTempLoc;
        return TranslationAnimationCreator.createAnimation(view, transitionValues2, rect.left, rect.top, translationX + ((float) iArr[0]), translationY + ((float) iArr[1]), translationX, translationY, sDecelerate);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f2;
        float f3;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(PROPNAME_SCREEN_BOUNDS);
        int i2 = rect.left;
        int i3 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (iArr != null) {
            f3 = ((float) (iArr[0] - rect.left)) + translationX;
            f2 = ((float) (iArr[1] - rect.top)) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f3 = translationX;
            f2 = translationY;
        }
        calculateOut(viewGroup, rect, this.mTempLoc);
        int[] iArr2 = this.mTempLoc;
        return TranslationAnimationCreator.createAnimation(view, transitionValues, i2, i3, translationX, translationY, f3 + ((float) iArr2[0]), f2 + ((float) iArr2[1]), sAccelerate);
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }
}
