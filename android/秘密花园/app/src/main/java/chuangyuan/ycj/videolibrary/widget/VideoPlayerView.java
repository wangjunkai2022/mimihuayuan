package chuangyuan.ycj.videolibrary.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcelable;
import android.text.SpannableString;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.appcompat.widget.AppCompatCheckBox;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerListener;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener;
import chuangyuan.ycj.videolibrary.listener.OnEndGestureListener;
import chuangyuan.ycj.videolibrary.utils.AnimUtils;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import chuangyuan.ycj.videolibrary.video.ExoDataBean;
import chuangyuan.ycj.videolibrary.video.ExoUserPlayer;
import chuangyuan.ycj.videolibrary.widget.BelowView;
import com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment;
import f.i.a.a.k1.c;
import f.i.a.a.k1.d;
import f.i.a.a.k1.e;
import f.i.a.a.t0;
import java.util.List;

@TargetApi(16)
/* loaded from: classes.dex */
public final class VideoPlayerView extends BaseView {
    public AnimUtils.AnimatorListener animatorListener;
    public final ExoPlayerViewListener exoPlayerViewListener;
    public View.OnClickListener onClickListener;
    public d.e visibilityListener;

    public VideoPlayerView(Context context) {
        this(context, null);
    }

    /* access modifiers changed from: private */
    public void exitFullView() {
        this.activity.setRequestedOrientation(1);
        getExoFullscreen().setChecked(false);
        doOnConfigurationChanged(false);
    }

    private void intiClickView() {
        if (this.playerView.findViewById(R.id.exo_player_replay_btn_id) != null) {
            this.playerView.findViewById(R.id.exo_player_replay_btn_id).setOnClickListener(this.onClickListener);
        }
        if (this.playerView.findViewById(R.id.exo_player_error_btn_id) != null) {
            this.playerView.findViewById(R.id.exo_player_error_btn_id).setOnClickListener(this.onClickListener);
        }
        if (this.playerView.findViewById(R.id.exo_player_btn_hint_btn_id) != null) {
            this.playerView.findViewById(R.id.exo_player_btn_hint_btn_id).setOnClickListener(this.onClickListener);
        }
        getSwitchText().setOnClickListener(this.onClickListener);
        this.exoControlsBack.setOnClickListener(this.onClickListener);
        this.playerView.findViewById(R.id.exo_video_fullscreen).setOnClickListener(this.onClickListener);
        if (isListPlayer() && !isLand()) {
            this.exoControlsBack.setVisibility(8);
        }
        this.playerView.setControllerVisibilityListener(this.visibilityListener);
        this.controllerView.setAnimatorListener(this.animatorListener);
    }

    /* access modifiers changed from: private */
    public void onCreatePlayer() {
        if (VideoPlayUtils.isNetworkAvailable(getContext())) {
            showErrorState(8);
            showReplay(8);
            ExoPlayerListener exoPlayerListener = this.mExoPlayerListener;
            if (exoPlayerListener != null) {
                exoPlayerListener.onCreatePlayers();
                return;
            }
            return;
        }
        Toast.makeText(getContext(), R.string.net_network_no_hint, 0).show();
    }

    public void doOnConfigurationChanged(boolean z) {
        if (z) {
            if (isWGh()) {
                getPlayerView().getVideoSurfaceView().d(BottomAppBarTopEdgeTreatment.ANGLE_UP);
            }
            VideoPlayUtils.hideActionBar(getContext());
            this.activity.getWindow().getDecorView().setSystemUiVisibility(5638);
            if (isShowVideoSwitch()) {
                TextView switchText = getSwitchText();
                switchText.setVisibility(0);
                if (switchText.getText().toString().isEmpty() && !getNameSwitch().isEmpty()) {
                    switchText.setText(getNameSwitch().get(this.switchIndex));
                }
            }
            this.mLockControlView.setLockCheck(false);
            showListBack(0);
            showLockState(0);
        } else {
            if (isWGh()) {
                getPlayerView().getVideoSurfaceView().d(0);
            }
            this.activity.getWindow().getDecorView().setSystemUiVisibility(this.setSystemUiVisibility);
            VideoPlayUtils.showActionBar(this.activity);
            getSwitchText().setVisibility(8);
            showListBack(8);
            showLockState(8);
        }
        getExoFullscreen().setChecked(z);
        setLand(z);
        scaleLayout();
        if (getPlaybackControlView().j()) {
            getPlaybackControlView().q();
        }
    }

    public ExoPlayerViewListener getComponentListener() {
        return this.exoPlayerViewListener;
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getErrorLayout() {
        return super.getErrorLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ AppCompatCheckBox getExoFullscreen() {
        return super.getExoFullscreen();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getGestureAudioLayout() {
        return super.getGestureAudioLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getGestureBrightnessLayout() {
        return super.getGestureBrightnessLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getGestureProgressLayout() {
        return super.getGestureProgressLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getLoadLayout() {
        return super.getLoadLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ LockControlView getLockControlView() {
        return super.getLockControlView();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getPlayHintLayout() {
        return super.getPlayHintLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ d getPlaybackControlView() {
        return super.getPlaybackControlView();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ e getPlayerView() {
        return super.getPlayerView();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ ImageView getPreviewImage() {
        return super.getPreviewImage();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ View getReplayLayout() {
        return super.getReplayLayout();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ TextView getSwitchText() {
        return super.getSwitchText();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    @NonNull
    public /* bridge */ /* synthetic */ ExoDefaultTimeBar getTimeBar() {
        return super.getTimeBar();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ boolean isLand() {
        return super.isLand();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ boolean isListPlayer() {
        return super.isListPlayer();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ boolean isLoadingLayoutShow() {
        return super.isLoadingLayoutShow();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ boolean isShowBack() {
        return super.isShowBack();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ boolean isVerticalFullScreen() {
        return super.isVerticalFullScreen();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void onDestroy() {
        super.onDestroy();
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ExoPlayerListener exoPlayerListener = this.mExoPlayerListener;
        if (exoPlayerListener != null) {
            exoPlayerListener.onDetachedFromWindow(isListPlayer());
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        if (parcelable instanceof ExoDataBean) {
            ExoDataBean exoDataBean = (ExoDataBean) parcelable;
            if (exoDataBean.getNameSwitch() != null) {
                setNameSwitch(exoDataBean.getNameSwitch());
            }
            setLand(exoDataBean.isLand());
            this.setSystemUiVisibility = exoDataBean.getSetSystemUiVisibility();
            this.switchIndex = exoDataBean.getSwitchIndex();
        }
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        ExoDataBean exoDataBean = new ExoDataBean(onSaveInstanceState);
        exoDataBean.setLand(isLand());
        exoDataBean.setSetSystemUiVisibility(this.setSystemUiVisibility);
        exoDataBean.setSwitchIndex(this.switchIndex);
        exoDataBean.setNameSwitch(getNameSwitch());
        return onSaveInstanceState;
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i2) {
        super.onVisibilityChanged(view, i2);
        if (isLand()) {
            this.activity.getWindow().getDecorView().setSystemUiVisibility(5638);
        }
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void resets() {
        super.resets();
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setExoPlayWatermarkImg(int i2) {
        super.setExoPlayWatermarkImg(i2);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setExoPlayerListener(ExoPlayerListener exoPlayerListener) {
        super.setExoPlayerListener(exoPlayerListener);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setFullscreenStyle(@DrawableRes int i2) {
        super.setFullscreenStyle(i2);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setOnEndGestureListener(OnEndGestureListener onEndGestureListener) {
        super.setOnEndGestureListener(onEndGestureListener);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setOnPlayClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnPlayClickListener(onClickListener);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setOpenLock(boolean z) {
        super.setOpenLock(z);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setOpenProgress2(boolean z) {
        super.setOpenProgress2(z);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setPlayerGestureOnTouch(boolean z) {
        super.setPlayerGestureOnTouch(z);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setPreviewImage(Bitmap bitmap) {
        super.setPreviewImage(bitmap);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setShowBack(boolean z) {
        super.setShowBack(z);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setShowVideoSwitch(boolean z) {
        super.setShowVideoSwitch(z);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setSwitchName(@NonNull List list, @Size(min = 0) int i2) {
        super.setSwitchName(list, i2);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setTitle(@NonNull String str) {
        super.setTitle(str);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setVerticalFullScreen(boolean z) {
        super.setVerticalFullScreen(z);
    }

    @Override // chuangyuan.ycj.videolibrary.widget.BaseView
    public /* bridge */ /* synthetic */ void setWGh(boolean z) {
        super.setWGh(z);
    }

    public void showFullscreenTempView(int i2) {
        if (!VideoPlayUtils.isTv(getContext())) {
            AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) this.playerView.findViewById(R.id.sexo_video_fullscreen);
            appCompatCheckBox.setVisibility(i2);
            appCompatCheckBox.setButtonDrawable(this.controllerView.getIcFullscreenSelector());
            appCompatCheckBox.setOnClickListener(this.onClickListener);
        }
    }

    public VideoPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.visibilityListener = new d.e() { // from class: chuangyuan.ycj.videolibrary.widget.VideoPlayerView.1
            @Override // f.i.a.a.k1.d.e
            public void onVisibilityChange(int i3) {
                VideoPlayerView.this.showBackView(i3, false);
                VideoPlayerView.this.showLockState(i3);
                BelowView belowView = VideoPlayerView.this.belowView;
                if (belowView != null && i3 == 8) {
                    belowView.dismissBelowView();
                }
            }
        };
        this.animatorListener = new AnimUtils.AnimatorListener() { // from class: chuangyuan.ycj.videolibrary.widget.VideoPlayerView.2
            @Override // chuangyuan.ycj.videolibrary.utils.AnimUtils.AnimatorListener
            public void show(boolean z) {
                VideoPlayerView.this.mLockControlView.updateLockCheckBox(z);
                if (z) {
                    if (VideoPlayerView.this.isLand()) {
                        VideoPlayerView.this.showLockState(0);
                    }
                    AnimUtils.setInAnim(VideoPlayerView.this.exoControlsBack).start();
                    return;
                }
                AnimUtils.setOutAnim(VideoPlayerView.this.exoControlsBack, false).start();
            }
        };
        this.onClickListener = new View.OnClickListener() { // from class: chuangyuan.ycj.videolibrary.widget.VideoPlayerView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view.getId() == R.id.exo_video_fullscreen || view.getId() == R.id.sexo_video_fullscreen) {
                    if (VideoPlayerView.this.isVerticalFullScreen()) {
                        VideoPlayerView videoPlayerView = VideoPlayerView.this;
                        videoPlayerView.doOnConfigurationChanged(!videoPlayerView.isLand());
                    } else if (VideoPlayUtils.isLand(VideoPlayerView.this.getContext())) {
                        VideoPlayerView.this.activity.setRequestedOrientation(1);
                    } else {
                        VideoPlayerView.this.activity.setRequestedOrientation(0);
                    }
                } else if (view.getId() == R.id.exo_controls_back) {
                    if (VideoPlayerView.this.isLand()) {
                        VideoPlayerView.this.exitFullView();
                    } else {
                        VideoPlayerView.this.activity.onBackPressed();
                    }
                } else if (view.getId() == R.id.exo_player_error_btn_id) {
                    VideoPlayerView.this.onCreatePlayer();
                } else if (view.getId() == R.id.exo_player_replay_btn_id) {
                    VideoPlayerView.this.onCreatePlayer();
                } else if (view.getId() == R.id.exo_video_switch) {
                    VideoPlayerView videoPlayerView2 = VideoPlayerView.this;
                    if (videoPlayerView2.belowView == null) {
                        videoPlayerView2.belowView = new BelowView(videoPlayerView2.getContext(), VideoPlayerView.this.getNameSwitch());
                        VideoPlayerView.this.belowView.setOnItemClickListener(new BelowView.OnItemClickListener() { // from class: chuangyuan.ycj.videolibrary.widget.VideoPlayerView.3.1
                            @Override // chuangyuan.ycj.videolibrary.widget.BelowView.OnItemClickListener
                            public void onItemClick(int i3, String str) {
                                ExoPlayerListener exoPlayerListener = VideoPlayerView.this.mExoPlayerListener;
                                if (exoPlayerListener != null) {
                                    exoPlayerListener.switchUri(i3);
                                }
                                VideoPlayerView.this.getSwitchText().setText(str);
                                VideoPlayerView.this.belowView.dismissBelowView();
                            }
                        });
                    }
                    VideoPlayerView videoPlayerView3 = VideoPlayerView.this;
                    videoPlayerView3.belowView.showBelowView(view, true, videoPlayerView3.getSwitchIndex());
                } else if (view.getId() == R.id.exo_player_btn_hint_btn_id) {
                    VideoPlayerView.this.showBtnContinueHint(8);
                    ExoPlayerListener exoPlayerListener = VideoPlayerView.this.mExoPlayerListener;
                    if (exoPlayerListener != null) {
                        exoPlayerListener.playVideoUri();
                    }
                }
            }
        };
        this.exoPlayerViewListener = new ExoPlayerViewListener() { // from class: chuangyuan.ycj.videolibrary.widget.VideoPlayerView.4
            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void exitFull() {
                VideoPlayerView.this.exitFullView();
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public int getHeight() {
                c cVar = VideoPlayerView.this.playerView;
                if (cVar == null) {
                    return 0;
                }
                return cVar.getHeight();
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void onConfigurationChanged(boolean z) {
                VideoPlayerView.this.doOnConfigurationChanged(z);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.BasePlayerListener
            public void onDestroy() {
                VideoPlayerView.this.onDestroy();
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            @SuppressLint({"ClickableViewAccessibility"})
            public void onPrepared() {
                VideoPlayerView videoPlayerView = VideoPlayerView.this;
                videoPlayerView.playerView.setOnTouchListener(videoPlayerView.mOnTouchListener);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void onResumeStart() {
                if (VideoPlayerView.this.isListPlayer()) {
                    setPlayerBtnOnTouch(true);
                    return;
                }
                ExoPlayerListener exoPlayerListener = VideoPlayerView.this.mExoPlayerListener;
                if (exoPlayerListener != null) {
                    exoPlayerListener.onCreatePlayers();
                }
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void reset() {
                VideoPlayerView.this.resets();
                VideoPlayerView.this.exoPlayerViewListener.showPreview(0, false);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setBrightnessPosition(int i3, int i4) {
                VideoPlayerView.this.mGestureControlView.setBrightnessPosition(i3, i4);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setControllerHideOnTouch(boolean z) {
                VideoPlayerView.this.getPlayerView().setControllerHideOnTouch(z);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setOpenSeek(boolean z) {
                VideoPlayerView.this.getTimeBar().setOpenSeek(z);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.BasePlayerListener
            public void setPlayer(t0 t0Var) {
                VideoPlayerView.this.playerView.setPlayer(t0Var);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setPlayerBtnOnTouch(boolean z) {
                if (z) {
                    VideoPlayerView.this.getPlaybackControlView().getPlayButton().setOnTouchListener(VideoPlayerView.this.onTouchListener);
                    VideoPlayerView videoPlayerView = VideoPlayerView.this;
                    View view = videoPlayerView.exoPreviewPlayBtn;
                    if (view != null) {
                        view.setOnTouchListener(videoPlayerView.onTouchListener);
                        return;
                    }
                    return;
                }
                VideoPlayerView.this.getPlaybackControlView().getPlayButton().setOnTouchListener(null);
                View view2 = VideoPlayerView.this.exoPreviewPlayBtn;
                if (view2 != null) {
                    view2.setOnTouchListener(null);
                }
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setSeekBarOpenSeek(boolean z) {
                VideoPlayerView.this.getTimeBar().setOpenSeek(z);
                VideoPlayerView.this.setPlayerGestureOnTouch(z);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setShowWitch(boolean z) {
                VideoPlayerView.this.setShowVideoSwitch(z);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setSwitchName(@NonNull List<String> list, int i3) {
                VideoPlayerView.this.setSwitchName(list, i3);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setTag(Integer num) {
                VideoPlayerView.this.setTag(num.toString());
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setTimePosition(@NonNull SpannableString spannableString) {
                VideoPlayerView.this.mGestureControlView.setTimePosition(spannableString);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setUseController(boolean z) {
                VideoPlayerView.this.getPlayerView().setUseController(z);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void setVolumePosition(int i3, int i4) {
                VideoPlayerView.this.mGestureControlView.setVolumePosition(i3, i4);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showAlertDialog() {
                VideoPlayerView.this.showDialog();
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showErrorStateView(int i3) {
                VideoPlayerView.this.showErrorState(i3);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showGestureView(int i3) {
                VideoPlayerView.this.mGestureControlView.showGesture(i3);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showLoadStateView(int i3) {
                VideoPlayerView.this.showLoadState(i3);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showNetSpeed(final String str) {
                if (VideoPlayerView.this.isLoadingLayoutShow()) {
                    VideoPlayerView.this.playerView.post(new Runnable() { // from class: chuangyuan.ycj.videolibrary.widget.VideoPlayerView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            TextView textView = VideoPlayerView.this.videoLoadingShowText;
                            if (textView != null) {
                                textView.setText(str);
                            }
                        }
                    });
                }
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showPreview(int i3, boolean z) {
                if (!z) {
                    VideoPlayerView.this.showPreViewLayout(i3);
                    VideoPlayerView.this.showBottomView(8);
                    VideoPlayerView.this.getPreviewImage().setVisibility(i3);
                    return;
                }
                View view = VideoPlayerView.this.exoPreviewPlayBtn;
                if (view != null) {
                    view.setVisibility(8);
                }
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void showReplayView(int i3) {
                VideoPlayerView.this.showReplay(i3);
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void startPlayer(ExoUserPlayer exoUserPlayer) {
                Object tag = VideoPlayerView.this.getTag();
                if (VideoPlayerView.this.isListPlayer() && tag != null && BaseView.tags.get(tag.toString()) != null && BaseView.tags2.get(tag.toString()) != null) {
                    exoUserPlayer.setPosition(BaseView.tags2.get(tag.toString()).intValue(), (long) BaseView.tags.get(tag.toString()).intValue());
                    BaseView.tags.remove(tag.toString());
                    BaseView.tags2.remove(tag.toString());
                }
            }

            @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener
            public void toggoleController(boolean z, boolean z2) {
                VideoPlayerView.this.showFullscreenTempView(z ? 0 : 8);
                if (z2) {
                    VideoPlayerView.this.playerView.h();
                    VideoPlayerView.this.getPlaybackControlView().p();
                    setControllerHideOnTouch(true);
                    return;
                }
                VideoPlayerView.this.getPlaybackControlView().q();
                setControllerHideOnTouch(false);
            }
        };
        intiClickView();
    }
}
