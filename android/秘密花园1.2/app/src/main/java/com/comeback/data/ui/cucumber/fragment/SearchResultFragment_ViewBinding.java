package com.comeback.data.ui.cucumber.fragment;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchResultFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchResultFragment f516c;

    @UiThread
    public SearchResultFragment_ViewBinding(SearchResultFragment searchResultFragment, View view) {
        super(searchResultFragment, view);
        this.f516c = searchResultFragment;
        searchResultFragment.tvHint = (TextView) c.c(view, R.id.tv_hint, e.a("UQsGCA9THkcFLl0JDE0="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchResultFragment searchResultFragment = this.f516c;
        if (searchResultFragment != null) {
            this.f516c = null;
            searchResultFragment.tvHint = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
