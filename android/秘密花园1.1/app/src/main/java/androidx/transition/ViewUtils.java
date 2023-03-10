package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class ViewUtils {
    public static final Property<View, Rect> CLIP_BOUNDS;
    public static final ViewUtilsBase IMPL;
    public static final String TAG = "ViewUtils";
    public static final Property<View, Float> TRANSITION_ALPHA;
    public static final int VISIBILITY_MASK = 12;
    public static Field sViewFlagsField;
    public static boolean sViewFlagsFieldFetched;

    static {
        if (Build.VERSION.SDK_INT >= 22) {
            IMPL = new ViewUtilsApi22();
        } else {
            IMPL = new ViewUtilsApi21();
        }
        TRANSITION_ALPHA = new Property<View, Float>(Float.class, "translationAlpha") { // from class: androidx.transition.ViewUtils.1
            @Override // android.util.Property
            public Float get(View view) {
                return Float.valueOf(ViewUtils.getTransitionAlpha(view));
            }

            @Override // android.util.Property
            public void set(View view, Float f2) {
                ViewUtils.setTransitionAlpha(view, f2.floatValue());
            }
        };
        CLIP_BOUNDS = new Property<View, Rect>(Rect.class, "clipBounds") { // from class: androidx.transition.ViewUtils.2
            @Override // android.util.Property
            public Rect get(View view) {
                return ViewCompat.getClipBounds(view);
            }

            @Override // android.util.Property
            public void set(View view, Rect rect) {
                ViewCompat.setClipBounds(view, rect);
            }
        };
    }

    public static void clearNonTransitionAlpha(@NonNull View view) {
        IMPL.clearNonTransitionAlpha(view);
    }

    public static void fetchViewFlagsField() {
        if (sViewFlagsFieldFetched) {
            return;
        }
        try {
            Field declaredField = View.class.getDeclaredField("mViewFlags");
            sViewFlagsField = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException unused) {
        }
        sViewFlagsFieldFetched = true;
    }

    public static ViewOverlayImpl getOverlay(@NonNull View view) {
        return new ViewOverlayApi18(view);
    }

    public static float getTransitionAlpha(@NonNull View view) {
        return IMPL.getTransitionAlpha(view);
    }

    public static WindowIdImpl getWindowId(@NonNull View view) {
        return new WindowIdApi18(view);
    }

    public static void saveNonTransitionAlpha(@NonNull View view) {
        IMPL.saveNonTransitionAlpha(view);
    }

    public static void setAnimationMatrix(@NonNull View view, @Nullable Matrix matrix) {
        IMPL.setAnimationMatrix(view, matrix);
    }

    public static void setLeftTopRightBottom(@NonNull View view, int i2, int i3, int i4, int i5) {
        IMPL.setLeftTopRightBottom(view, i2, i3, i4, i5);
    }

    public static void setTransitionAlpha(@NonNull View view, float f2) {
        IMPL.setTransitionAlpha(view, f2);
    }

    public static void setTransitionVisibility(@NonNull View view, int i2) {
        fetchViewFlagsField();
        Field field = sViewFlagsField;
        if (field != null) {
            try {
                sViewFlagsField.setInt(view, i2 | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused) {
            }
        }
    }

    public static void transformMatrixToGlobal(@NonNull View view, @NonNull Matrix matrix) {
        IMPL.transformMatrixToGlobal(view, matrix);
    }

    public static void transformMatrixToLocal(@NonNull View view, @NonNull Matrix matrix) {
        IMPL.transformMatrixToLocal(view, matrix);
    }
}
