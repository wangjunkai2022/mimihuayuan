package com.comeback.data.ui.maomi;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.maomi.adapter.CartoonDetailListAdapter;
import com.comeback.data.ui.maomi.bean.Cartoon;
import com.comeback.data.ui.maomi.bean.CartoonDetail;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d0.m.b;
import f.e.a.j.d0.m.d;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CartoonDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public Cartoon.DataBeanX.DataBean f1596d;
    @BindView
    public ImageView mIvBg;
    @BindView
    public TextView mTvDetail;
    @BindView
    public TextView mTvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<CartoonDetail> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1597f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1597f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            CartoonDetail cartoonDetail = (CartoonDetail) obj;
            if (this.f1597f == 1) {
                CartoonDetailActivity.this.f114c.c();
            }
            CartoonDetailActivity.this.f114c.a(cartoonDetail.getData().getData());
        }
    }

    public static void t(Context context, Cartoon.DataBeanX.DataBean dataBean) {
        Intent intent = new Intent(context, CartoonDetailActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), dataBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1596d = (Cartoon.DataBeanX.DataBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mm_cartoon_detail;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        i();
        BaseActivity.f(this, true);
        this.mTvTitle.setText(this.f1596d.getTitle());
        this.mTvDetail.setText(this.f1596d.getDescriptions());
        this.mTvDetail.setVisibility(TextUtils.isEmpty(this.f1596d.getDescriptions()) ? 8 : 0);
        h.u0(this.f1596d.getThumb(), this.mIvBg);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new CartoonDetailListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(e.a("RwMEAQ=="), i2);
            jSONObject.put(e.a("RA0REA=="), 1);
            jSONObject.put(e.a("XgY="), this.f1596d.getId());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        k(d.a().b(b.a(jSONObject.toString())), new a(i2));
    }
}
