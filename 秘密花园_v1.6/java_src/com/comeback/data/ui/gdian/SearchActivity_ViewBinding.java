package com.comeback.data.ui.gdian;

import android.view.View;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class SearchActivity_ViewBinding implements Unbinder {
    public SearchActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f886c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f887c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f887c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f887c.finish();
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        this.b = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
        this.f886c = b;
        b.setOnClickListener(new a(this, searchActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchActivity searchActivity = this.b;
        if (searchActivity != null) {
            this.b = null;
            searchActivity.etSearch = null;
            this.f886c.setOnClickListener(null);
            this.f886c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
