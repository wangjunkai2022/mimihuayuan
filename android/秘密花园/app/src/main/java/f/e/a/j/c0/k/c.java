package f.e.a.j.c0.k;

import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import com.comeback.data.ui.maomi.adapter.ShortVideoAdapter;
import f.i.a.a.w;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class c implements VideoInfoListener {
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder a;

    public c(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.a = tiktopHolder;
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void isPlaying(boolean z) {
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void onLoadingChanged() {
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void onPlayEnd() {
        this.a.a.startPlayer();
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void onPlayStart(long j2) {
        ShortVideoAdapter.TiktopHolder tiktopHolder = this.a;
        tiktopHolder.mSeekBar.postDelayed(tiktopHolder.b, 300);
        this.a.mIvPlay.setClickable(true);
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void onPlayerError(@Nullable w wVar) {
        this.a.mIvPlay.setClickable(false);
    }
}
