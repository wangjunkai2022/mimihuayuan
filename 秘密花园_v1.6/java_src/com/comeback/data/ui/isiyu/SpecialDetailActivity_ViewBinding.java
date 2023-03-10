package com.comeback.data.ui.isiyu;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SpecialDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SpecialDetailActivity f1259c;

    @UiThread
    public SpecialDetailActivity_ViewBinding(SpecialDetailActivity specialDetailActivity, View view) {
        super(specialDetailActivity, view);
        this.f1259c = specialDetailActivity;
        specialDetailActivity.ivCover = (RatioImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), RatioImageView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SpecialDetailActivity specialDetailActivity = this.f1259c;
        if (specialDetailActivity != null) {
            this.f1259c = null;
            specialDetailActivity.ivCover = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
