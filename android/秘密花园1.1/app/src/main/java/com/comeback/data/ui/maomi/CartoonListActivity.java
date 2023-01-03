package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.maomi.adapter.DiscoverAdapter;
import com.comeback.data.ui.maomi.bean.Cartoon;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.c0.m.b;
import f.e.a.j.c0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CartoonListActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1525d;

    /* renamed from: e  reason: collision with root package name */
    public String f1526e;
    @BindView
    public TextView mTvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<Cartoon> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1527f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1527f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            Cartoon cartoon = (Cartoon) obj;
            if (this.f1527f == 1) {
                CartoonListActivity.this.f114c.c();
            }
            CartoonListActivity.this.f114c.a(cartoon.getData().getData());
        }
    }

    public static void t(Context context, String str, String str2) {
        Intent intent = new Intent(context, CartoonListActivity.class);
        intent.putExtra(e.a("QwsXCA4="), str);
        intent.putExtra(e.a("XAca"), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1526e = intent.getStringExtra(e.a("QwsXCA4="));
        this.f1525d = intent.getStringExtra(e.a("XAca"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_cartoon_list;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        this.mTvTitle.setText(this.f1526e);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new DiscoverAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RwMEAQ=="), i2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().g(this.f1525d, b.a(jSONObject.toString())), new a(i2));
    }
}
