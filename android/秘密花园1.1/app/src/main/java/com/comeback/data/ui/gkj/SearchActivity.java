package com.comeback.data.ui.gkj;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.gkj.SearchActivity;
import com.comeback.data.ui.gkj.adapter.RecommendAdapter;
import com.comeback.data.ui.gkj.adapter.WeekAdapter;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.secret.garden.R;
import f.e.a.j.m.p.e;
import f.j.a.a.f.i;
import f.j.a.a.l.d;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {
    @BindView
    public EditText etSearch;
    @BindView
    public ImageView ivCancel;
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
            SearchActivity.this.ivCancel.setVisibility(isEmpty ? 8 : 0);
            SearchActivity.this.rvRecommend.setVisibility(isEmpty ? 0 : 8);
            SearchActivity.this.refreshLayout.setVisibility(isEmpty ? 8 : 0);
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<ComicList> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(ComicList comicList) {
            RecommendAdapter recommendAdapter = new RecommendAdapter(SearchActivity.this);
            SearchActivity.this.rvRecommend.setLayoutManager(new StaggeredGridLayoutManager(5, 0));
            SearchActivity.this.rvRecommend.setAdapter(recommendAdapter);
            recommendAdapter.a(comicList.getData());
        }
    }

    /* loaded from: classes.dex */
    public class c extends BaseRefreshActivity.a<ComicList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f894f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i2) {
            super();
            this.f894f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ComicList comicList = (ComicList) obj;
            if (this.f894f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(comicList.getData());
        }
    }

    public static void w(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_gkj_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new d() { // from class: f.e.a.j.m.i
            @Override // f.j.a.a.l.d
            public final void b(f.j.a.a.f.i iVar) {
                SearchActivity.this.t(iVar);
            }
        };
        this.refreshLayout.v(new f.j.a.a.l.b() { // from class: f.e.a.j.m.k
            @Override // f.j.a.a.l.b
            public final void d(f.j.a.a.f.i iVar) {
                SearchActivity.this.u(iVar);
            }
        });
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        WeekAdapter weekAdapter = new WeekAdapter(this);
        this.f114c = weekAdapter;
        this.mRvList.setAdapter(weekAdapter);
        this.etSearch.addTextChangedListener(new a());
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.m.j
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        f.e.a.j.m.p.c b2 = e.b();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("BlI=", hashMap, f.b.a.a.a.i("XwMNCQod", hashMap, f.e.a.e.a("UA4MBgofZkcKFlE="), "WwsODR8="), "RwMEAQ=="), f.e.a.e.a("Bg=="));
        k(b2.b(hashMap), new b());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new WeekAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new LinearLayoutManager(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        h.c0(this);
        String trim = this.etSearch.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            return;
        }
        f.e.a.j.m.p.c b2 = e.b();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.e.a.e.a("VA0ODQgsTVoHClE="), trim);
        hashMap.put(f.b.a.a.a.i("BlY=", hashMap, f.e.a.e.a("WwsODR8="), "RwMEAQ=="), String.valueOf(i2));
        k(b2.a(hashMap), new c(i2));
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
            String obj = this.etSearch.getText().toString();
            if (TextUtils.isEmpty(obj)) {
                return true;
            }
            SearchResultActivity.n(this, obj);
            return true;
        }
        return false;
    }
}
