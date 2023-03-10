package com.comeback.data.ui.ds;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.ds.SearchActivity;
import com.comeback.data.ui.ds.adapter.RealTimeAdapter;
import com.comeback.data.ui.ds.bean.ComicListBean;
import com.comeback.data.ui.ds.bean.ScreenBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.j.a.a.f.i;
import f.j.a.a.l.d;
import java.util.HashMap;
import m.j;
/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public RecyclerView rvRecommend;

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
            boolean isEmpty = TextUtils.isEmpty(charSequence.toString().trim());
            SearchActivity.this.rvRecommend.setVisibility(isEmpty ? 0 : 8);
            SearchActivity.this.refreshLayout.setVisibility(isEmpty ? 8 : 0);
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<ComicListBean> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ComicListBean comicListBean) {
            RealTimeAdapter realTimeAdapter = new RealTimeAdapter(SearchActivity.this);
            SearchActivity searchActivity = SearchActivity.this;
            searchActivity.rvRecommend.setLayoutManager(new LinearLayoutManager(searchActivity));
            SearchActivity.this.rvRecommend.setAdapter(realTimeAdapter);
            realTimeAdapter.a(comicListBean.getData());
        }
    }

    /* loaded from: classes.dex */
    public class c extends BaseRefreshActivity.a<ScreenBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f597f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i2) {
            super();
            this.f597f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ScreenBean screenBean = (ScreenBean) obj;
            if (this.f597f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(screenBean.getResult().getList());
        }
    }

    public static void w(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ds_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.i.e
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                SearchActivity.this.t(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.i.d
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                SearchActivity.this.u(iVar);
            }
        });
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        RealTimeAdapter realTimeAdapter = new RealTimeAdapter(this);
        this.f114c = realTimeAdapter;
        this.mRvList.setAdapter(realTimeAdapter);
        this.etSearch.addTextChangedListener(new a());
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.i.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("Bg==", hashMap, f.b.a.a.a.i("AQ==", hashMap, e.a("WwsODR8="), "URg="), "QxsTAQ=="), e.a("Bg=="));
        k(f.e.a.j.i.j.b.a().f(hashMap), new b());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new RealTimeAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        h.c0(this);
        String trim = this.etSearch.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            return;
        }
        f.e.a.j.i.j.a a2 = f.e.a.j.i.j.b.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.G(this.b, hashMap, e.a("RwMEASUc"), "QxsTAQ=="), e.a("Bg=="));
        hashMap.put(e.a("XAcaEwQBXQ=="), trim);
        k(a2.a(hashMap), new c(i2));
    }

    public /* synthetic */ void t(i iVar) {
        this.b = 0;
        int i2 = 0 + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ void u(i iVar) {
        int i2 = this.b + 1;
        this.b = i2;
        p(i2);
    }

    public /* synthetic */ boolean v(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            if (TextUtils.isEmpty(this.etSearch.getText().toString())) {
                return true;
            }
            this.refreshLayout.h();
            return true;
        }
        return false;
    }
}
