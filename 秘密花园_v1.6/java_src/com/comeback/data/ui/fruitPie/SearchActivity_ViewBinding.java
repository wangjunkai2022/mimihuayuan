package com.comeback.data.ui.fruitPie;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchActivity f708c;

    /* renamed from: d  reason: collision with root package name */
    public View f709d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f710c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f710c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f710c.finish();
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        super(searchActivity, view);
        this.f708c = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f709d = b;
        b.setOnClickListener(new a(this, searchActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchActivity searchActivity = this.f708c;
        if (searchActivity != null) {
            this.f708c = null;
            searchActivity.etSearch = null;
            this.f709d.setOnClickListener(null);
            this.f709d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
