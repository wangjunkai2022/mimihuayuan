package com.comeback.data.ui.jav.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.ui.jav.SearchResultActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchFragment_ViewBinding implements Unbinder {
    public SearchFragment b;

    /* renamed from: c  reason: collision with root package name */
    public View f1308c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchFragment f1309c;

        public a(SearchFragment_ViewBinding searchFragment_ViewBinding, SearchFragment searchFragment) {
            this.f1309c = searchFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchFragment searchFragment = this.f1309c;
            String obj = searchFragment.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                h.n1(e.a("3vX/jebG3J7kgozqkOnej4/YhM3R"));
            } else if (obj.length() < 2) {
                h.n1(e.a("3vX/jebG3J7kgLPukO3QjofzUYHr+Nye5IGYwQ=="));
            } else {
                SearchResultActivity.n(searchFragment.getContext(), obj);
            }
        }
    }

    @UiThread
    public SearchFragment_ViewBinding(SearchFragment searchFragment, View view) {
        this.b = searchFragment;
        searchFragment.etSearch = (EditText) c.c(view, R.id.et_search, e.a("UQsGCA9THlYHNVEGCgkLTA=="), EditText.class);
        View b = c.b(view, R.id.tv_search, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f1308c = b;
        b.setOnClickListener(new a(this, searchFragment));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SearchFragment searchFragment = this.b;
        if (searchFragment != null) {
            this.b = null;
            searchFragment.etSearch = null;
            this.f1308c.setOnClickListener(null);
            this.f1308c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
