package com.comeback.data.ui.iqiyi;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class CategoryActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public CategoryActivity f1125c;

    @UiThread
    public CategoryActivity_ViewBinding(CategoryActivity categoryActivity, View view) {
        super(categoryActivity, view);
        this.f1125c = categoryActivity;
        categoryActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        CategoryActivity categoryActivity = this.f1125c;
        if (categoryActivity != null) {
            this.f1125c = null;
            categoryActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
