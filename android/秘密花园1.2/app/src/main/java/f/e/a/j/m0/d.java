package f.e.a.j.m0;

import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.listener.VideoInfoListener;
import com.comeback.data.ui.test.TiktopAdapter;
import f.i.a.a.w;

/* compiled from: TiktopAdapter.java */
/* loaded from: classes.dex */
public class d implements VideoInfoListener {
    public final /* synthetic */ TiktopAdapter.TiktopHolder a;

    public d(TiktopAdapter.TiktopHolder tiktopHolder) {
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
        TiktopAdapter.TiktopHolder tiktopHolder = this.a;
        tiktopHolder.mSeekBar.postDelayed(tiktopHolder.b, 300L);
        this.a.mIvPlay.setClickable(true);
    }

    @Override // chuangyuan.ycj.videolibrary.listener.VideoInfoListener
    public void onPlayerError(@Nullable w wVar) {
        this.a.mIvPlay.setClickable(false);
    }
}
