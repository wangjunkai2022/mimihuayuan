package f.e.a.k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class k extends AnimatorListenerAdapter {
    public final /* synthetic */ View a;

    public k(View view) {
        this.a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.a.setVisibility(4);
    }
}
