package com.comeback.data.ui.hm;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.hm.SearchActivity;
import com.comeback.data.ui.hm.adapter.ListAdapter;
import com.comeback.data.ui.hm.bean.ItemInfo;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i0.c;
import f.j.a.a.f.i;
import f.j.a.a.l.b;
import i.i0;
import java.io.IOException;
import java.util.ArrayList;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class SearchActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1123d;

    /* renamed from: e  reason: collision with root package name */
    public d<i0> f1124e;
    @BindView
    public EditText etSearch;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            if (g0Var.a.f6524e < 300) {
                try {
                    ArrayList<ItemInfo> e2 = f.e.a.j.r.f.a.e(g0Var.b.H());
                    if (this.a == 1) {
                        SearchActivity.this.f114c.c();
                    }
                    SearchActivity.this.f114c.a(e2);
                    SearchActivity.this.refreshLayout.j(true);
                    SearchActivity.this.refreshLayout.m(true);
                    return;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    return;
                }
            }
            SearchActivity.t(SearchActivity.this, false);
            SearchActivity.this.refreshLayout.m(false);
            h.n1(e.a("0ffTgubd3LnTjonanc7Sg4PH"));
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            SearchActivity.u(SearchActivity.this, false);
            SearchActivity.this.refreshLayout.m(false);
            h.n1(th.getMessage());
        }
    }

    public static void t(SearchActivity searchActivity, boolean z) {
        searchActivity.refreshLayout.j(z);
    }

    public static void u(SearchActivity searchActivity, boolean z) {
        searchActivity.refreshLayout.j(z);
    }

    public static void y(Context context) {
        f.b.a.a.a.u(context, SearchActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hm_search;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.refreshLayout.a0 = new f.j.a.a.l.d() { // from class: f.e.a.j.r.c
            @Override // f.j.a.a.l.d
            public final void b(i iVar) {
                SearchActivity.this.v(iVar);
            }
        };
        this.refreshLayout.v(new b() { // from class: f.e.a.j.r.b
            @Override // f.j.a.a.l.b
            public final void d(i iVar) {
                SearchActivity.this.w(iVar);
            }
        });
        this.mRvList.setLayoutManager(new LinearLayoutManager(this));
        ListAdapter listAdapter = new ListAdapter(this);
        this.f114c = listAdapter;
        this.mRvList.setAdapter(listAdapter);
        this.etSearch.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: f.e.a.j.r.d
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                return SearchActivity.this.x(textView, i2, keyEvent);
            }
        });
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1124e;
        if (dVar != null) {
            dVar.cancel();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        d<i0> c2 = c.a().c(f.e.a.j.r.f.a.b(i2, f.e.a.j.r.f.a.c(), "", this.f1123d));
        this.f1124e = c2;
        c2.X(new a(i2));
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
            String obj = this.etSearch.getText().toString();
            this.f1123d = obj;
            if (TextUtils.isEmpty(obj)) {
                return true;
            }
            h.c0(this);
            this.refreshLayout.h();
            return true;
        }
        return false;
    }
}
