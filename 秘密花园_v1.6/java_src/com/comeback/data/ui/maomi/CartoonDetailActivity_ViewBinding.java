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
public class CartoonDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public CartoonDetailActivity f1603c;

    @UiThread
    public CartoonDetailActivity_ViewBinding(CartoonDetailActivity cartoonDetailActivity, View view) {
        super(cartoonDetailActivity, view);
        this.f1603c = cartoonDetailActivity;
        cartoonDetailActivity.mIvBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THl46EHYAXw=="), ImageView.class);
        cartoonDetailActivity.mTvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THl4nEHACDAsKBxA="), TextView.class);
        cartoonDetailActivity.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        CartoonDetailActivity cartoonDetailActivity = this.f1603c;
        if (cartoonDetailActivity != null) {
            this.f1603c = null;
            cartoonDetailActivity.mIvBg = null;
            cartoonDetailActivity.mTvDetail = null;
            cartoonDetailActivity.mTvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
