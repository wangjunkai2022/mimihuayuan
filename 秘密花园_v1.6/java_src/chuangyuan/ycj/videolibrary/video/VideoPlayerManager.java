package chuangyuan.ycj.videolibrary.video;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import chuangyuan.ycj.videolibrary.listener.BasePlayerListener;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener;
import chuangyuan.ycj.videolibrary.listener.ItemVideo;
import chuangyuan.ycj.videolibrary.listener.OnCoverMapImageListener;
import chuangyuan.ycj.videolibrary.listener.OnGestureBrightnessListener;
import chuangyuan.ycj.videolibrary.listener.OnGestureProgressListener;
import chuangyuan.ycj.videolibrary.listener.OnGestureVolumeListener;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import chuangyuan.ycj.videolibrary.listener.VideoWindowListener;
import chuangyuan.ycj.videolibrary.utils.AnimUtils;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import f.i.a.a.h1.e0;
import f.i.a.a.k1.d;
import f.i.a.a.t0;
import f.i.a.a.z0.g;
import f.i.a.a.z0.j;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes.dex */
public class VideoPlayerManager {
    public static final int TYPE_PLAY_GESTURE = 1;
    public static final int TYPE_PLAY_USER = 0;
    public boolean isClick;
    public ExoUserPlayer mVideoPlayer;

    /* loaded from: classes.dex */
    public static class Builder {
        public Context context;
        public boolean controllerHideOnTouch;
        public g<j> drmSessionManager;
        public DataSourceListener listener;
        public d mExoPlayerControlView;
        public VideoPlayerView mVideoPlayerView;
        public OnCoverMapImageListener mapImage;
        public MediaSourceBuilder mediaSourceBuilder;
        public View.OnClickListener onClickListener;
        public OnGestureBrightnessListener onGestureBrightnessListener;
        public OnGestureProgressListener onGestureProgressListener;
        public OnGestureVolumeListener onGestureVolumeListener;
        public int playerType;
        public long resumePosition;
        public int resumeWindow;
        public boolean showVideoSwitch;
        public final CopyOnWriteArraySet<VideoInfoListener> videoInfoListeners;
        public final CopyOnWriteArraySet<VideoWindowListener> videoWindowListeners;

        public Builder(Activity activity, int i2, @IdRes int i3) {
            this(i2, (VideoPlayerView) activity.findViewById(i3));
        }

        private void initMediaSourceBuilder() {
            if (this.mediaSourceBuilder == null) {
                try {
                    this.mediaSourceBuilder = (MediaSourceBuilder) Class.forName("chuangyuan.ycj.videolibrary.whole.WholeMediaSource").getConstructor(Context.class, DataSourceListener.class).newInstance(this.context, this.listener);
                } catch (Exception unused) {
                    this.mediaSourceBuilder = new MediaSourceBuilder(this.context, this.listener);
                }
            }
        }

        public Builder addMediaUri(@NonNull Uri uri) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.addMediaUri(uri);
            return this;
        }

        public Builder addOnWindowListener(@NonNull VideoWindowListener videoWindowListener) {
            this.videoWindowListeners.add(videoWindowListener);
            return this;
        }

        public Builder addUpdateProgressListener(@NonNull AnimUtils.UpdateProgressListener updateProgressListener) {
            VideoPlayerView videoPlayerView = this.mVideoPlayerView;
            if (videoPlayerView != null) {
                videoPlayerView.getPlaybackControlView().D.add(updateProgressListener);
            } else {
                this.mExoPlayerControlView.D.add(updateProgressListener);
            }
            return this;
        }

        public Builder addVideoInfoListener(@NonNull VideoInfoListener videoInfoListener) {
            this.videoInfoListeners.add(videoInfoListener);
            return this;
        }

        public ExoUserPlayer create() {
            ExoUserPlayer exoUserPlayer;
            initMediaSourceBuilder();
            VideoPlayerView videoPlayerView = this.mVideoPlayerView;
            if (videoPlayerView != null) {
                exoUserPlayer = new ExoUserPlayer(this.context, this.mediaSourceBuilder, videoPlayerView);
                exoUserPlayer.setShowVideoSwitch(this.showVideoSwitch);
                GestureModule gestureModule = new GestureModule((Activity) this.mVideoPlayerView.getContext(), exoUserPlayer);
                if (this.playerType == 1) {
                    gestureModule.setOnGestureBrightnessListener(this.onGestureBrightnessListener);
                    gestureModule.setOnGestureProgressListener(this.onGestureProgressListener);
                    gestureModule.setOnGestureVolumeListener(this.onGestureVolumeListener);
                    exoUserPlayer.addBasePlayerListener(gestureModule);
                }
                OnCoverMapImageListener onCoverMapImageListener = this.mapImage;
                if (onCoverMapImageListener != null) {
                    onCoverMapImageListener.onCoverMap(this.mVideoPlayerView.getPreviewImage());
                }
                this.mVideoPlayerView.setOnEndGestureListener(gestureModule);
                this.mVideoPlayerView.setPlayerGestureOnTouch(this.controllerHideOnTouch);
                this.mVideoPlayerView.setOnPlayClickListener(this.onClickListener);
            } else {
                exoUserPlayer = new ExoUserPlayer(this.context, this.mediaSourceBuilder);
                exoUserPlayer.addBasePlayerListener(new BasePlayerListener() { // from class: chuangyuan.ycj.videolibrary.video.VideoPlayerManager.Builder.1
                    @Override // chuangyuan.ycj.videolibrary.listener.BasePlayerListener
                    public void onDestroy() {
                    }

                    @Override // chuangyuan.ycj.videolibrary.listener.BasePlayerListener
                    public void setPlayer(t0 t0Var) {
                        Builder.this.mExoPlayerControlView.setPlayer(t0Var);
                    }
                });
            }
            exoUserPlayer.createFullPlayer();
            exoUserPlayer.setDrmSessionManager(this.drmSessionManager);
            Iterator<VideoInfoListener> it = this.videoInfoListeners.iterator();
            while (it.hasNext()) {
                exoUserPlayer.addVideoInfoListener(it.next());
            }
            Iterator<VideoWindowListener> it2 = this.videoWindowListeners.iterator();
            while (it2.hasNext()) {
                exoUserPlayer.addOnWindowListener(it2.next());
            }
            int i2 = this.resumeWindow;
            if (i2 != -1) {
                exoUserPlayer.setPosition(i2, this.resumePosition);
            } else {
                exoUserPlayer.setPosition(this.resumePosition);
            }
            return exoUserPlayer;
        }

        public Builder setClippingMediaUri(@NonNull e0 e0Var, long j2, long j3) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.setClippingMediaUri(e0Var, j2, j3);
            return this;
        }

        public Builder setCustomCacheKey(@NonNull String str) {
            this.mediaSourceBuilder.setCustomCacheKey(str);
            return this;
        }

        public Builder setDataSource(@NonNull DataSourceListener dataSourceListener) {
            this.listener = dataSourceListener;
            return this;
        }

        public Builder setDrmSessionManager(g<j> gVar) {
            this.drmSessionManager = gVar;
            return this;
        }

        public Builder setExoPlayWatermarkImg(@DrawableRes int i2) {
            this.mVideoPlayerView.setExoPlayWatermarkImg(i2);
            return this;
        }

        public Builder setLoopingMediaSource(@Size(min = 1) int i2, Uri uri) {
            initMediaSourceBuilder();
            MediaSourceBuilder mediaSourceBuilder = this.mediaSourceBuilder;
            mediaSourceBuilder.setLoopingMediaSource(i2, mediaSourceBuilder.initMediaSource(uri));
            return this;
        }

        public Builder setOnCoverMapImage(@NonNull OnCoverMapImageListener onCoverMapImageListener) {
            this.mapImage = onCoverMapImageListener;
            return this;
        }

        public Builder setOnGestureBrightnessListener(@NonNull OnGestureBrightnessListener onGestureBrightnessListener) {
            this.onGestureBrightnessListener = onGestureBrightnessListener;
            return this;
        }

        public Builder setOnGestureProgressListener(@NonNull OnGestureProgressListener onGestureProgressListener) {
            this.onGestureProgressListener = onGestureProgressListener;
            return this;
        }

        public Builder setOnGestureVolumeListener(@NonNull OnGestureVolumeListener onGestureVolumeListener) {
            this.onGestureVolumeListener = onGestureVolumeListener;
            return this;
        }

        public Builder setOnPlayClickListener(@Nullable View.OnClickListener onClickListener) {
            this.onClickListener = onClickListener;
            return this;
        }

        public Builder setPlaySwitchUri(int i2, @NonNull String[] strArr, @NonNull String[] strArr2) {
            return setPlaySwitchUri(i2, Arrays.asList(strArr), Arrays.asList(strArr2));
        }

        public <T extends ItemVideo> Builder setPlaySwitchUri2(@Size(min = 0) int i2, int i3, @NonNull String str, @NonNull List<T> list, @NonNull List<String> list2) {
            initMediaSourceBuilder();
            VideoPlayerView videoPlayerView = this.mVideoPlayerView;
            if (videoPlayerView != null) {
                videoPlayerView.setSwitchName(list2, i3);
            }
            this.mediaSourceBuilder.setMediaSwitchUri(i2, i3, Uri.parse(str), list);
            return this;
        }

        public Builder setPlayUri(@NonNull String str) {
            return setPlayUri(Uri.parse(str));
        }

        public Builder setPlayerGestureOnTouch(boolean z) {
            this.controllerHideOnTouch = z;
            return this;
        }

        public Builder setPosition(long j2) {
            this.resumePosition = j2;
            return this;
        }

        public Builder setShowVideoSwitch(boolean z) {
            this.showVideoSwitch = z;
            return this;
        }

        public Builder setTitle(@NonNull String str) {
            this.mVideoPlayerView.setTitle(str);
            return this;
        }

        public Builder setVerticalFullScreen(boolean z) {
            this.mVideoPlayerView.setVerticalFullScreen(z);
            return this;
        }

        public Builder(int i2, @NonNull VideoPlayerView videoPlayerView) {
            this.playerType = 1;
            this.controllerHideOnTouch = true;
            this.resumeWindow = -1;
            this.context = VideoPlayUtils.scanForActivity(videoPlayerView.getContext());
            this.mVideoPlayerView = videoPlayerView;
            this.playerType = i2;
            this.videoInfoListeners = new CopyOnWriteArraySet<>();
            this.videoWindowListeners = new CopyOnWriteArraySet<>();
        }

        public Builder setDataSource(@NonNull MediaSourceBuilder mediaSourceBuilder) {
            this.mediaSourceBuilder = mediaSourceBuilder;
            return this;
        }

        public Builder setPlaySwitchUri(int i2, @NonNull List<String> list, @NonNull List<String> list2) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.setMediaSwitchUri(list, i2);
            this.mVideoPlayerView.setSwitchName(list2, i2);
            return this;
        }

        public Builder setPlayUri(@Size(min = 0) int i2, @NonNull String str, @NonNull String str2) {
            return setPlayUri(i2, Uri.parse(str), Uri.parse(str2));
        }

        public Builder setPosition(int i2, long j2) {
            this.resumeWindow = i2;
            this.resumePosition = j2;
            return this;
        }

        public Builder setPlayUri(@NonNull Uri uri) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.setMediaUri(uri);
            return this;
        }

        public Builder setPlaySwitchUri(@Size(min = 0) int i2, @Size(min = 0) int i3, @NonNull String str, List<String> list, @NonNull List<String> list2) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.setMediaUri(i2, i3, Uri.parse(str), list);
            VideoPlayerView videoPlayerView = this.mVideoPlayerView;
            if (videoPlayerView != null) {
                videoPlayerView.setSwitchName(list2, i3);
            }
            return this;
        }

        public Builder setPlayUri(@Size(min = 0) int i2, @NonNull Uri uri, @NonNull Uri uri2) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.setMediaUri(i2, uri, uri2);
            return this;
        }

        public <T extends ItemVideo> Builder setPlayUri(@NonNull List<T> list) {
            initMediaSourceBuilder();
            this.mediaSourceBuilder.setMediaUri(list);
            return this;
        }

        public Builder(@NonNull Context context, @NonNull d dVar) {
            this.playerType = 1;
            this.controllerHideOnTouch = true;
            this.resumeWindow = -1;
            this.context = context;
            this.videoInfoListeners = new CopyOnWriteArraySet<>();
            this.videoWindowListeners = new CopyOnWriteArraySet<>();
            this.mExoPlayerControlView = dVar;
        }
    }

    /* loaded from: classes.dex */
    public static class Holder {
        public static VideoPlayerManager holder = new VideoPlayerManager();
    }

    public static VideoPlayerManager getInstance() {
        return Holder.holder;
    }

    public boolean enableHintGPRS() {
        return this.isClick;
    }

    @Nullable
    public ExoUserPlayer getVideoPlayer() {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer == null || exoUserPlayer.getPlayer() == null) {
            return null;
        }
        return this.mVideoPlayer;
    }

    public boolean isClick() {
        return this.isClick;
    }

    public boolean onBackPressed() {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        return exoUserPlayer == null || exoUserPlayer.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration) {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer != null) {
            exoUserPlayer.onConfigurationChanged(configuration);
        }
    }

    public void onDestroy() {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer != null) {
            exoUserPlayer.onDestroy();
            this.mVideoPlayer = null;
        }
    }

    public void onPause(boolean z) {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer != null) {
            exoUserPlayer.onListPause(z);
        }
    }

    public void onResume() {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer != null) {
            exoUserPlayer.onResume();
        }
    }

    public void onStop() {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer != null) {
            exoUserPlayer.onStop();
        }
    }

    public void releaseVideoPlayer() {
        ExoUserPlayer exoUserPlayer = this.mVideoPlayer;
        if (exoUserPlayer != null) {
            exoUserPlayer.reset();
        }
        this.mVideoPlayer = null;
    }

    public void serEnableHintGPRS(boolean z) {
        this.isClick = z;
    }

    public void setClick(boolean z) {
        this.isClick = z;
    }

    public void setCurrentVideoPlayer(@NonNull ExoUserPlayer exoUserPlayer) {
        if (this.mVideoPlayer == null || !exoUserPlayer.toString().equals(this.mVideoPlayer.toString())) {
            releaseVideoPlayer();
        }
        this.mVideoPlayer = exoUserPlayer;
    }

    public void switchTargetView(@NonNull ExoUserPlayer exoUserPlayer, @Nullable VideoPlayerView videoPlayerView, boolean z) {
        VideoPlayerView videoPlayerView2 = exoUserPlayer.getVideoPlayerView();
        if (videoPlayerView2 == videoPlayerView) {
            return;
        }
        if (videoPlayerView2 != null) {
            videoPlayerView2.resets();
        }
        if (videoPlayerView != null) {
            exoUserPlayer.switchTargetView(videoPlayerView);
        }
        if (z) {
            exoUserPlayer.setStartOrPause(true);
        } else if (videoPlayerView != null) {
            exoUserPlayer.reset();
            Iterator<ExoPlayerViewListener> it = exoUserPlayer.getPlayerViewListeners().iterator();
            while (it.hasNext()) {
                ExoPlayerViewListener next = it.next();
                next.setPlayerBtnOnTouch(true);
                next.reset();
            }
        }
    }

    public void switchTargetViewNew(@NonNull VideoPlayerView videoPlayerView) {
        if (getVideoPlayer() != null) {
            getVideoPlayer().switchTargetView(videoPlayerView);
        }
    }

    public void switchTargetViewResult(@NonNull VideoPlayerView videoPlayerView, long j2, boolean z) {
        ExoUserPlayer videoPlayer = getVideoPlayer();
        if (videoPlayer != null) {
            videoPlayer.setPosition(j2);
            videoPlayer.switchTargetView(videoPlayerView);
            if (z) {
                videoPlayer.resetList();
                videoPlayerView.resets();
                return;
            }
            videoPlayer.resetList();
            videoPlayer.playerNoAlertDialog();
        }
    }

    public VideoPlayerManager() {
        this.isClick = false;
    }
}
