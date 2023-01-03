package com.comeback.data.ui.avbobo;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchResultActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchResultActivity f169c;

    @UiThread
    public SearchResultActivity_ViewBinding(SearchResultActivity searchResultActivity, View view) {
        super(searchResultActivity, view);
        this.f169c = searchResultActivity;
        searchResultActivity.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        searchResultActivity.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
        searchResultActivity.tab3 = (TabLayout) c.c(view, R.id.tab3, e.a("UQsGCA9THkcSBAdA"), TabLayout.class);
        searchResultActivity.tab4 = (TabLayout) c.c(view, R.id.tab4, e.a("UQsGCA9THkcSBABA"), TabLayout.class);
        searchResultActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchResultActivity searchResultActivity = this.f169c;
        if (searchResultActivity != null) {
            this.f169c = null;
            searchResultActivity.tab1 = null;
            searchResultActivity.tab2 = null;
            searchResultActivity.tab3 = null;
            searchResultActivity.tab4 = null;
            searchResultActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
