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
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.a.a.a.l.g;
import f.a.a.a.l.l;
import f.e.a.e;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public String f2201e = "";

    /* renamed from: f  reason: collision with root package name */
    public SearchResult f2202f;
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
                if (searchActivity.f2202f != null) {
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

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(SearchResult searchResult) {
            SearchResult searchResult2 = searchResult;
            SearchActivity.this.x(true);
            SearchActivity searchActivity = SearchActivity.this;
            searchActivity.f2202f = searchResult2;
            RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
            searchActivity.recyclerView.setRecycledViewPool(recycledViewPool);
            recycledViewPool.setMaxRecycledViews(0, 10);
            VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(searchActivity);
            searchActivity.recyclerView.setLayoutManager(virtualLayoutManager);
            DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
            searchActivity.recyclerView.setAdapter(delegateAdapter);
            delegateAdapter.b(new VSearchHeadAdapter(searchActivity, searchResult2.getData().getHotwords(), new l(), new f.e.a.j.r0.c(searchActivity)));
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
            int i2 = 0;
            SearchActivity.this.x(false);
            SearchActivity searchActivity = SearchActivity.this;
            if (searchActivity == null) {
                throw null;
            } else if (searchResult.getData().getHotrows() != null && searchResult.getData().getHotrows().size() != 0) {
                g m2 = f.b.a.a.a.m(2, 5, 5);
                m2.s = true;
                searchActivity.f119d.b(new VMovieItemAdapter(searchActivity, searchResult.getData().getHotrows(), m2));
            } else if (searchActivity.b == 1) {
                searchActivity.tvNoResult.setVisibility(0);
            } else {
                int itemCount = searchActivity.f119d.getItemCount();
                View view = searchActivity.tvNoResult;
                if (itemCount > 1) {
                    i2 = 8;
                }
                view.setVisibility(i2);
            }
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
        this.searchInput.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.r0.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        this.searchInput.addTextChangedListener(new a());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        j jVar;
        h.c0(this);
        m.e<SearchResult> d2 = f.e.a.j.r0.f.b.a().d(i2, this.f2201e);
        if (i2 == 1 && TextUtils.isEmpty(this.f2201e) && this.f2202f == null) {
            jVar = new b();
        } else {
            if (this.b == 1) {
                this.f119d.d();
            }
            jVar = new c();
        }
        k(d2, jVar);
    }

    public /* synthetic */ boolean v(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        String trim = this.searchInput.getText().toString().trim();
        this.f2201e = trim;
        if (!TextUtils.isEmpty(trim)) {
            x(false);
            this.b = 1;
            p(1);
        }
        return true;
    }

    public /* synthetic */ void w(String str) {
        this.searchInput.setText(str);
        x(false);
        this.f2201e = str;
        this.b = 1;
        p(1);
    }

    public final void x(boolean z) {
        int i2 = 0;
        this.recyclerView.setVisibility(z ? 0 : 8);
        SmartRefreshLayout smartRefreshLayout = this.refreshLayout;
        if (z) {
            i2 = 8;
        }
        smartRefreshLayout.setVisibility(i2);
        this.tvNoResult.setVisibility(8);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }
}
