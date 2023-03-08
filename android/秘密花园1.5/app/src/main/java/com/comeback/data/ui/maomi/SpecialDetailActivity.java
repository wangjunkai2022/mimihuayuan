package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.maomi.adapter.SearchMovieItemAdapter;
import com.comeback.data.ui.maomi.bean.SearchResult;
import com.comeback.secret.garden.R;
import f.a.a.a.l.g;
import f.e.a.e;
import f.e.a.j.d0.m.b;
import f.e.a.j.d0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class SpecialDetailActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public String f1622e;

    /* renamed from: f  reason: collision with root package name */
    public String f1623f;

    /* renamed from: g  reason: collision with root package name */
    public String f1624g;

    /* renamed from: h  reason: collision with root package name */
    public String f1625h;
    @BindView
    public ImageView ivBg;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<SearchResult> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1626f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1626f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SearchResult searchResult = (SearchResult) obj;
            if (this.f1626f == 1) {
                SpecialDetailActivity.this.r();
            }
            SpecialDetailActivity.v(SpecialDetailActivity.this, searchResult);
        }
    }

    public static void v(SpecialDetailActivity specialDetailActivity, SearchResult searchResult) {
        if (specialDetailActivity != null) {
            g gVar = new g(3);
            gVar.q(15, 0, 15, 0);
            gVar.D(15);
            gVar.C(15);
            gVar.s = false;
            specialDetailActivity.f119d.b(new SearchMovieItemAdapter(specialDetailActivity, searchResult.getData().getData(), gVar));
            return;
        }
        throw null;
    }

    public static void w(Context context, String str, String str2, String str3, String str4) {
        Intent intent = new Intent(context, SpecialDetailActivity.class);
        intent.putExtra(e.a("XgY="), str);
        intent.putExtra(e.a("QwsXCA4="), str2);
        intent.putExtra(e.a("UwcQBw=="), str3);
        intent.putExtra(e.a("Xg8E"), str4);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1624g = intent.getStringExtra(e.a("XgY="));
        this.f1623f = intent.getStringExtra(e.a("QwsXCA4="));
        this.f1622e = intent.getStringExtra(e.a("UwcQBw=="));
        this.f1625h = intent.getStringExtra(e.a("Xg8E"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_special;
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        i();
        BaseActivity.f(this, true);
        this.tvTitle.setText(this.f1623f);
        if (TextUtils.isEmpty(this.f1622e)) {
            this.tvDetail.setVisibility(8);
        } else {
            this.tvDetail.setText(this.f1622e);
        }
        h.u0(this.f1625h, this.ivBg);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RBIGBwISVWwaAg=="), this.f1624g);
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().c(b.a(jSONObject.toString())), new a(i2));
    }
}
