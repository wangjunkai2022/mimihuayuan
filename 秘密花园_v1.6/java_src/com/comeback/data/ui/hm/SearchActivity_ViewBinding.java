package com.comeback.data.ui.hm;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchActivity f1129c;

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        super(searchActivity, view);
        this.f1129c = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchActivity searchActivity = this.f1129c;
        if (searchActivity != null) {
            this.f1129c = null;
            searchActivity.etSearch = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
