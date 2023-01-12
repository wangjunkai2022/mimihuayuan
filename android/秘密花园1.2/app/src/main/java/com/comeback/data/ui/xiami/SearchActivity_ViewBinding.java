package com.comeback.data.ui.xiami;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
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
    public SearchActivity f2217c;

    /* renamed from: d  reason: collision with root package name */
    public View f2218d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f2219c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f2219c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f2219c.etSearch.setText("");
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        super(searchActivity, view);
        this.f2217c = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTBcDDQBLHlxHGwlQR18JAgVUBw9D"));
        searchActivity.ivCancel = (ImageView) c.a(b, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTA=="), ImageView.class);
        this.f2218d = b;
        b.setOnClickListener(new a(this, searchActivity));
        searchActivity.rvRecommend = (RecyclerView) c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchActivity searchActivity = this.f2217c;
        if (searchActivity != null) {
            this.f2217c = null;
            searchActivity.etSearch = null;
            searchActivity.ivCancel = null;
            searchActivity.rvRecommend = null;
            this.f2218d.setOnClickListener(null);
            this.f2218d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
