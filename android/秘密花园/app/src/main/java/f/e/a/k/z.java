package f.e.a.k;

import android.view.View;
import chuangyuan.ycj.videolibrary.widget.VideoPlayerView;
import com.comeback.data.ui.main.AddCollectActivity;

/* compiled from: VideoUtils.java */
/* loaded from: classes.dex */
public final class z implements View.OnClickListener {
    public final /* synthetic */ VideoPlayerView a;
    public final /* synthetic */ String b;

    public z(VideoPlayerView videoPlayerView, String str) {
        this.a = videoPlayerView;
        this.b = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AddCollectActivity.m(this.a.getContext(), this.b);
    }
}
