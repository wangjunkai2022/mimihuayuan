package com.comeback.data.ui.isiyu;

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
    public SearchActivity f1173c;

    /* renamed from: d  reason: collision with root package name */
    public View f1174d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f1175c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f1175c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1175c.etSearch.setText("");
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        super(searchActivity, view);
        this.f1173c = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTBcDDQBLHlxHGwlQR18JAgVUBw9D"));
        searchActivity.ivCancel = (ImageView) c.a(b, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTA=="), ImageView.class);
        this.f1174d = b;
        b.setOnClickListener(new a(this, searchActivity));
        searchActivity.rvRecommend = (RecyclerView) c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchActivity searchActivity = this.f1173c;
        if (searchActivity != null) {
            this.f1173c = null;
            searchActivity.etSearch = null;
            searchActivity.ivCancel = null;
            searchActivity.rvRecommend = null;
            this.f1174d.setOnClickListener(null);
            this.f1174d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
