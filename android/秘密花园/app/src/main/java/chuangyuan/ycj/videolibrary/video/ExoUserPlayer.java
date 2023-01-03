package chuangyuan.ycj.videolibrary.video;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Looper;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import c.a.a.b.g.h;
import chuangyuan.ycj.videolibrary.listener.BasePlayerListener;
import chuangyuan.ycj.videolibrary.listener.DataSourceListener;
import chuangyuan.ycj.videolibrary.listener.ExoPlayerViewListener;
import chuangyuan.ycj.videolibrary.listener.ItemVideo;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import chuangyuan.ycj.videolibrary.listener.VideoWindowListener;
import chuangyuan.ycj.videolibrary.utils.VideoPlayUtils;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import f.i.a.a.h1.p0;
import f.i.a.a.h1.u;
import f.i.a.a.j0;
import f.i.a.a.j1.b;
import f.i.a.a.j1.d;
import f.i.a.a.j1.k;
import f.i.a.a.l0;
import f.i.a.a.l1.r;
import f.i.a.a.m1.h0;
import f.i.a.a.t;
import f.i.a.a.t0;
import f.i.a.a.u0;
import f.i.a.a.v;
import f.i.a.a.v0.a;
import f.i.a.a.w;
import f.i.a.a.z0.g;
import f.i.a.a.z0.j;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ExoUserPlayer {
    public static final String TAG = "chuangyuan.ycj.videolibrary.video.ExoUserPlayer";
    public Context activity;
    public final CopyOnWriteArraySet<BasePlayerListener> basePlayerListeners;
    public l0.b componentListener;
    public g<j> drmSessionManager;
    public boolean handPause;
    public boolean isEnd;
    public boolean isLoad;
    public boolean isPause;
    public boolean isSwitch;
    public Long lastTimeStamp;
    public Long lastTotalRxBytes;
    public NetworkBroadcastReceiver mNetworkBroadcastReceiver;
    public final CopyOnWriteArraySet<ExoPlayerViewListener> mPlayerViewListeners;
    public MediaSourceBuilder mediaSourceBuilder;
    public PlayComponent playComponentListener;
    public j0 playbackParameters;
    public t0 player;
    public Long resumePosition;
    public int resumeWindow;
    public final Runnable task;
    public ScheduledExecutorService timer;
    public final CopyOnWriteArraySet<VideoInfoListener> videoInfoListeners;
    public VideoPlayerView videoPlayerView;
    public final CopyOnWriteArraySet<VideoWindowListener> videoWindowListeners;

    /* loaded from: classes.dex */
    public final class NetworkBroadcastReceiver extends BroadcastReceiver {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public long is;

        public NetworkBroadcastReceiver() {
            this.is = 0;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NetworkInfo activeNetworkInfo;
            String action = intent.getAction();
            if (action != null && action.equals("android.net.conn.CONNECTIVITY_CHANGE") && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                if (activeNetworkInfo.getType() == 0) {
                    if (System.currentTimeMillis() - this.is > 500) {
                        this.is = System.currentTimeMillis();
                        if (!VideoPlayerManager.getInstance().isClick() && !ExoUserPlayer.this.isPause) {
                            Iterator<ExoPlayerViewListener> it = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                            while (it.hasNext()) {
                                it.next().showAlertDialog();
                            }
                        }
                    }
                } else if (activeNetworkInfo.getType() == 1) {
                    ExoUserPlayer.this.startVideo();
                }
            }
        }
    }

    public ExoUserPlayer(@NonNull Context context, @NonNull VideoPlayerView videoPlayerView, @Nullable DataSourceListener dataSourceListener) {
        this(context, VideoPlayUtils.buildMediaSourceBuilder(context, dataSourceListener), videoPlayerView);
    }

    /* access modifiers changed from: private */
    public String getNetSpeed() {
        Context context = this.activity;
        if (context == null) {
            return "";
        }
        long totalRxBytes = VideoPlayUtils.getTotalRxBytes(context);
        long currentTimeMillis = System.currentTimeMillis();
        long longValue = currentTimeMillis - this.lastTimeStamp.longValue();
        if (longValue == 0) {
            return "1 kb/s";
        }
        long longValue2 = ((totalRxBytes - this.lastTotalRxBytes.longValue()) * 1000) / longValue;
        this.lastTimeStamp = Long.valueOf(currentTimeMillis);
        this.lastTotalRxBytes = Long.valueOf(totalRxBytes);
        if (longValue2 > 1024) {
            DecimalFormat decimalFormat = new DecimalFormat("######0.0");
            return decimalFormat.format(VideoPlayUtils.getM(longValue2)) + " MB/s";
        }
        return longValue2 + " kb/s";
    }

    private void registerReceiverNet() {
        if (this.mNetworkBroadcastReceiver == null) {
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            NetworkBroadcastReceiver networkBroadcastReceiver = new NetworkBroadcastReceiver();
            this.mNetworkBroadcastReceiver = networkBroadcastReceiver;
            this.activity.registerReceiver(networkBroadcastReceiver, intentFilter);
        }
    }

    private void setDefaultLoadModel() {
        if (this.timer == null) {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(2);
            this.timer = newScheduledThreadPool;
            newScheduledThreadPool.scheduleWithFixedDelay(this.task, 400, 300, TimeUnit.MILLISECONDS);
        }
    }

    private void unNetworkBroadcastReceiver() {
        NetworkBroadcastReceiver networkBroadcastReceiver = this.mNetworkBroadcastReceiver;
        if (networkBroadcastReceiver != null) {
            this.activity.unregisterReceiver(networkBroadcastReceiver);
        }
        this.mNetworkBroadcastReceiver = null;
    }

    /* access modifiers changed from: private */
    public void updateResumePosition() {
        t0 t0Var = this.player;
        if (t0Var != null) {
            this.resumeWindow = t0Var.z();
            this.resumePosition = Long.valueOf(Math.max(0L, this.player.i()));
        }
    }

    public void addBasePlayerListener(@NonNull BasePlayerListener basePlayerListener) {
        this.basePlayerListeners.add(basePlayerListener);
    }

    public void addExoPlayerViewListener(@NonNull ExoPlayerViewListener exoPlayerViewListener) {
        this.mPlayerViewListeners.add(exoPlayerViewListener);
    }

    public void addMediaUri(@NonNull Uri uri) {
        this.mediaSourceBuilder.addMediaUri(uri);
    }

    public void addOnWindowListener(@NonNull VideoWindowListener videoWindowListener) {
        this.videoWindowListeners.add(videoWindowListener);
    }

    public void addVideoInfoListener(@NonNull VideoInfoListener videoInfoListener) {
        this.videoInfoListeners.add(videoInfoListener);
    }

    public void clearResumePosition() {
        this.resumeWindow = -1;
        this.resumePosition = -9223372036854775807L;
    }

    public void createFullPlayer() {
        f.i.a.a.l1.g gVar;
        d dVar = new d(new b.d());
        setDefaultLoadModel();
        v vVar = new v(this.activity, 1);
        Context context = this.activity;
        t tVar = new t();
        g<j> gVar2 = this.drmSessionManager;
        Looper D = h0.D();
        a.C0082a aVar = new a.C0082a();
        synchronized (h.class) {
            if (h.a == null) {
                r.a aVar2 = new r.a(context);
                h.a = new r(aVar2.a, aVar2.b, aVar2.f5626c, aVar2.f5627d, false);
            }
            gVar = h.a;
        }
        this.player = new t0(context, vVar, dVar, tVar, gVar2, gVar, aVar, D);
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setPlayer(this.player);
        }
        Iterator<BasePlayerListener> it2 = this.basePlayerListeners.iterator();
        while (it2.hasNext()) {
            it2.next().setPlayer(this.player);
        }
    }

    public long getBufferedPosition() {
        t0 t0Var = this.player;
        if (t0Var == null) {
            return 0;
        }
        t0Var.O();
        return t0Var.f5782c.l();
    }

    public long getCurrentPosition() {
        t0 t0Var = this.player;
        if (t0Var == null) {
            return 0;
        }
        return t0Var.C();
    }

    public long getDuration() {
        t0 t0Var = this.player;
        if (t0Var == null) {
            return 0;
        }
        t0Var.O();
        return t0Var.f5782c.v();
    }

    public MediaSourceBuilder getMediaSourceBuilder() {
        return this.mediaSourceBuilder;
    }

    public t0 getPlayer() {
        return this.player;
    }

    public CopyOnWriteArraySet<ExoPlayerViewListener> getPlayerViewListeners() {
        return this.mPlayerViewListeners;
    }

    public VideoPlayerView getVideoPlayerView() {
        return this.videoPlayerView;
    }

    public int getWindowCount() {
        t0 t0Var = this.player;
        if (t0Var == null) {
            return 0;
        }
        if (t0Var.w().q()) {
            return 1;
        }
        return this.player.w().p();
    }

    public void hideControllerView() {
        hideControllerView(false);
    }

    public boolean isPlaying() {
        int o;
        t0 t0Var = this.player;
        if (t0Var == null || (o = t0Var.o()) == 1 || o == 4 || !this.player.m()) {
            return false;
        }
        return true;
    }

    public void land() {
        boolean z = this.resumeWindow != -1;
        if (this.handPause) {
            this.player.f(false);
        } else {
            this.player.f(true);
        }
        this.player.F(this.mediaSourceBuilder.getMediaSource(), !z, false);
    }

    public void next() {
        this.player.c();
    }

    public boolean onBackPressed() {
        if (VideoPlayUtils.isTv(this.activity) || this.activity.getResources().getConfiguration().orientation != 2) {
            return true;
        }
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().exitFull();
        }
        return false;
    }

    public void onConfigurationChanged(Configuration configuration) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().onConfigurationChanged(configuration.orientation == 2);
        }
    }

    @CallSuper
    public void onDestroy() {
        releasePlayers();
        Iterator<BasePlayerListener> it = this.basePlayerListeners.iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
        MediaSourceBuilder mediaSourceBuilder = this.mediaSourceBuilder;
        if (mediaSourceBuilder != null) {
            mediaSourceBuilder.destroy();
        }
        this.lastTotalRxBytes = 0L;
        this.lastTimeStamp = 0L;
        this.resumePosition = 0L;
        this.resumeWindow = 0;
        this.videoInfoListeners.clear();
        this.videoWindowListeners.clear();
        this.basePlayerListeners.clear();
        this.mPlayerViewListeners.clear();
        this.isEnd = false;
        this.isPause = false;
        this.handPause = false;
        this.timer = null;
        this.mediaSourceBuilder = null;
        this.componentListener = null;
        this.playComponentListener = null;
    }

    public void onListPause(boolean z) {
        if (z) {
            this.isPause = true;
            t0 t0Var = this.player;
            if (t0Var != null) {
                this.handPause = true ^ t0Var.m();
                reset();
            }
        }
    }

    @CallSuper
    public void onPause() {
        this.isPause = true;
        t0 t0Var = this.player;
        if (t0Var != null) {
            this.handPause = true ^ t0Var.m();
            releasePlayers();
        }
    }

    public void onResume() {
        if ((h0.a <= 23 || this.player == null) && this.isLoad && !this.isEnd) {
            Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
            while (it.hasNext()) {
                it.next().onResumeStart();
            }
        }
    }

    @CallSuper
    public void onStop() {
        onPause();
    }

    public void playerNoAlertDialog() {
        if (this.player == null) {
            createFullPlayer();
        }
        boolean z = this.resumeWindow != -1;
        if (this.handPause) {
            this.player.f(false);
        } else {
            this.player.f(true);
        }
        this.player.I(this.playbackParameters);
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            ExoPlayerViewListener next = it.next();
            next.showPreview(8, true);
            next.toggoleController(false, false);
            next.setControllerHideOnTouch(true);
            next.setPlayerBtnOnTouch(false);
        }
        if (z) {
            this.player.k(this.resumeWindow, this.resumePosition.longValue());
        }
        this.player.y(this.componentListener);
        this.player.r(this.componentListener);
        this.player.F(this.mediaSourceBuilder.getMediaSource(), !z, false);
        this.isEnd = false;
        this.isLoad = true;
        Iterator<ExoPlayerViewListener> it2 = getPlayerViewListeners().iterator();
        while (it2.hasNext()) {
            it2.next().onPrepared();
        }
    }

    public void previous() {
        this.player.d();
    }

    public void releasePlayers() {
        updateResumePosition();
        unNetworkBroadcastReceiver();
        t0 t0Var = this.player;
        if (t0Var != null) {
            t0Var.y(this.componentListener);
            this.player.M(false);
            this.player.G();
            this.player = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.timer;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            this.timer.shutdown();
        }
    }

    public void removeExoPlayerViewListener(@NonNull ExoPlayerViewListener exoPlayerViewListener) {
        this.mPlayerViewListeners.remove(exoPlayerViewListener);
    }

    public void removeOnWindowListener(@NonNull VideoWindowListener videoWindowListener) {
        this.videoWindowListeners.remove(videoWindowListener);
    }

    public void removeVideoInfoListener(@NonNull VideoInfoListener videoInfoListener) {
        this.videoInfoListeners.remove(videoInfoListener);
    }

    public void reset() {
        t0 t0Var = this.player;
        if (t0Var != null) {
            t0Var.M(false);
            this.player.y(this.componentListener);
            Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
            while (it.hasNext()) {
                ExoPlayerViewListener next = it.next();
                next.setPlayerBtnOnTouch(true);
                next.reset();
            }
            this.player.G();
            this.player = null;
        }
    }

    public void resetList() {
        t0 t0Var = this.player;
        if (t0Var != null) {
            t0Var.M(false);
            Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
            while (it.hasNext()) {
                it.next().setPlayerBtnOnTouch(true);
            }
            this.player.G();
            this.player = null;
        }
    }

    public void seekTo(long j2) {
        t0 t0Var = this.player;
        if (t0Var != null) {
            t0Var.k(t0Var.z(), j2);
        }
    }

    public void setCustomCacheKey(@NonNull String str) {
        this.mediaSourceBuilder.setCustomCacheKey(str);
    }

    public void setDrmSessionManager(g<j> gVar) {
        this.drmSessionManager = gVar;
    }

    public void setOnPlayClickListener(@Nullable View.OnClickListener onClickListener) {
        this.videoPlayerView.setOnPlayClickListener(onClickListener);
    }

    public void setPlaySwitchUri(int i2, @NonNull String[] strArr, @NonNull String[] strArr2) {
        setPlaySwitchUri(i2, Arrays.asList(strArr), Arrays.asList(strArr2));
    }

    public void setPlayUri(@NonNull String str) {
        setPlayUri(Uri.parse(str));
    }

    public void setPlaybackParameters(@Size(min = 0) float f2, @Size(min = 0) float f3) {
        this.playbackParameters = null;
        j0 j0Var = new j0(f2, f3, false);
        this.playbackParameters = j0Var;
        t0 t0Var = this.player;
        if (t0Var != null) {
            t0Var.I(j0Var);
        }
    }

    public void setPosition(long j2) {
        this.resumePosition = Long.valueOf(j2);
    }

    public void setSeekBarSeek(boolean z) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setSeekBarOpenSeek(z);
        }
    }

    public void setShowVideoSwitch(boolean z) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setShowWitch(z);
        }
    }

    public void setStartOrPause(boolean z) {
        if (this.player != null) {
            if (z) {
                Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
                while (it.hasNext()) {
                    it.next().showPreview(8, false);
                }
            }
            this.player.f(z);
        }
    }

    public void setSwitchPlayer(@NonNull String str) {
        int size;
        this.handPause = false;
        updateResumePosition();
        if (this.mediaSourceBuilder.getMediaSource() instanceof u) {
            u uVar = (u) this.mediaSourceBuilder.getMediaSource();
            synchronized (uVar) {
                size = uVar.f5002i.size();
            }
            uVar.B(size - 1).i(null);
            uVar.w(this.mediaSourceBuilder.initMediaSource(Uri.parse(str)));
            this.isSwitch = true;
            return;
        }
        this.mediaSourceBuilder.setMediaUri(Uri.parse(str));
        playerNoAlertDialog();
    }

    public void setTag(int i2) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setTag(Integer.valueOf(i2));
        }
    }

    public void setUseController(boolean z) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setUseController(z);
        }
    }

    public void showControllerView() {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().toggoleController(false, true);
        }
    }

    public ExoUserPlayer startPlayer() {
        VideoPlayerManager.getInstance().setCurrentVideoPlayer(this);
        this.handPause = false;
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            ExoPlayerViewListener next = it.next();
            next.startPlayer(this);
            next.setPlayerBtnOnTouch(false);
        }
        startVideo();
        registerReceiverNet();
        return this;
    }

    public void startVideo() {
        if (VideoPlayUtils.isWifi(this.activity) || VideoPlayerManager.getInstance().isClick() || this.isPause || isPlaying()) {
            playerNoAlertDialog();
            return;
        }
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().showAlertDialog();
        }
    }

    public void switchTargetView(@NonNull VideoPlayerView videoPlayerView) {
        if (this.videoPlayerView != videoPlayerView) {
            t0 t0Var = this.player;
            if (t0Var != null) {
                t0Var.y(this.componentListener);
            }
            this.playComponentListener = new PlayComponent(this);
            removeExoPlayerViewListener(this.videoPlayerView.getComponentListener());
            this.videoPlayerView = videoPlayerView;
            addExoPlayerViewListener(videoPlayerView.getComponentListener());
            videoPlayerView.setExoPlayerListener(this.playComponentListener);
            if (this.player == null) {
                createFullPlayer();
            } else {
                Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
                while (it.hasNext()) {
                    it.next().setPlayer(this.player);
                }
            }
            this.player.r(this.componentListener);
            Iterator<ExoPlayerViewListener> it2 = getPlayerViewListeners().iterator();
            while (it2.hasNext()) {
                ExoPlayerViewListener next = it2.next();
                next.setPlayerBtnOnTouch(false);
                next.toggoleController(false, false);
                next.setControllerHideOnTouch(true);
            }
            this.isEnd = false;
            this.isLoad = true;
        }
    }

    public ExoUserPlayer(@NonNull Context context, @NonNull MediaSourceBuilder mediaSourceBuilder, @NonNull VideoPlayerView videoPlayerView) {
        this.resumePosition = 0L;
        this.lastTotalRxBytes = 0L;
        this.lastTimeStamp = 0L;
        this.resumeWindow = 0;
        this.task = new Runnable() { // from class: chuangyuan.ycj.videolibrary.video.ExoUserPlayer.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator<ExoPlayerViewListener> it = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                while (it.hasNext()) {
                    it.next().showNetSpeed(ExoUserPlayer.this.getNetSpeed());
                }
            }
        };
        this.componentListener = new l0.a() { // from class: chuangyuan.ycj.videolibrary.video.ExoUserPlayer.2
            public boolean isRemove;

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onLoadingChanged(boolean z) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onPlaybackParametersChanged(j0 j0Var) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onPlayerError(w wVar) {
                String unused = ExoUserPlayer.TAG;
                wVar.getMessage();
                ExoUserPlayer.this.updateResumePosition();
                if (VideoPlayUtils.isBehindLiveWindow(wVar)) {
                    ExoUserPlayer.this.clearResumePosition();
                    ExoUserPlayer.this.startVideo();
                    return;
                }
                Iterator<ExoPlayerViewListener> it = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                while (it.hasNext()) {
                    it.next().showErrorStateView(0);
                }
                Iterator it2 = ExoUserPlayer.this.videoInfoListeners.iterator();
                while (it2.hasNext()) {
                    t0 t0Var = ExoUserPlayer.this.player;
                    t0Var.O();
                    ((VideoInfoListener) it2.next()).onPlayerError(t0Var.f5782c.s);
                }
            }

            @Override // f.i.a.a.l0.b
            public void onPlayerStateChanged(boolean z, int i2) {
                Iterator it = ExoUserPlayer.this.videoInfoListeners.iterator();
                while (it.hasNext()) {
                    ((VideoInfoListener) it.next()).isPlaying(ExoUserPlayer.this.player.m());
                }
                String unused = ExoUserPlayer.TAG;
                if (i2 == 1) {
                    String unused2 = ExoUserPlayer.TAG;
                    Iterator<ExoPlayerViewListener> it2 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().showErrorStateView(0);
                    }
                } else if (i2 == 2) {
                    if (z) {
                        Iterator<ExoPlayerViewListener> it3 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                        while (it3.hasNext()) {
                            it3.next().showLoadStateView(0);
                        }
                    }
                    Iterator it4 = ExoUserPlayer.this.videoInfoListeners.iterator();
                    while (it4.hasNext()) {
                        ((VideoInfoListener) it4.next()).onLoadingChanged();
                    }
                } else if (i2 == 3) {
                    Iterator<ExoPlayerViewListener> it5 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it5.hasNext()) {
                        ExoPlayerViewListener next = it5.next();
                        next.showPreview(8, false);
                        next.showLoadStateView(8);
                    }
                    if (z) {
                        String unused3 = ExoUserPlayer.TAG;
                        ExoUserPlayer.this.isPause = false;
                        Iterator it6 = ExoUserPlayer.this.videoInfoListeners.iterator();
                        while (it6.hasNext()) {
                            ((VideoInfoListener) it6.next()).onPlayStart(ExoUserPlayer.this.getCurrentPosition());
                        }
                    }
                } else if (i2 == 4) {
                    String unused4 = ExoUserPlayer.TAG;
                    ExoUserPlayer.this.isEnd = true;
                    ExoUserPlayer.this.clearResumePosition();
                    Iterator<ExoPlayerViewListener> it7 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it7.hasNext()) {
                        it7.next().showReplayView(0);
                    }
                    Iterator it8 = ExoUserPlayer.this.videoInfoListeners.iterator();
                    while (it8.hasNext()) {
                        ((VideoInfoListener) it8.next()).onPlayEnd();
                    }
                }
            }

            @Override // f.i.a.a.l0.b
            public void onPositionDiscontinuity(int i2) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onRepeatModeChanged(int i2) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onSeekProcessed() {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onShuffleModeEnabledChanged(boolean z) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onTimelineChanged(u0 u0Var, Object obj, int i2) {
                if (ExoUserPlayer.this.isSwitch) {
                    ExoUserPlayer.this.isSwitch = false;
                    this.isRemove = true;
                    ExoUserPlayer.this.player.k(ExoUserPlayer.this.player.a(), ExoUserPlayer.this.resumePosition.longValue());
                }
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onTracksChanged(p0 p0Var, k kVar) {
                boolean z = true;
                if (ExoUserPlayer.this.getWindowCount() <= 1) {
                    return;
                }
                if (this.isRemove) {
                    this.isRemove = false;
                    ExoUserPlayer.this.mediaSourceBuilder.removeMedia(ExoUserPlayer.this.resumeWindow);
                    return;
                }
                if (!ExoUserPlayer.this.videoWindowListeners.isEmpty()) {
                    Iterator it = ExoUserPlayer.this.videoWindowListeners.iterator();
                    while (it.hasNext()) {
                        ((VideoWindowListener) it.next()).onCurrentIndex(ExoUserPlayer.this.player.z(), ExoUserPlayer.this.getWindowCount());
                    }
                }
                if (ExoUserPlayer.this.mediaSourceBuilder.getIndexType() >= 0) {
                    if (ExoUserPlayer.this.mediaSourceBuilder.getIndexType() == ExoUserPlayer.this.player.z() && ExoUserPlayer.this.mediaSourceBuilder.getIndexType() > 0) {
                        z = false;
                    }
                    Iterator<ExoPlayerViewListener> it2 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().setOpenSeek(z);
                    }
                }
            }
        };
        this.activity = context.getApplicationContext();
        this.videoPlayerView = videoPlayerView;
        this.mediaSourceBuilder = mediaSourceBuilder;
        this.videoInfoListeners = new CopyOnWriteArraySet<>();
        this.videoWindowListeners = new CopyOnWriteArraySet<>();
        this.basePlayerListeners = new CopyOnWriteArraySet<>();
        this.mPlayerViewListeners = new CopyOnWriteArraySet<>();
        PlayComponent playComponent = new PlayComponent(this);
        this.playComponentListener = playComponent;
        videoPlayerView.setExoPlayerListener(playComponent);
        addExoPlayerViewListener(videoPlayerView.getComponentListener());
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setPlayerBtnOnTouch(true);
        }
    }

    public void hideControllerView(boolean z) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().toggoleController(z, false);
        }
    }

    public void setPlaySwitchUri(int i2, @NonNull List<String> list, @NonNull List<String> list2) {
        this.mediaSourceBuilder.setMediaSwitchUri(list, i2);
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setSwitchName(list2, i2);
        }
    }

    public void setPlayUri(@NonNull Uri uri) {
        this.mediaSourceBuilder.setMediaUri(uri);
    }

    public void setPosition(int i2, long j2) {
        this.resumeWindow = i2;
        this.resumePosition = Long.valueOf(j2);
    }

    public void seekTo(int i2, long j2) {
        t0 t0Var = this.player;
        if (t0Var != null) {
            t0Var.k(i2, j2);
        }
    }

    public void setPlayUri(@Size(min = 0) int i2, @NonNull String str, @NonNull String str2) {
        setPlayUri(i2, Uri.parse(str), Uri.parse(str2));
    }

    public void showControllerView(boolean z) {
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().toggoleController(z, true);
        }
    }

    public void setPlayUri(@Size(min = 0) int i2, @NonNull Uri uri, @NonNull Uri uri2) {
        this.mediaSourceBuilder.setMediaUri(i2, uri, uri2);
    }

    public void setPlaySwitchUri(@Size(min = 0) int i2, @Size(min = 0) int i3, @NonNull String str, String[] strArr, @NonNull String[] strArr2) {
        setPlaySwitchUri(i2, i3, str, Arrays.asList(strArr), Arrays.asList(strArr2));
    }

    public <T extends ItemVideo> void setPlayUri(@NonNull List<T> list) {
        this.mediaSourceBuilder.setMediaUri(list);
    }

    public void setPlaySwitchUri(@Size(min = 0) int i2, @Size(min = 0) int i3, @NonNull String str, List<String> list, @NonNull List<String> list2) {
        this.mediaSourceBuilder.setMediaUri(i2, i3, Uri.parse(str), list);
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setSwitchName(list2, i3);
        }
    }

    public ExoUserPlayer(@NonNull Context context, @NonNull MediaSourceBuilder mediaSourceBuilder) {
        this.resumePosition = 0L;
        this.lastTotalRxBytes = 0L;
        this.lastTimeStamp = 0L;
        this.resumeWindow = 0;
        this.task = new Runnable() { // from class: chuangyuan.ycj.videolibrary.video.ExoUserPlayer.1
            @Override // java.lang.Runnable
            public void run() {
                Iterator<ExoPlayerViewListener> it = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                while (it.hasNext()) {
                    it.next().showNetSpeed(ExoUserPlayer.this.getNetSpeed());
                }
            }
        };
        this.componentListener = new l0.a() { // from class: chuangyuan.ycj.videolibrary.video.ExoUserPlayer.2
            public boolean isRemove;

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onLoadingChanged(boolean z) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onPlaybackParametersChanged(j0 j0Var) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onPlayerError(w wVar) {
                String unused = ExoUserPlayer.TAG;
                wVar.getMessage();
                ExoUserPlayer.this.updateResumePosition();
                if (VideoPlayUtils.isBehindLiveWindow(wVar)) {
                    ExoUserPlayer.this.clearResumePosition();
                    ExoUserPlayer.this.startVideo();
                    return;
                }
                Iterator<ExoPlayerViewListener> it = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                while (it.hasNext()) {
                    it.next().showErrorStateView(0);
                }
                Iterator it2 = ExoUserPlayer.this.videoInfoListeners.iterator();
                while (it2.hasNext()) {
                    t0 t0Var = ExoUserPlayer.this.player;
                    t0Var.O();
                    ((VideoInfoListener) it2.next()).onPlayerError(t0Var.f5782c.s);
                }
            }

            @Override // f.i.a.a.l0.b
            public void onPlayerStateChanged(boolean z, int i2) {
                Iterator it = ExoUserPlayer.this.videoInfoListeners.iterator();
                while (it.hasNext()) {
                    ((VideoInfoListener) it.next()).isPlaying(ExoUserPlayer.this.player.m());
                }
                String unused = ExoUserPlayer.TAG;
                if (i2 == 1) {
                    String unused2 = ExoUserPlayer.TAG;
                    Iterator<ExoPlayerViewListener> it2 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().showErrorStateView(0);
                    }
                } else if (i2 == 2) {
                    if (z) {
                        Iterator<ExoPlayerViewListener> it3 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                        while (it3.hasNext()) {
                            it3.next().showLoadStateView(0);
                        }
                    }
                    Iterator it4 = ExoUserPlayer.this.videoInfoListeners.iterator();
                    while (it4.hasNext()) {
                        ((VideoInfoListener) it4.next()).onLoadingChanged();
                    }
                } else if (i2 == 3) {
                    Iterator<ExoPlayerViewListener> it5 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it5.hasNext()) {
                        ExoPlayerViewListener next = it5.next();
                        next.showPreview(8, false);
                        next.showLoadStateView(8);
                    }
                    if (z) {
                        String unused3 = ExoUserPlayer.TAG;
                        ExoUserPlayer.this.isPause = false;
                        Iterator it6 = ExoUserPlayer.this.videoInfoListeners.iterator();
                        while (it6.hasNext()) {
                            ((VideoInfoListener) it6.next()).onPlayStart(ExoUserPlayer.this.getCurrentPosition());
                        }
                    }
                } else if (i2 == 4) {
                    String unused4 = ExoUserPlayer.TAG;
                    ExoUserPlayer.this.isEnd = true;
                    ExoUserPlayer.this.clearResumePosition();
                    Iterator<ExoPlayerViewListener> it7 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it7.hasNext()) {
                        it7.next().showReplayView(0);
                    }
                    Iterator it8 = ExoUserPlayer.this.videoInfoListeners.iterator();
                    while (it8.hasNext()) {
                        ((VideoInfoListener) it8.next()).onPlayEnd();
                    }
                }
            }

            @Override // f.i.a.a.l0.b
            public void onPositionDiscontinuity(int i2) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onRepeatModeChanged(int i2) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onSeekProcessed() {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onShuffleModeEnabledChanged(boolean z) {
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onTimelineChanged(u0 u0Var, Object obj, int i2) {
                if (ExoUserPlayer.this.isSwitch) {
                    ExoUserPlayer.this.isSwitch = false;
                    this.isRemove = true;
                    ExoUserPlayer.this.player.k(ExoUserPlayer.this.player.a(), ExoUserPlayer.this.resumePosition.longValue());
                }
            }

            @Override // f.i.a.a.l0.a, f.i.a.a.l0.b
            public void onTracksChanged(p0 p0Var, k kVar) {
                boolean z = true;
                if (ExoUserPlayer.this.getWindowCount() <= 1) {
                    return;
                }
                if (this.isRemove) {
                    this.isRemove = false;
                    ExoUserPlayer.this.mediaSourceBuilder.removeMedia(ExoUserPlayer.this.resumeWindow);
                    return;
                }
                if (!ExoUserPlayer.this.videoWindowListeners.isEmpty()) {
                    Iterator it = ExoUserPlayer.this.videoWindowListeners.iterator();
                    while (it.hasNext()) {
                        ((VideoWindowListener) it.next()).onCurrentIndex(ExoUserPlayer.this.player.z(), ExoUserPlayer.this.getWindowCount());
                    }
                }
                if (ExoUserPlayer.this.mediaSourceBuilder.getIndexType() >= 0) {
                    if (ExoUserPlayer.this.mediaSourceBuilder.getIndexType() == ExoUserPlayer.this.player.z() && ExoUserPlayer.this.mediaSourceBuilder.getIndexType() > 0) {
                        z = false;
                    }
                    Iterator<ExoPlayerViewListener> it2 = ExoUserPlayer.this.getPlayerViewListeners().iterator();
                    while (it2.hasNext()) {
                        it2.next().setOpenSeek(z);
                    }
                }
            }
        };
        this.activity = context.getApplicationContext();
        this.videoInfoListeners = new CopyOnWriteArraySet<>();
        this.videoWindowListeners = new CopyOnWriteArraySet<>();
        this.basePlayerListeners = new CopyOnWriteArraySet<>();
        this.mPlayerViewListeners = new CopyOnWriteArraySet<>();
        this.playComponentListener = new PlayComponent(this);
        this.mediaSourceBuilder = mediaSourceBuilder;
        Iterator<ExoPlayerViewListener> it = getPlayerViewListeners().iterator();
        while (it.hasNext()) {
            it.next().setPlayerBtnOnTouch(true);
        }
    }
}
