package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VoiceAnchorDetailActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public VoiceAnchorDetailActivity f1639c;

    @UiThread
    public VoiceAnchorDetailActivity_ViewBinding(VoiceAnchorDetailActivity voiceAnchorDetailActivity, View view) {
        super(voiceAnchorDetailActivity, view);
        this.f1639c = voiceAnchorDetailActivity;
        voiceAnchorDetailActivity.mIvHeader = (ImageView) c.c(view, R.id.iv_header, e.a("UQsGCA9THl46EHwCGQ4GGRA="), ImageView.class);
        voiceAnchorDetailActivity.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        VoiceAnchorDetailActivity voiceAnchorDetailActivity = this.f1639c;
        if (voiceAnchorDetailActivity != null) {
            this.f1639c = null;
            voiceAnchorDetailActivity.mIvHeader = null;
            voiceAnchorDetailActivity.mTvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
