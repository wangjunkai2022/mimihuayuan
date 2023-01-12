package com.comeback.data.ui.mimei;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchActivity_ViewBinding implements Unbinder {
    public SearchActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1755c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchActivity f1756c;

        public a(SearchActivity_ViewBinding searchActivity_ViewBinding, SearchActivity searchActivity) {
            this.f1756c = searchActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1756c.finish();
        }
    }

    @UiThread
    public SearchActivity_ViewBinding(SearchActivity searchActivity, View view) {
        this.b = searchActivity;
        searchActivity.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        TextView textView = (TextView) c.a(b, R.id.iv_cancel, e.a("UQsGCA9THloFJVUJGw8PTA=="), TextView.class);
        this.f1755c = b;
        b.setOnClickListener(new a(this, searchActivity));
        searchActivity.rvTags = (RecyclerView) c.c(view, R.id.rv_tags, e.a("UQsGCA9THkEFMlUAC00="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchActivity searchActivity = this.b;
        if (searchActivity != null) {
            this.b = null;
            searchActivity.etSearch = null;
            searchActivity.rvTags = null;
            this.f1755c.setOnClickListener(null);
            this.f1755c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
