package com.comeback.data.ui.bale;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchActivity_ViewBinding implements Unbinder {
    public SearchActivity b;

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        this.b = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        searchActivity.rvHot = (RecyclerView) c.c(view, R.id.rv_hot, e.a("UQsGCA9THkEFLlsTXw=="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchActivity searchActivity = this.b;
        if (searchActivity != null) {
            this.b = null;
            searchActivity.etSearch = null;
            searchActivity.rvHot = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
