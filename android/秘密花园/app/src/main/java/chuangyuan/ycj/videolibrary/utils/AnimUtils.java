package chuangyuan.ycj.videolibrary.utils;

import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* loaded from: classes.dex */
public class AnimUtils {

    /* loaded from: classes.dex */
    public interface AnimatorListener {
        void show(boolean z);
    }

    /* loaded from: classes.dex */
    public interface UpdateProgressListener {
        void updateProgress(long j2, long j3, long j4);
    }

    public static ViewPropertyAnimatorCompat setInAnim(View view) {
        return ViewCompat.animate(view).translationY(0.0f).alpha(1.0f).setDuration(500);
    }

    public static ViewPropertyAnimatorCompat setInAnimX(View view) {
        return ViewCompat.animate(view).translationX(0.0f).setDuration(500).alpha(1.0f);
    }

    public static ViewPropertyAnimatorCompat setOutAnim(View view, boolean z) {
        ViewPropertyAnimatorCompat animate = ViewCompat.animate(view);
        int height = view.getHeight();
        if (!z) {
            height = -height;
        }
        return animate.translationY((float) height).setDuration(500).alpha(0.1f);
    }

    public static ViewPropertyAnimatorCompat setOutAnimX(View view, boolean z) {
        ViewPropertyAnimatorCompat animate = ViewCompat.animate(view);
        int width = view.getWidth();
        if (!z) {
            width = -width;
        }
        return animate.translationX((float) width).setDuration(500).alpha(0.1f);
    }
}
