package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchActivity f1625c;

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        super(searchActivity, view);
        this.f1625c = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        searchActivity.rvHot = (RecyclerView) c.c(view, R.id.rv_hot, e.a("UQsGCA9THkEFLlsTXw=="), RecyclerView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchActivity searchActivity = this.f1625c;
        if (searchActivity != null) {
            this.f1625c = null;
            searchActivity.etSearch = null;
            searchActivity.rvHot = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
