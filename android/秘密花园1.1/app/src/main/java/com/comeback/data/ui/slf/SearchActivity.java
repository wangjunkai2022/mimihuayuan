package com.comeback.data.ui.slf;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.slf.SearchActivity;
import com.comeback.data.ui.slf.adapter.CartoonAdapter;
import com.comeback.data.ui.slf.adapter.ImageAdapter;
import com.comeback.data.ui.slf.adapter.Novel2Adapter;
import com.comeback.data.ui.slf.adapter.TagAdapter;
import com.comeback.data.ui.slf.adapter.VideoAdapter;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.data.ui.slf.bean.SearchInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k0.h.d;
import f.i.b.r;
import java.util.ArrayList;
import m.j;

/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1955d = "";

    /* renamed from: e  reason: collision with root package name */
    public String f1956e;
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
                SearchActivity.this.w(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<SearchInfo> {
        public b() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(SearchInfo searchInfo) {
            final SearchActivity searchActivity = SearchActivity.this;
            searchActivity.recyclerView.setLayoutManager(new GridLayoutManager(searchActivity, 4));
            TagAdapter tagAdapter = new TagAdapter(searchActivity, new TagAdapter.a() { // from class: f.e.a.j.k0.d
                @Override // com.comeback.data.ui.slf.adapter.TagAdapter.a
                public final void a(String str) {
                    SearchActivity.this.u(str);
                }
            });
            searchActivity.recyclerView.setAdapter(tagAdapter);
            tagAdapter.a(searchInfo.getKeywords());
            searchActivity.w(true);
        }
    }

    /* loaded from: classes.dex */
    public class c extends BaseRefreshActivity.a<ArrayList<SLFItemBean>> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1958f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(int i2) {
            super();
            this.f1958f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ArrayList arrayList = (ArrayList) obj;
            if (this.f1958f == 1 && TextUtils.isEmpty(SearchActivity.this.f1955d) && arrayList.size() == 0) {
                SearchActivity.this.tvNoResult.setVisibility(0);
            }
            if (this.f1958f == 1) {
                SearchActivity.this.f114c.c();
            }
            SearchActivity.this.f114c.a(arrayList);
        }
    }

    public static void x(Context context, String str) {
        Intent intent = new Intent(context, SearchActivity.class);
        f.b.a.a.a.v("QxsTAQ==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1956e = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_slf_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FCQnUV5FDg==")));
        super.e();
        this.searchInput.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.k0.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.v(textView, i2, keyEvent);
            }
        });
        this.searchInput.addTextChangedListener(new a());
        k(f.e.a.j.k0.h.b.a().a(this.f1956e, d.a("")), new b());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        if (this.f1956e.equals(e.a("Xg8CAw4="))) {
            return new ImageAdapter(this, 0);
        }
        if (this.f1956e.equals(e.a("VAMREAQcVw=="))) {
            return new CartoonAdapter(this);
        }
        if (this.f1956e.equals(e.a("QQsHAQQ="))) {
            return new VideoAdapter(this);
        }
        return new Novel2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        if (this.f1956e.equals(e.a("VAMREAQcVw=="))) {
            return new GridLayoutManager(this, 3);
        }
        if (this.f1956e.equals(e.a("QQsHAQQ="))) {
            return new GridLayoutManager(this, 2);
        }
        if (this.f1956e.equals(e.a("Xg8CAw4="))) {
            return new GridLayoutManager(this, 2);
        }
        return new LinearLayoutManager(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        h.c0(this);
        r rVar = new r();
        rVar.e(e.a("XAcaEwQBXUA="), this.f1955d);
        rVar.d(e.a("RwMEAQ=="), Integer.valueOf(i2));
        k(f.e.a.j.k0.h.b.a().d(this.f1956e, d.a(rVar.toString())), new c(i2));
    }

    public /* synthetic */ void u(String str) {
        this.f1955d = str;
        w(false);
        this.searchInput.setText(str);
        this.refreshLayout.h();
    }

    public /* synthetic */ boolean v(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 == 3) {
            String trim = this.searchInput.getText().toString().trim();
            this.f1955d = trim;
            if (!TextUtils.isEmpty(trim)) {
                w(false);
                this.b = 1;
                p(1);
            }
            return true;
        }
        return false;
    }

    public final void w(boolean z) {
        this.recyclerView.setVisibility(z ? 0 : 8);
        this.refreshLayout.setVisibility(z ? 8 : 0);
        this.tvNoResult.setVisibility(8);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }
}
