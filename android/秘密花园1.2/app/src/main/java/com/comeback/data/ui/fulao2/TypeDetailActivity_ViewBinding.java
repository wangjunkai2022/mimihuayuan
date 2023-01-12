package com.comeback.data.ui.fulao2;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TypeDetailActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public TypeDetailActivity f797c;

    @UiThread
    public TypeDetailActivity_ViewBinding(TypeDetailActivity typeDetailActivity, View view) {
        super(typeDetailActivity, view);
        this.f797c = typeDetailActivity;
        typeDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        TypeDetailActivity typeDetailActivity = this.f797c;
        if (typeDetailActivity != null) {
            this.f797c = null;
            typeDetailActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
