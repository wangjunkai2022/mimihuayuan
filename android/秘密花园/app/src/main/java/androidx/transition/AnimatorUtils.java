package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class AnimatorUtils {

    /* loaded from: classes.dex */
    public interface AnimatorPauseListenerCompat {
        @Override // android.animation.Animator.AnimatorPauseListener, androidx.transition.AnimatorUtils.AnimatorPauseListenerCompat
        void onAnimationPause(Animator animator);

        @Override // android.animation.Animator.AnimatorPauseListener, androidx.transition.AnimatorUtils.AnimatorPauseListenerCompat
        void onAnimationResume(Animator animator);
    }

    public static void addPauseListener(@NonNull Animator animator, @NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        animator.addPauseListener(animatorListenerAdapter);
    }

    public static void pause(@NonNull Animator animator) {
        animator.pause();
    }

    public static void resume(@NonNull Animator animator) {
        animator.resume();
    }
}
