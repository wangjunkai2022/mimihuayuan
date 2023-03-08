package f.e.a.j.s0.e;

import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import com.comeback.data.ui.xj.adapter.ShortVideoAdapter;
import f.i.a.a.w;

/* compiled from: ShortVideoAdapter.java */
/* loaded from: classes.dex */
public class q implements VideoInfoListener {
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder a;

    public q(ShortVideoAdapter.TiktopHolder tiktopHolder) {
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
        tiktopHolder.mSeekBar.postDelayed(tiktopHolder.b, 300L);
        this.a.mIvPlay.setClickable(true);
        this.a.mIvPlay.setImageDrawable(null);
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void onPlayerError(@Nullable w wVar) {
        this.a.mIvPlay.setClickable(false);
    }
}
