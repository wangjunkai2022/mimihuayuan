package com.comeback.data.ui.maomi;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.maomi.SearchActivity;
import com.comeback.data.ui.maomi.adapter.SearchMovieItemAdapter;
import com.comeback.data.ui.maomi.bean.HotWords;
import com.comeback.data.ui.maomi.bean.SearchResult;
import com.comeback.secret.garden.R;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.c0.h;
import f.j.a.a.f.i;
import f.j.a.a.l.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SearchActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public HotWords f1541e;
    @BindView
    public EditText etSearch;

    /* renamed from: f  reason: collision with root package name */
    public String f1542f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f1543g;
    @BindView
    public RecyclerView rvHot;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<SearchResult> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1544f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1544f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SearchResult searchResult = (SearchResult) obj;
            if (this.f1544f == 1) {
                SearchActivity searchActivity = SearchActivity.this;
                if (!searchActivity.f1543g) {
                    searchActivity.r();
                    SearchActivity.this.f1543g = true;
                    SearchActivity.u(SearchActivity.this, searchResult);
                }
            }
            SearchActivity.this.f1543g = false;
            SearchActivity.u(SearchActivity.this, searchResult);
        }
    }

    /* loaded from: classes.dex */
    public class b implements TextWatcher {
        public b() {
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
                if (searchActivity.f1541e != null) {
                    searchActivity.y(true);
                }
            }
        }
    }

    public static void u(SearchActivity searchActivity, SearchResult searchResult) {
        if (searchActivity != null) {
            g gVar = new g(3);
            gVar.q(15, 0, 15, 0);
            gVar.D(15);
            gVar.C(15);
            searchActivity.f119d.b(new SearchMovieItemAdapter(searchActivity, searchResult.getData().getData(), gVar));
            return;
        }
        throw null;
    }

    public static void z(@NonNull Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_search;
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.c0.d
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                SearchActivity.this.v(iVar);
            }
        };
        y(true);
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.c0.c
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                SearchActivity.this.w(iVar);
            }
        });
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        this.mRvList.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 10);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(this);
        this.mRvList.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        this.f119d = delegateAdapter;
        this.mRvList.setAdapter(delegateAdapter);
        if (this.f1541e == null) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(e.a("QxsTAQ=="), 3);
                jSONObject.put(e.a("RwMEAQ=="), 1);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            k(f.e.a.j.c0.m.d.a().k(f.e.a.j.c0.m.b.a(jSONObject.toString())), new h(this));
        }
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.c0.b
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.x(textView, i2, keyEvent);
            }
        });
        this.etSearch.addTextChangedListener(new b());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        c.a.a.b.g.h.c0(this);
        y(false);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("XAcaEwQBXQ=="), this.f1542f);
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(f.e.a.j.c0.m.d.a().n(f.e.a.j.c0.m.b.a(jSONObject.toString())), new a(i2));
    }

    public /* synthetic */ void v(i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void w(i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ boolean x(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String trim = this.etSearch.getText().toString().trim();
            this.f1542f = trim;
            if (TextUtils.isEmpty(trim)) {
                return true;
            }
            this.refreshLayout.h();
            return true;
        }
        return false;
    }

    public final void y(boolean z) {
        this.rvHot.setVisibility(z ? 0 : 8);
        this.refreshLayout.setVisibility(z ? 8 : 0);
    }
}
