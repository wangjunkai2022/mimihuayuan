package chuangyuan.ycj.videolibrary.video;

import chuangyuan.ycj.videolibrary.listener.ExoPlayerListener;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener;
import java.util.Iterator;

/* loaded from: classes.dex */
public class PlayComponent implements ExoPlayerListener {
    public final ExoUserPlayer exoUserPlayer;

    public PlayComponent(ExoUserPlayer exoUserPlayer) {
        this.exoUserPlayer = exoUserPlayer;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void land() {
        this.exoUserPlayer.land();
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void onCreatePlayers() {
        this.exoUserPlayer.startVideo();
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void onDetachedFromWindow(boolean z) {
        if (z && this.exoUserPlayer.getPlayer() != null) {
            ExoUserPlayer videoPlayer = VideoPlayerManager.getInstance().getVideoPlayer();
            if (videoPlayer != null && this.exoUserPlayer.toString().equals(videoPlayer.toString())) {
                videoPlayer.reset();
                return;
            }
            return;
        }
        Iterator<ExoPlayerViewListener> it = this.exoUserPlayer.getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void playVideoUri() {
        VideoPlayerManager.getInstance().serEnableHintGPRS(true);
        this.exoUserPlayer.playerNoAlertDialog();
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void replayPlayers() {
        this.exoUserPlayer.clearResumePosition();
        ExoUserPlayer exoUserPlayer = this.exoUserPlayer;
        exoUserPlayer.handPause = false;
        if (exoUserPlayer.getPlayer() == null) {
            this.exoUserPlayer.startVideo();
            return;
        }
        this.exoUserPlayer.getPlayer().k(0, 0);
        this.exoUserPlayer.getPlayer().f(true);
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void startPlayers() {
        this.exoUserPlayer.startPlayer();
    }

    @Override // chuangyuan.ycj.videolibrary.listener.ExoPlayerListener
    public void switchUri(int i2) {
        MediaSourceBuilder mediaSourceBuilder = this.exoUserPlayer.getMediaSourceBuilder();
        if (mediaSourceBuilder != null && mediaSourceBuilder.getVideoUri() != null) {
            this.exoUserPlayer.setSwitchPlayer(mediaSourceBuilder.getVideoUri().get(i2));
        }
    }
}
