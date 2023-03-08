package chuangyuan.ycj.videolibrary.listener;

/* loaded from: classes.dex */
public interface ExoPlayerListener {
    void land();

    void onCreatePlayers();

    void onDetachedFromWindow(boolean z);

    void playVideoUri();

    void replayPlayers();

    void startPlayers();

    void switchUri(int i2);
}
