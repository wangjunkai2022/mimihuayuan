package com.comeback.data.ui.gdian;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchResultActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchResultActivity f888c;

    @UiThread
    public SearchResultActivity_ViewBinding(SearchResultActivity searchResultActivity, View view) {
        super(searchResultActivity, view);
        this.f888c = searchResultActivity;
        searchResultActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchResultActivity searchResultActivity = this.f888c;
        if (searchResultActivity != null) {
            this.f888c = null;
            searchResultActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
