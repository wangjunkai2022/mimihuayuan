package chuangyuan.ycj.videolibrary.listener;

import androidx.annotation.Nullable;
import f.i.a.a.w;
/* loaded from: classes.dex */
public interface VideoInfoListener {
    void isPlaying(boolean z);

    void onLoadingChanged();

    void onPlayEnd();

    void onPlayStart(long j2);

    void onPlayerError(@Nullable w wVar);
}
