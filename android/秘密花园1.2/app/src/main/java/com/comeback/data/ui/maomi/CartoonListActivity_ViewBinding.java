package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class CartoonListActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public CartoonListActivity f1604c;

    @UiThread
    public CartoonListActivity_ViewBinding(CartoonListActivity cartoonListActivity, View view) {
        super(cartoonListActivity, view);
        this.f1604c = cartoonListActivity;
        cartoonListActivity.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        CartoonListActivity cartoonListActivity = this.f1604c;
        if (cartoonListActivity != null) {
            this.f1604c = null;
            cartoonListActivity.mTvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
