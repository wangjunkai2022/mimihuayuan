package f.e.a.j.p;

import android.animation.Animator;
import com.comeback.data.ui.hgdd.HGDDBrowseActivity;
/* compiled from: HGDDBrowseActivity.java */
/* loaded from: classes.dex */
public class a implements Animator.AnimatorListener {
    public final /* synthetic */ HGDDBrowseActivity a;

    public a(HGDDBrowseActivity hGDDBrowseActivity) {
        this.a = hGDDBrowseActivity;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.a.flShow.setVisibility(8);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
