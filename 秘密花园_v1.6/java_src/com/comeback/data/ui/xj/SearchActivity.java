package com.comeback.data.ui.xj;

import android.content.Context;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.xj.SearchActivity;
import com.comeback.data.ui.xj.adapter.VMovieItemAdapter;
import com.comeback.data.ui.xj.adapter.VSearchHeadAdapter;
import com.comeback.data.ui.xj.bean.SearchResult;
import com.comeback.secret.garden.R;
import f.a.a.a.l.g;
import f.a.a.a.l.l;
import f.e.a.e;
import m.j;
/* loaded from: classes.dex */
public class SearchActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public String f2280e = "";

    /* renamed from: f  reason: collision with root package name */
    public SearchResult f2281f;
    @BindView
    public RecyclerView recyclerView;
    @BindView
    public EditText searchInput;
    @BindView
    public View tvNoResult;

    /* loaded from: classes.dex */
    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            if (TextUtils.isEmpty(charSequence.toString().trim())) {
                SearchActivity searchActivity = SearchActivity.this;
                if (searchActivity.f2281f != null) {
                    searchActivity.x(true);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<SearchResult> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(SearchResult searchResult) {
            SearchResult searchResult2 = searchResult;
            SearchActivity.this.x(true);
            final SearchActivity searchActivity = SearchActivity.this;
            searchActivity.f2281f = searchResult2;
            RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
            searchActivity.recyclerView.setRecycledViewPool(recycledViewPool);
            recycledViewPool.setMaxRecycledViews(0, 10);
            VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(searchActivity);
            searchActivity.recyclerView.setLayoutManager(virtualLayoutManager);
            DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
            searchActivity.recyclerView.setAdapter(delegateAdapter);
            delegateAdapter.b(new VSearchHeadAdapter(searchActivity, searchResult2.getData().getHotwords(), new l(), new VSearchHeadAdapter.a() { // from class: f.e.a.j.s0.c
                @Override // com.comeback.data.ui.xj.adapter.VSearchHeadAdapter.a
                public final void a(String str) {
                    SearchActivity.this.w(str);
                }
            }));
            g gVar = new g(2);
            gVar.D(5);
            gVar.C(5);
            gVar.s = true;
            delegateAdapter.b(new VMovieItemAdapter(searchActivity, searchResult2.getData().getHotrows(), gVar));
        }
    }

    /* loaded from: classes.dex */
    public class c extends BaseRefreshActivity.a<SearchResult> {
        public c() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            SearchResult searchResult = (SearchResult) obj;
            SearchActivity.this.x(false);
            SearchActivity searchActivity = SearchActivity.this;
            if (searchActivity != null) {
                if (searchResult.getData().getHotrows() != null && searchResult.getData().getHotrows().size() != 0) {
                    g m2 = f.b.a.a.a.m(2, 5, 5);
                    m2.s = true;
                    searchActivity.f119d.b(new VMovieItemAdapter(searchActivity, searchResult.getData().getHotrows(), m2));
                    return;
                } else if (searchActivity.b == 1) {
                    searchActivity.tvNoResult.setVisibility(0);
                    return;
                } else {
                    searchActivity.tvNoResult.setVisibility(searchActivity.f119d.getItemCount() > 1 ? 8 : 0);
                    return;
                }
            }
            throw null;
        }
    }

    public static void y(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xj_search;
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFBVVlJBfw==")));
        h(Color.parseColor(e.a("FFBVVlJBfw==")));
        super.e();
        this.searchInput.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.s0.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        this.searchInput.addTextChangedListener(new a());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        j cVar;
        h.c0(this);
        m.e<SearchResult> d2 = f.e.a.j.s0.g.b.a().d(i2, this.f2280e);
        if (i2 == 1 && TextUtils.isEmpty(this.f2280e) && this.f2281f == null) {
            cVar = new b();
        } else {
            if (this.b == 1) {
                this.f119d.d();
            }
            cVar = new c();
        }
        k(d2, cVar);
    }

    public /* synthetic */ boolean v(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String trim = this.searchInput.getText().toString().trim();
            this.f2280e = trim;
            if (!TextUtils.isEmpty(trim)) {
                x(false);
                this.b = 1;
                p(1);
            }
            return true;
        }
        return false;
    }

    public /* synthetic */ void w(String str) {
        this.searchInput.setText(str);
        x(false);
        this.f2280e = str;
        this.b = 1;
        p(1);
    }

    public final void x(boolean z) {
        this.recyclerView.setVisibility(z ? 0 : 8);
        this.refreshLayout.setVisibility(z ? 8 : 0);
        this.tvNoResult.setVisibility(8);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }
}
