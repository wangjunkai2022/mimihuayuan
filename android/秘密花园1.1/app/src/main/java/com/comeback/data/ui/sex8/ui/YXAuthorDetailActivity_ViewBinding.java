package com.comeback.data.ui.sex8.ui;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class YXAuthorDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public YXAuthorDetailActivity f1883c;

    @UiThread
    public YXAuthorDetailActivity_ViewBinding(YXAuthorDetailActivity yXAuthorDetailActivity, View view) {
        super(yXAuthorDetailActivity, view);
        this.f1883c = yXAuthorDetailActivity;
        yXAuthorDetailActivity.ivHeader = (RatioImageView) c.c(view, R.id.iv_header, e.a("UQsGCA9THloFLlEGHA8RTA=="), RatioImageView.class);
        yXAuthorDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        yXAuthorDetailActivity.tvSpecial = (TextView) c.c(view, R.id.tv_special, e.a("UQsGCA9THkcFNUQCGwMCBxA="), TextView.class);
        yXAuthorDetailActivity.tvHot = (TextView) c.c(view, R.id.tv_hot, e.a("UQsGCA9THkcFLlsTXw=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        YXAuthorDetailActivity yXAuthorDetailActivity = this.f1883c;
        if (yXAuthorDetailActivity != null) {
            this.f1883c = null;
            yXAuthorDetailActivity.ivHeader = null;
            yXAuthorDetailActivity.tvTitle = null;
            yXAuthorDetailActivity.tvSpecial = null;
            yXAuthorDetailActivity.tvHot = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
