package com.comeback.data.ui.md.fragment;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.UiThread;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SearchFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public SearchFragment f1724c;

    /* renamed from: d  reason: collision with root package name */
    public View f1725d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SearchFragment f1726c;

        public a(SearchFragment_ViewBinding searchFragment_ViewBinding, SearchFragment searchFragment) {
            this.f1726c = searchFragment;
        }

        @Override // d.c.b
        public void a(View view) {
            SearchFragment searchFragment = this.f1726c;
            String obj = searchFragment.searchInput.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                h.n1(e.a("0fL/g9/R3LbAj6DJkMXuj4/vi+fWl4GJlM+O"));
                return;
            }
            searchFragment.f1721i = obj;
            searchFragment.refreshLayout.h();
        }
    }

    @UiThread
    public SearchFragment_ViewBinding(SearchFragment searchFragment, View view) {
        super(searchFragment, view);
        this.f1724c = searchFragment;
        searchFragment.searchInput = (EditText) c.c(view, R.id.search_input, e.a("UQsGCA9THkAWB0YEECMNG0IWRA=="), EditText.class);
        View b = c.b(view, R.id.tv_search, e.a("UQsGCA9THkcFNVEGCgkLTBcDDQBLHlxHGwlQR18ZBgpFAQtD"));
        TextView textView = (TextView) c.a(b, R.id.tv_search, e.a("UQsGCA9THkcFNVEGCgkLTA=="), TextView.class);
        this.f1725d = b;
        b.setOnClickListener(new a(this, searchFragment));
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        SearchFragment searchFragment = this.f1724c;
        if (searchFragment != null) {
            this.f1724c = null;
            searchFragment.searchInput = null;
            this.f1725d.setOnClickListener(null);
            this.f1725d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
