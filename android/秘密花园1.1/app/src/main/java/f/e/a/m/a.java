package f.e.a.m;

import android.os.Handler;
import android.os.Message;
import com.comeback.data.widget.VideoLoadingProgressbar;

/* compiled from: VideoLoadingProgressbar.java */
/* loaded from: classes.dex */
public class a extends Handler {
    public final /* synthetic */ VideoLoadingProgressbar a;

    public a(VideoLoadingProgressbar videoLoadingProgressbar) {
        this.a = videoLoadingProgressbar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        this.a.invalidate();
        sendEmptyMessageDelayed(1, this.a.f2275h);
    }
}
