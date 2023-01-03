package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SpecialDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SpecialDetailActivity f1553c;

    @UiThread
    public SpecialDetailActivity_ViewBinding(SpecialDetailActivity specialDetailActivity, View view) {
        super(specialDetailActivity, view);
        this.f1553c = specialDetailActivity;
        specialDetailActivity.ivBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFJFNA"), ImageView.class);
        specialDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        specialDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SpecialDetailActivity specialDetailActivity = this.f1553c;
        if (specialDetailActivity != null) {
            this.f1553c = null;
            specialDetailActivity.ivBg = null;
            specialDetailActivity.tvTitle = null;
            specialDetailActivity.tvDetail = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
