package com.comeback.data.ui.cm;

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

    /* renamed from: c  reason: collision with root package name */
    public View f333c;

    /* renamed from: d  reason: collision with root package name */
    public View f334d;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f335c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f335c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f335c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f336c;

        public b(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f336c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f336c.onClick(view);
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        this.b = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        searchActivity.rvHot = (RecyclerView) c.c(view, R.id.rv_hot, e.a("UQsGCA9THkEFLlsTXw=="), RecyclerView.class);
        searchActivity.rvRecommend = (RecyclerView) c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
        View b2 = c.b(view, R.id.iv_back, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f333c = b2;
        b2.setOnClickListener(new a(this, searchActivity));
        View b3 = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f334d = b3;
        b3.setOnClickListener(new b(this, searchActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchActivity searchActivity = this.b;
        if (searchActivity != null) {
            this.b = null;
            searchActivity.etSearch = null;
            searchActivity.rvHot = null;
            searchActivity.rvRecommend = null;
            this.f333c.setOnClickListener(null);
            this.f333c = null;
            this.f334d.setOnClickListener(null);
            this.f334d = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
