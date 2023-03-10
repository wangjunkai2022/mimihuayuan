package chuangyuan.ycj.videolibrary.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.R;
/* loaded from: classes.dex */
public class ActionControlView extends FrameLayout {
    public View exoPlayErrorLayout;
    public View playBtnHintLayout;
    public View playReplayLayout;

    public ActionControlView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3 = R.layout.simple_exo_play_replay;
        int i4 = R.layout.simple_exo_play_error;
        int i5 = R.layout.simple_exo_play_btn_hint;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.VideoPlayerView, 0, 0);
            try {
                i3 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_replay_layout_id, i3);
                i4 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_error_layout_id, i4);
                i5 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_hint_layout_id, i5);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.exoPlayErrorLayout = FrameLayout.inflate(context, i4, null);
        this.playReplayLayout = FrameLayout.inflate(context, i3, null);
        this.playBtnHintLayout = FrameLayout.inflate(context, i5, null);
        this.exoPlayErrorLayout.setVisibility(8);
        this.playReplayLayout.setVisibility(8);
        this.playBtnHintLayout.setVisibility(8);
        addView(this.exoPlayErrorLayout, getChildCount());
        addView(this.playReplayLayout, getChildCount());
        addView(this.playBtnHintLayout, getChildCount());
    }

    public View getExoPlayErrorLayout() {
        return this.exoPlayErrorLayout;
    }

    public View getPlayBtnHintLayout() {
        return this.playBtnHintLayout;
    }

    public View getPlayReplayLayout() {
        return this.playReplayLayout;
    }

    public void hideAllView() {
        this.playBtnHintLayout.setVisibility(8);
        this.exoPlayErrorLayout.setVisibility(8);
        this.playReplayLayout.setVisibility(8);
    }

    public void showBtnContinueHint(int i2) {
        View view = this.playBtnHintLayout;
        if (view != null) {
            view.setVisibility(i2);
        }
    }

    public void showErrorState(int i2) {
        View view = this.exoPlayErrorLayout;
        if (view != null) {
            view.setVisibility(i2);
        }
    }

    public void showReplay(int i2) {
        View view = this.playReplayLayout;
        if (view != null) {
            view.setVisibility(i2);
        }
    }
}
