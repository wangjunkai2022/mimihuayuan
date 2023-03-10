package chuangyuan.ycj.videolibrary.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.utils.AnimUtils;
/* loaded from: classes.dex */
public class LockControlView extends FrameLayout implements View.OnClickListener, AnimUtils.AnimatorListener, AnimUtils.UpdateProgressListener {
    public View exoControllerLeft;
    public View exoControllerRight;
    public View exoPlayLockLayout;
    public ExoDefaultTimeBar exoPlayerLockProgress;
    public final Runnable hideAction;
    public boolean isProgress;
    public AppCompatCheckBox lockCheckBox;
    public final BaseView mBaseView;

    public LockControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2, @NonNull BaseView baseView) {
        super(context, attributeSet, i2);
        this.isProgress = false;
        this.hideAction = new Runnable() { // from class: chuangyuan.ycj.videolibrary.widget.LockControlView.1
            @Override // java.lang.Runnable
            public void run() {
                if (LockControlView.this.mBaseView.isLand()) {
                    if (LockControlView.this.lockCheckBox.getVisibility() == 0) {
                        AnimUtils.setOutAnimX(LockControlView.this.lockCheckBox, false).start();
                    } else {
                        AnimUtils.setInAnimX(LockControlView.this.lockCheckBox).start();
                    }
                }
            }
        };
        this.mBaseView = baseView;
        View inflate = FrameLayout.inflate(context, R.layout.simple_exo_play_lock, null);
        this.exoPlayLockLayout = inflate;
        inflate.setBackgroundColor(0);
        this.exoPlayerLockProgress = (ExoDefaultTimeBar) this.exoPlayLockLayout.findViewById(R.id.exo_player_lock_progress);
        this.lockCheckBox = (AppCompatCheckBox) this.exoPlayLockLayout.findViewById(R.id.exo_player_lock_btn_id);
        this.exoControllerRight = baseView.getPlaybackControlView().findViewById(R.id.exo_controller_right);
        this.exoControllerLeft = baseView.getPlaybackControlView().findViewById(R.id.exo_controller_left);
        this.lockCheckBox.setVisibility(8);
        this.lockCheckBox.setOnClickListener(this);
        this.mBaseView.getPlaybackControlView().setAnimatorListener(this);
        this.mBaseView.getPlaybackControlView().D.add(this);
        addView(this.exoPlayLockLayout, getChildCount());
    }

    public boolean isLock() {
        AppCompatCheckBox appCompatCheckBox = this.lockCheckBox;
        return appCompatCheckBox != null && appCompatCheckBox.isChecked();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        removeCallbacks(this.hideAction);
        this.lockCheckBox.setTag(Boolean.TRUE);
        if (this.lockCheckBox.isChecked()) {
            this.mBaseView.getPlaybackControlView().q();
            if (this.mBaseView.playerView.g()) {
                return;
            }
            postDelayed(this.hideAction, this.mBaseView.playerView.getControllerShowTimeoutMs());
            return;
        }
        this.lockCheckBox.setTag(null);
        this.mBaseView.playerView.h();
        this.mBaseView.getPlaybackControlView().p();
    }

    public void onDestroy() {
        removeCallback();
        AppCompatCheckBox appCompatCheckBox = this.lockCheckBox;
        if (appCompatCheckBox != null) {
            appCompatCheckBox.setOnCheckedChangeListener(null);
        }
        AppCompatCheckBox appCompatCheckBox2 = this.lockCheckBox;
        if (appCompatCheckBox2 == null || appCompatCheckBox2.animate() == null) {
            return;
        }
        this.lockCheckBox.animate().cancel();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallback();
    }

    public void removeCallback() {
        removeCallbacks(this.hideAction);
        this.mBaseView.getPlaybackControlView().D.remove(this);
    }

    public void setLockCheck(boolean z) {
        this.lockCheckBox.setChecked(z);
    }

    public void setOpenLock(boolean z) {
        this.lockCheckBox.setVisibility(z ? 0 : 8);
    }

    public void setProgress(boolean z) {
        this.isProgress = z;
    }

    @Override // chuangyuan.ycj.videolibrary.utils.AnimUtils.AnimatorListener
    public void show(boolean z) {
        if (this.mBaseView.isLand()) {
            if (z) {
                showLockState(0);
                updateLockCheckBox(true);
                View view = this.exoControllerRight;
                if (view != null) {
                    AnimUtils.setInAnimX(view).start();
                }
                View view2 = this.exoControllerLeft;
                if (view2 != null) {
                    AnimUtils.setInAnimX(view2).start();
                    return;
                }
                return;
            }
            updateLockCheckBox(false);
            View view3 = this.exoControllerLeft;
            if (view3 != null) {
                AnimUtils.setOutAnimX(view3, true).start();
            }
            View view4 = this.exoControllerRight;
            if (view4 != null) {
                AnimUtils.setOutAnim(view4, false);
            }
        }
    }

    public void showLockState(int i2) {
        if (this.exoPlayLockLayout != null) {
            if (this.mBaseView.isLand()) {
                if (this.lockCheckBox.isChecked() && i2 == 0) {
                    this.mBaseView.getPlaybackControlView().i();
                    this.mBaseView.showBackView(8, true);
                }
                this.lockCheckBox.setVisibility(i2);
            } else {
                this.lockCheckBox.setVisibility(8);
            }
            if (this.isProgress) {
                this.exoPlayerLockProgress.setVisibility(i2 == 8 ? 0 : 8);
            } else {
                this.exoPlayerLockProgress.setVisibility(8);
            }
        }
    }

    public void updateLockCheckBox(boolean z) {
        if (this.mBaseView.isLand()) {
            if (this.lockCheckBox.isChecked()) {
                if (this.lockCheckBox.getTranslationX() == 0.0f) {
                    AnimUtils.setOutAnimX(this.lockCheckBox, false).start();
                } else {
                    AnimUtils.setInAnimX(this.lockCheckBox).start();
                }
            } else if (z) {
                AnimUtils.setInAnimX(this.lockCheckBox).start();
            } else if (this.lockCheckBox.getTag() == null) {
                AnimUtils.setOutAnimX(this.lockCheckBox, false).start();
            } else {
                this.lockCheckBox.setTag(null);
            }
        }
    }

    @Override // chuangyuan.ycj.videolibrary.utils.AnimUtils.UpdateProgressListener
    public void updateProgress(long j2, long j3, long j4) {
        if (this.exoPlayerLockProgress != null) {
            if ((this.mBaseView.isLand() && this.lockCheckBox.isChecked()) || this.isProgress) {
                this.exoPlayerLockProgress.setPosition(j2);
                this.exoPlayerLockProgress.setBufferedPosition(j3);
                this.exoPlayerLockProgress.setDuration(j4);
            }
        }
    }
}
