package com.comeback.data.ui.slf;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchActivity f2035c;

    /* renamed from: d  reason: collision with root package name */
    public View f2036d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f2037c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f2037c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2037c.finish();
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        super(searchActivity, view);
        this.f2035c = searchActivity;
        searchActivity.searchInput = (EditText) c.c(view, R.id.search_input, e.a("UQsGCA9THkAWB0YEECMNG0IWRA=="), EditText.class);
        searchActivity.recyclerView = (RecyclerView) c.c(view, R.id.recycler_view, e.a("UQsGCA9THkEWBU0EFA8RPV4HFEM="), RecyclerView.class);
        searchActivity.tvNoResult = c.b(view, R.id.ll_result_tip, e.a("UQsGCA9THkcFKFs1HRkWB0NF"));
        View b = c.b(view, R.id.cancel_btn, e.a("WgcXDAQXGRQQB1oEHQZE"));
        this.f2036d = b;
        b.setOnClickListener(new a(this, searchActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchActivity searchActivity = this.f2035c;
        if (searchActivity != null) {
            this.f2035c = null;
            searchActivity.searchInput = null;
            searchActivity.recyclerView = null;
            searchActivity.tvNoResult = null;
            this.f2036d.setOnClickListener(null);
            this.f2036d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
