package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VoiceAnchorSpecialActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VoiceAnchorSpecialActivity f1570c;

    @UiThread
    public VoiceAnchorSpecialActivity_ViewBinding(VoiceAnchorSpecialActivity voiceAnchorSpecialActivity, View view) {
        super(voiceAnchorSpecialActivity, view);
        this.f1570c = voiceAnchorSpecialActivity;
        voiceAnchorSpecialActivity.ivHeader = (RatioImageView) c.c(view, R.id.iv_header, e.a("UQsGCA9THloFLlEGHA8RTA=="), RatioImageView.class);
        voiceAnchorSpecialActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        VoiceAnchorSpecialActivity voiceAnchorSpecialActivity = this.f1570c;
        if (voiceAnchorSpecialActivity != null) {
            this.f1570c = null;
            voiceAnchorSpecialActivity.ivHeader = null;
            voiceAnchorSpecialActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
