package androidx.transition;

import android.animation.Animator;
import android.graphics.Matrix;
import android.widget.ImageView;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class ImageViewUtils {
    public static final String TAG = "ImageViewUtils";
    public static Method sAnimateTransformMethod;
    public static boolean sAnimateTransformMethodFetched;

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
        if (!sAnimateTransformMethodFetched) {
            try {
                Method declaredMethod = ImageView.class.getDeclaredMethod("animateTransform", Matrix.class);
                sAnimateTransformMethod = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            sAnimateTransformMethodFetched = true;
        }
    }

    public static void reserveEndAnimateTransform(ImageView imageView, Animator animator) {
    }

    public static void startAnimateTransform(ImageView imageView) {
    }
}
