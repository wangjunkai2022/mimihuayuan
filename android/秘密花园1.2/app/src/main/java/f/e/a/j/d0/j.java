package f.e.a.j.d0;

import com.comeback.data.ui.maomi.VoicePlayActivity;
import com.comeback.data.ui.maomi.bean.VoiceDetail;
import com.comeback.secret.garden.R;
import java.util.List;

/* compiled from: VoicePlayActivity.java */
/* loaded from: classes.dex */
public class j extends m.j<VoiceDetail> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ VoicePlayActivity f3915e;

    public j(VoicePlayActivity voicePlayActivity) {
        this.f3915e = voicePlayActivity;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(VoiceDetail voiceDetail) {
        VoiceDetail voiceDetail2 = voiceDetail;
        VoicePlayActivity voicePlayActivity = this.f3915e;
        if (voicePlayActivity != null) {
            List<VoiceDetail.DataBeanX.DataBean> data = voiceDetail2.getData().getData();
            voicePlayActivity.f1649f = data;
            voicePlayActivity.f1646c.setPlayUri(data.get(voicePlayActivity.f1648e).getContent());
            voicePlayActivity.f1646c.startPlayer();
            voicePlayActivity.mIvPlay.setImageResource(R.drawable.maomi_pause);
            return;
        }
        throw null;
    }
}
