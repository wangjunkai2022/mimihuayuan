package chuangyuan.ycj.videolibrary.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.ContextCompat;
import chuangyuan.ycj.videolibrary.R;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerListener;
import chuangyuan.ycj.videolibrary.listener.OnEndGestureListener;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import f.i.a.a.k1.c;
import f.i.a.a.k1.d;
import f.i.a.a.k1.e;
import f.i.a.a.l0;
import f.i.a.a.r;
import f.i.a.a.s;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class BaseView extends FrameLayout {
    public static final int ANIM_DURATION = 600;
    public static final String TAG = VideoPlayerView.class.getName();
    public static WeakHashMap<String, Long> tags = new WeakHashMap<>();
    public static WeakHashMap<String, Integer> tags2 = new WeakHashMap<>();
    public final Activity activity;
    public AlertDialog alertDialog;
    public BelowView belowView;
    public boolean controllerHideOnTouch;
    public final d controllerView;
    public View exoBarrageLayout;
    public ImageView exoBottomPreviewImage;
    public ImageView exoControlsBack;
    public View exoLoadingLayout;
    public View exoPlayPreviewLayout;
    public ImageView exoPlayWatermark;
    public ImageView exoPreviewImage;
    public View exoPreviewPlayBtn;
    public int getPaddingLeft;
    @DrawableRes
    public int icBackImage;
    public boolean isLand;
    public boolean isListPlayer;
    public boolean isShowBack;
    public boolean isShowVideoSwitch;
    public boolean isVerticalFullScreen;
    public boolean isWGh;
    public final ActionControlView mActionControlView;
    public ExoPlayerListener mExoPlayerListener;
    public final GestureControlView mGestureControlView;
    public final LockControlView mLockControlView;
    public OnEndGestureListener mOnEndGestureListener;
    public final View.OnTouchListener mOnTouchListener;
    public ArrayList<String> nameSwitch;
    public View.OnClickListener onClickListener;
    public final View.OnTouchListener onTouchListener;
    public final c playerView;
    public int setSystemUiVisibility;
    public int switchIndex;
    public TextView videoLoadingShowText;

    public BaseView(@NonNull Context context) {
        this(context, null);
    }

    private void intiView() {
        ImageView imageView = new ImageView(getContext());
        this.exoControlsBack = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int dip2px = VideoPlayUtils.dip2px(getContext(), 7.0f);
        this.exoControlsBack.setId(R.id.exo_controls_back);
        this.exoControlsBack.setImageDrawable(ContextCompat.getDrawable(getContext(), this.icBackImage));
        this.exoControlsBack.setPadding(dip2px, dip2px, dip2px, dip2px);
        FrameLayout contentFrameLayout = this.playerView.getContentFrameLayout();
        contentFrameLayout.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.exo_player_background_color));
        this.exoLoadingLayout.setBackgroundColor(0);
        this.exoLoadingLayout.setVisibility(8);
        this.exoLoadingLayout.setClickable(true);
        contentFrameLayout.addView(this.mGestureControlView, contentFrameLayout.getChildCount());
        contentFrameLayout.addView(this.mActionControlView, contentFrameLayout.getChildCount());
        contentFrameLayout.addView(this.mLockControlView, contentFrameLayout.getChildCount());
        View view = this.exoPlayPreviewLayout;
        if (view != null) {
            contentFrameLayout.addView(view, contentFrameLayout.getChildCount());
        }
        contentFrameLayout.addView(this.exoLoadingLayout, contentFrameLayout.getChildCount());
        contentFrameLayout.addView(this.exoControlsBack, contentFrameLayout.getChildCount(), new FrameLayout.LayoutParams(VideoPlayUtils.dip2px(getContext(), 35.0f), VideoPlayUtils.dip2px(getContext(), 35.0f)));
        int indexOfChild = contentFrameLayout.indexOfChild(findViewById(R.id.exo_controller_barrage));
        if (this.exoBarrageLayout != null) {
            contentFrameLayout.removeViewAt(indexOfChild);
            this.exoBarrageLayout.setBackgroundColor(0);
            contentFrameLayout.addView(this.exoBarrageLayout, indexOfChild);
        }
        this.exoPlayWatermark = (ImageView) this.playerView.findViewById(R.id.exo_player_watermark);
        this.videoLoadingShowText = (TextView) this.playerView.findViewById(R.id.exo_loading_show_text);
        this.exoBottomPreviewImage = (ImageView) this.playerView.findViewById(R.id.exo_preview_image_bottom);
        if (this.playerView.findViewById(R.id.exo_preview_image) != null) {
            ImageView imageView2 = (ImageView) this.playerView.findViewById(R.id.exo_preview_image);
            this.exoPreviewImage = imageView2;
            imageView2.setBackgroundResource(17170445);
        } else {
            this.exoPreviewImage = this.exoBottomPreviewImage;
        }
        this.setSystemUiVisibility = this.activity.getWindow().getDecorView().getSystemUiVisibility();
        this.exoPreviewPlayBtn = this.playerView.findViewById(R.id.exo_preview_play);
    }

    private void scaleVerticalLayout() {
        ViewGroup viewGroup = (ViewGroup) this.activity.findViewById(16908290);
        final ViewGroup viewGroup2 = (ViewGroup) this.playerView.getParent();
        if (this.isLand) {
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.playerView);
            }
            viewGroup.addView(this.playerView, new FrameLayout.LayoutParams(getWidth(), getHeight()));
            ChangeBounds changeBounds = new ChangeBounds();
            changeBounds.setDuration(600L);
            TransitionManager.beginDelayedTransition(viewGroup, changeBounds);
            ViewGroup.LayoutParams layoutParams = this.playerView.getLayoutParams();
            layoutParams.height = -1;
            layoutParams.width = -1;
            this.playerView.setLayoutParams(layoutParams);
        } else {
            new FrameLayout.LayoutParams(-1, -1);
            ChangeBounds changeBounds2 = new ChangeBounds();
            changeBounds2.setDuration(600L);
            TransitionManager.beginDelayedTransition(viewGroup, changeBounds2);
            ViewGroup.LayoutParams layoutParams2 = this.playerView.getLayoutParams();
            layoutParams2.width = getWidth();
            layoutParams2.height = getHeight();
            this.playerView.setLayoutParams(layoutParams2);
            postDelayed(new Runnable() { // from class: chuangyuan.ycj.videolibrary.widget.BaseView.3
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup viewGroup3 = viewGroup2;
                    if (viewGroup3 != null) {
                        viewGroup3.removeView(BaseView.this.playerView);
                    }
                    BaseView baseView = BaseView.this;
                    baseView.addView(baseView.playerView);
                }
            }, 600L);
        }
        if (Build.VERSION.SDK_INT < 23) {
            this.mExoPlayerListener.land();
        }
    }

    @NonNull
    public View getErrorLayout() {
        return this.mActionControlView.getExoPlayErrorLayout();
    }

    public AppCompatCheckBox getExoFullscreen() {
        return this.controllerView.getExoFullscreen();
    }

    @NonNull
    public View getGestureAudioLayout() {
        return this.mGestureControlView.getExoAudioLayout();
    }

    @NonNull
    public View getGestureBrightnessLayout() {
        return this.mGestureControlView.getExoBrightnessLayout();
    }

    @NonNull
    public View getGestureProgressLayout() {
        return this.mGestureControlView.getDialogProLayout();
    }

    @NonNull
    public View getLoadLayout() {
        return this.exoLoadingLayout;
    }

    @NonNull
    public LockControlView getLockControlView() {
        return this.mLockControlView;
    }

    public ArrayList<String> getNameSwitch() {
        ArrayList<String> arrayList = this.nameSwitch;
        if (arrayList == null) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            this.nameSwitch = arrayList2;
            return arrayList2;
        }
        return arrayList;
    }

    @NonNull
    public View getPlayHintLayout() {
        return this.mActionControlView.getPlayBtnHintLayout();
    }

    @NonNull
    public d getPlaybackControlView() {
        return this.controllerView;
    }

    @NonNull
    public e getPlayerView() {
        return this.playerView;
    }

    @NonNull
    public ImageView getPreviewImage() {
        return this.exoPreviewImage;
    }

    @NonNull
    public View getReplayLayout() {
        return this.mActionControlView.getPlayReplayLayout();
    }

    public int getSwitchIndex() {
        return this.switchIndex;
    }

    @NonNull
    public TextView getSwitchText() {
        return this.controllerView.getSwitchText();
    }

    @NonNull
    public ExoDefaultTimeBar getTimeBar() {
        return (ExoDefaultTimeBar) this.controllerView.getTimeBar();
    }

    public void initWatermark(int i2, int i3) {
        if (i2 != 0) {
            this.exoPlayWatermark.setImageResource(i2);
        }
        if (i3 != 0) {
            setPreviewImage(BitmapFactory.decodeResource(getResources(), i3));
        }
    }

    public boolean isLand() {
        return this.isLand;
    }

    public boolean isListPlayer() {
        return this.isListPlayer;
    }

    public boolean isLoadingLayoutShow() {
        return this.exoLoadingLayout.getVisibility() == 0;
    }

    public boolean isShowBack() {
        return this.isShowBack;
    }

    public boolean isShowVideoSwitch() {
        return this.isShowVideoSwitch;
    }

    public boolean isVerticalFullScreen() {
        return this.isVerticalFullScreen;
    }

    public boolean isWGh() {
        return this.isWGh;
    }

    public void onDestroy() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        ImageView imageView = this.exoControlsBack;
        if (imageView != null && imageView.animate() != null) {
            this.exoControlsBack.animate().cancel();
        }
        LockControlView lockControlView = this.mLockControlView;
        if (lockControlView != null) {
            lockControlView.onDestroy();
        }
        Activity activity = this.activity;
        if (activity != null && activity.isDestroyed()) {
            tags.clear();
            tags2.clear();
            this.belowView = null;
            this.alertDialog = null;
        }
        this.nameSwitch = null;
    }

    public void resets() {
        if (getTag() != null) {
            tags.put(getTag().toString(), Long.valueOf(getPlayerView().getPlayer().C()));
            tags2.put(getTag().toString(), Integer.valueOf(getPlayerView().getPlayer().z()));
        }
        this.mLockControlView.removeCallback();
        View view = this.exoLoadingLayout;
        if (view != null) {
            view.setVisibility(8);
        }
        ActionControlView actionControlView = this.mActionControlView;
        if (actionControlView != null) {
            actionControlView.hideAllView();
        }
        d playbackControlView = getPlaybackControlView();
        playbackControlView.r();
        playbackControlView.l();
        r rVar = playbackControlView.F;
        l0 l0Var = playbackControlView.E;
        if (((s) rVar) != null) {
            l0Var.f(false);
            playbackControlView.removeCallbacks(playbackControlView.W);
            playbackControlView.removeCallbacks(playbackControlView.a0);
            playbackControlView.z.setAlpha(1.0f);
            playbackControlView.z.setTranslationY(0.0f);
            if (playbackControlView.k()) {
                return;
            }
            playbackControlView.setVisibility(0);
            return;
        }
        throw null;
    }

    public void scaleLayout() {
        if (isVerticalFullScreen()) {
            scaleVerticalLayout();
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.activity.findViewById(16908290);
        ViewGroup viewGroup2 = (ViewGroup) this.playerView.getParent();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        if (viewGroup2 != null) {
            viewGroup2.removeView(this.playerView);
        }
        if (this.isLand) {
            viewGroup.addView(this.playerView, layoutParams);
        } else {
            addView(this.playerView, layoutParams);
        }
        if (Build.VERSION.SDK_INT < 23) {
            this.mExoPlayerListener.land();
        }
    }

    public void setExoPlayWatermarkImg(int i2) {
        ImageView imageView = this.exoPlayWatermark;
        if (imageView != null) {
            imageView.setImageResource(i2);
        }
    }

    public void setExoPlayerListener(ExoPlayerListener exoPlayerListener) {
        this.mExoPlayerListener = exoPlayerListener;
    }

    public void setFullscreenStyle(@DrawableRes int i2) {
        this.controllerView.setFullscreenStyle(i2);
    }

    public void setLand(boolean z) {
        this.isLand = z;
    }

    public void setNameSwitch(ArrayList<String> arrayList) {
        this.nameSwitch = arrayList;
    }

    public void setOnEndGestureListener(OnEndGestureListener onEndGestureListener) {
        this.mOnEndGestureListener = onEndGestureListener;
    }

    public void setOnPlayClickListener(@Nullable View.OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }

    public void setOpenLock(boolean z) {
        this.mLockControlView.setOpenLock(z);
    }

    public void setOpenProgress2(boolean z) {
        this.mLockControlView.setProgress(z);
    }

    public void setPlayerGestureOnTouch(boolean z) {
        this.controllerHideOnTouch = z;
    }

    public void setPreviewImage(Bitmap bitmap) {
        this.exoPreviewImage.setImageBitmap(bitmap);
    }

    public void setShowBack(boolean z) {
        this.isShowBack = z;
    }

    public void setShowVideoSwitch(boolean z) {
        this.isShowVideoSwitch = z;
    }

    public void setSwitchName(@NonNull List<String> list, @Size(min = 0) int i2) {
        this.nameSwitch = new ArrayList<>(list);
        this.switchIndex = i2;
    }

    public void setTitle(@NonNull String str) {
        this.controllerView.setTitle(str);
    }

    public void setVerticalFullScreen(boolean z) {
        this.isVerticalFullScreen = z;
    }

    public void setWGh(boolean z) {
        this.isWGh = z;
    }

    public void showBackView(int i2, boolean z) {
        ImageView imageView = this.exoControlsBack;
        if (imageView != null) {
            if (!this.isShowBack && !this.isLand) {
                imageView.setVisibility(8);
            } else if (isListPlayer() && !this.isLand) {
                this.exoControlsBack.setVisibility(8);
            } else {
                if (i2 == 0 && z) {
                    this.exoControlsBack.setTranslationY(0.0f);
                    this.exoControlsBack.setAlpha(1.0f);
                }
                this.exoControlsBack.setVisibility(i2);
            }
        }
    }

    public void showBottomView(int i2) {
        this.exoBottomPreviewImage.setVisibility(i2);
        if (i2 == 0) {
            this.exoBottomPreviewImage.setImageDrawable(this.exoPreviewImage.getDrawable());
        }
    }

    public void showBtnContinueHint(int i2) {
        if (i2 == 0) {
            showReplay(8);
            showErrorState(8);
            showPreViewLayout(8);
            showLoadState(8);
            showBackView(0, true);
        }
        this.mActionControlView.showBtnContinueHint(i2);
    }

    public void showDialog() {
        AlertDialog alertDialog = this.alertDialog;
        if (alertDialog == null || !alertDialog.isShowing()) {
            AlertDialog create = new AlertDialog.Builder(getContext()).create();
            this.alertDialog = create;
            create.setTitle(getContext().getString(R.string.exo_play_reminder));
            this.alertDialog.setMessage(getContext().getString(R.string.exo_play_wifi_hint_no));
            this.alertDialog.setCancelable(false);
            this.alertDialog.setButton(-2, getContext().getString(17039360), new DialogInterface.OnClickListener() { // from class: chuangyuan.ycj.videolibrary.widget.BaseView.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    BaseView.this.showBtnContinueHint(0);
                }
            });
            this.alertDialog.setButton(-1, getContext().getString(17039370), new DialogInterface.OnClickListener() { // from class: chuangyuan.ycj.videolibrary.widget.BaseView.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    BaseView.this.showBtnContinueHint(8);
                    ExoPlayerListener exoPlayerListener = BaseView.this.mExoPlayerListener;
                    if (exoPlayerListener != null) {
                        exoPlayerListener.playVideoUri();
                    }
                }
            });
            this.alertDialog.show();
        }
    }

    public void showErrorState(int i2) {
        if (i2 == 0) {
            this.playerView.d();
            showReplay(8);
            showBackView(0, true);
            showLockState(8);
            showLoadState(8);
            showPreViewLayout(8);
        }
        this.mActionControlView.showErrorState(i2);
    }

    public void showListBack(int i2) {
        if (isListPlayer()) {
            if (i2 == 0) {
                this.exoControlsBack.setVisibility(0);
                this.getPaddingLeft = this.controllerView.getExoControllerTop().getPaddingLeft();
                this.controllerView.getExoControllerTop().setPadding(VideoPlayUtils.dip2px(getContext(), 35.0f), 0, 0, 0);
            } else {
                this.controllerView.getExoControllerTop().setPadding(this.getPaddingLeft, 0, 0, 0);
            }
            showBackView(i2, false);
        }
    }

    public void showLoadState(int i2) {
        if (i2 == 0) {
            showErrorState(8);
            showReplay(8);
            showLockState(8);
        }
        View view = this.exoLoadingLayout;
        if (view != null) {
            view.setVisibility(i2);
        }
    }

    public void showLockState(int i2) {
        this.mLockControlView.showLockState(i2);
    }

    public void showPreViewLayout(int i2) {
        View view = this.exoPlayPreviewLayout;
        if (view == null || view.getVisibility() == i2) {
            return;
        }
        this.exoPlayPreviewLayout.setVisibility(i2);
        if (this.playerView.findViewById(R.id.exo_preview_play) != null) {
            this.playerView.findViewById(R.id.exo_preview_play).setVisibility(i2);
        }
    }

    public void showReplay(int i2) {
        if (i2 == 0) {
            this.controllerView.i();
            showErrorState(8);
            showBtnContinueHint(8);
            showPreViewLayout(8);
            showLockState(8);
            showLoadState(8);
            showBottomView(0);
            showBackView(0, true);
        }
        this.mActionControlView.showReplay(i2);
    }

    public BaseView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        this.setSystemUiVisibility = 0;
        this.icBackImage = R.drawable.ic_exo_back;
        this.isShowBack = true;
        this.controllerHideOnTouch = true;
        this.onTouchListener = new View.OnTouchListener() { // from class: chuangyuan.ycj.videolibrary.widget.BaseView.4
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    BaseView baseView = BaseView.this;
                    if (baseView.mExoPlayerListener == null) {
                        return false;
                    }
                    if (baseView.onClickListener != null) {
                        BaseView.this.onClickListener.onClick(view);
                    } else {
                        BaseView.this.mExoPlayerListener.startPlayers();
                    }
                }
                return false;
            }
        };
        this.mOnTouchListener = new View.OnTouchListener() { // from class: chuangyuan.ycj.videolibrary.widget.BaseView.5
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (BaseView.this.controllerHideOnTouch && !BaseView.this.mLockControlView.isLock() && BaseView.this.isLand) {
                    if (BaseView.this.mOnEndGestureListener != null) {
                        BaseView.this.mOnEndGestureListener.onTouchEvent(motionEvent);
                    }
                    if ((motionEvent.getAction() & 255) == 1 && BaseView.this.mOnEndGestureListener != null) {
                        BaseView.this.mOnEndGestureListener.onEndGesture();
                    }
                    return false;
                }
                return false;
            }
        };
        this.activity = VideoPlayUtils.scanForActivity(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        c cVar = new c(getContext(), attributeSet, i2);
        this.playerView = cVar;
        this.controllerView = cVar.getControllerView();
        this.mGestureControlView = new GestureControlView(getContext(), attributeSet, i2);
        this.mActionControlView = new ActionControlView(getContext(), attributeSet, i2);
        this.mLockControlView = new LockControlView(getContext(), attributeSet, i2, this);
        addView(this.playerView, layoutParams);
        int i7 = R.layout.simple_exo_play_load;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, R.styleable.VideoPlayerView, 0, 0);
            try {
                this.icBackImage = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_back_image, this.icBackImage);
                i3 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_user_watermark, 0);
                this.isListPlayer = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayerView_player_list, false);
                i4 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_default_artwork, 0);
                i7 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_load_layout_id, i7);
                i5 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_preview_layout_id, 0);
                i6 = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_player_custom_layout_id, 0);
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.VideoPlayerView_controller_layout_id, R.layout.simple_exo_playback_control_view);
                if (i5 == 0 && (resourceId == R.layout.simple_exo_playback_list_view || resourceId == R.layout.simple_exo_playback_top_view)) {
                    i5 = R.layout.exo_default_preview_layout;
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (i6 != 0) {
            this.exoBarrageLayout = FrameLayout.inflate(context, i6, null);
        }
        this.exoLoadingLayout = FrameLayout.inflate(context, i7, null);
        if (i5 != 0) {
            this.exoPlayPreviewLayout = FrameLayout.inflate(context, i5, null);
        }
        intiView();
        initWatermark(i3, i4);
    }
}
