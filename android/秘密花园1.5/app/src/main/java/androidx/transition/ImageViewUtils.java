package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ImageViewUtils {
    public static final String TAG = "ImageViewUtils";
    public static Method sAnimateTransformMethod;
    public static boolean sAnimateTransformMethodFetched;

    /* renamed from: androidx.transition.ImageViewUtils$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 extends AnimatorListenerAdapter {
        public final /* synthetic */ ImageView val$view;

        public AnonymousClass1(ImageView imageView) {
            this.val$view = imageView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ImageView.ScaleType scaleType = (ImageView.ScaleType) this.val$view.getTag(R.id.save_scale_type);
            this.val$view.setScaleType(scaleType);
            this.val$view.setTag(R.id.save_scale_type, null);
            if (scaleType == ImageView.ScaleType.MATRIX) {
                ImageView imageView = this.val$view;
                imageView.setImageMatrix((Matrix) imageView.getTag(R.id.save_image_matrix));
                this.val$view.setTag(R.id.save_image_matrix, null);
            }
            animator.removeListener(this);
        }
    }

    public static void animateTransform(ImageView imageView, Matrix matrix) {
        fetchAnimateTransformMethod();
        Method method = sAnimateTransformMethod;
        if (method != null) {
            try {
                method.invoke(imageView, matrix);
            } catch (IllegalAccessException unused) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    public static void fetchAnimateTransformMethod() {
        if (sAnimateTransformMethodFetched) {
            return;
        }
        try {
            Method declaredMethod = ImageView.class.getDeclaredMethod("animateTransform", Matrix.class);
            sAnimateTransformMethod = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException unused) {
        }
        sAnimateTransformMethodFetched = true;
    }

    public static void reserveEndAnimateTransform(ImageView imageView, Animator animator) {
    }

    public static void startAnimateTransform(ImageView imageView) {
    }
}
