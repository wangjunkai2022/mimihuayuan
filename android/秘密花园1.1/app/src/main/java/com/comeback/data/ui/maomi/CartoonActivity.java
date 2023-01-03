package com.comeback.data.ui.maomi;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.maomi.adapter.DiscoverAdapter;
import com.comeback.data.ui.maomi.bean.Cartoon;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.c0.m.d;
import m.j;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CartoonActivity extends BaseActivity {
    @BindView
    public RecyclerView mRvHot;
    @BindView
    public RecyclerView mRvNew;
    @BindView
    public RecyclerView mRvRecommend;

    /* loaded from: classes.dex */
    public class a extends j<Cartoon> {

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ DiscoverAdapter f1510e;

        public a(CartoonActivity cartoonActivity, DiscoverAdapter discoverAdapter) {
            this.f1510e = discoverAdapter;
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(Cartoon cartoon) {
            this.f1510e.a(cartoon.getData().getData().subList(0, 6));
        }
    }

    /* loaded from: classes.dex */
    public class b extends j<Cartoon> {

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ DiscoverAdapter f1511e;

        public b(CartoonActivity cartoonActivity, DiscoverAdapter discoverAdapter) {
            this.f1511e = discoverAdapter;
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(Cartoon cartoon) {
            this.f1511e.a(cartoon.getData().getData().subList(0, 6));
        }
    }

    /* loaded from: classes.dex */
    public class c extends j<Cartoon> {

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ DiscoverAdapter f1512e;

        public c(CartoonActivity cartoonActivity, DiscoverAdapter discoverAdapter) {
            this.f1512e = discoverAdapter;
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(Cartoon cartoon) {
            this.f1512e.a(cartoon.getData().getData().subList(0, 6));
        }
    }

    public static void l(Context context) {
        f.b.a.a.a.u(context, CartoonActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_cartoon;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        this.mRvRecommend.setLayoutManager(new GridLayoutManager(this, 3));
        DiscoverAdapter discoverAdapter = new DiscoverAdapter(this);
        this.mRvRecommend.setAdapter(discoverAdapter);
        this.mRvRecommend.setNestedScrollingEnabled(false);
        this.mRvNew.setLayoutManager(new GridLayoutManager(this, 3));
        DiscoverAdapter discoverAdapter2 = new DiscoverAdapter(this);
        this.mRvNew.setAdapter(discoverAdapter2);
        this.mRvNew.setNestedScrollingEnabled(false);
        this.mRvHot.setLayoutManager(new GridLayoutManager(this, 3));
        DiscoverAdapter discoverAdapter3 = new DiscoverAdapter(this);
        this.mRvHot.setAdapter(discoverAdapter3);
        this.mRvHot.setNestedScrollingEnabled(false);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RwMEAQ=="), 1);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().g(e.a("RQcACwYeXF0X"), f.e.a.j.c0.m.b.a(jSONObject.toString())), new a(this, discoverAdapter));
        k(d.a().g(e.a("QhIHBR8W"), f.e.a.j.c0.m.b.a(jSONObject.toString())), new b(this, discoverAdapter2));
        k(d.a().g(e.a("Rw0TEQcSSw=="), f.e.a.j.c0.m.b.a(jSONObject.toString())), new c(this, discoverAdapter3));
    }

    @OnClick
    public void onViewClicked(View view) {
        switch (view.getId()) {
            case R.id.fl_hot /* 2131296455 */:
                CartoonListActivity.t(this, e.a("0f7Pgvf73oHNg7np"), e.a("Rw0TEQcSSw=="));
                return;
            case R.id.fl_new /* 2131296457 */:
                CartoonListActivity.t(this, e.a("0f7jjNTi36jHgKLX"), e.a("QhIHBR8W"));
                return;
            case R.id.fl_recommend /* 2131296459 */:
                CartoonListActivity.t(this, e.a("0tLsg9fl373bjrn3"), e.a("RQcACwYeXF0X"));
                return;
            case R.id.tv_all /* 2131296915 */:
                CartoonListActivity.t(this, e.a("0ufLjejb34/YgaDc"), e.a("XgwHARM="));
                return;
            default:
                return;
        }
    }
}
