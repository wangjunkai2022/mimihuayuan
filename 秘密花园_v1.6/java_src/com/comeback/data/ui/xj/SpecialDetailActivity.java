package com.comeback.data.ui.xj;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.TextUtils;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.xj.adapter.VMovieItemAdapter;
import com.comeback.data.ui.xj.adapter.VSpecialHeadAdapter;
import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.data.ui.xj.bean.Special;
import com.comeback.secret.garden.R;
import f.a.a.a.l.g;
import f.a.a.a.l.m;
import f.e.a.e;
import f.e.a.j.s0.g.b;
/* loaded from: classes.dex */
public class SpecialDetailActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public Channel.DataBean.RowsBean f2289e;

    /* renamed from: f  reason: collision with root package name */
    public Special f2290f;

    /* renamed from: g  reason: collision with root package name */
    public String f2291g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2292h;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<Special> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            SpecialDetailActivity.u(SpecialDetailActivity.this, (Special) obj);
        }
    }

    public static void u(SpecialDetailActivity specialDetailActivity, Special special) {
        if (specialDetailActivity != null) {
            specialDetailActivity.f2289e = special.getData().getRow();
            specialDetailActivity.v();
            specialDetailActivity.f2290f = special;
            g m2 = f.b.a.a.a.m(2, 5, 5);
            m2.s = true;
            specialDetailActivity.f119d.b(new VMovieItemAdapter(specialDetailActivity, special.getData().getVodrows(), m2));
            return;
        }
        throw null;
    }

    public static void w(Context context, Channel.DataBean.RowsBean rowsBean) {
        Intent intent = new Intent(context, SpecialDetailActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), rowsBean);
        context.startActivity(intent);
    }

    public static void x(Context context, String str) {
        Intent intent = new Intent(context, SpecialDetailActivity.class);
        f.b.a.a.a.v("XgY=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f2289e = (Channel.DataBean.RowsBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
        this.f2291g = intent.getStringExtra(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        int parseColor = Color.parseColor(e.a("FAQFVl1BAAE1"));
        i();
        h(parseColor);
        super.e();
        this.refreshLayout.setBackgroundColor(parseColor);
        this.refreshLayout.t(false);
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        if (this.f2290f != null) {
            this.refreshLayout.k();
            this.refreshLayout.j(true);
            return;
        }
        if (TextUtils.isEmpty(this.f2291g)) {
            this.f2291g = this.f2289e.getSpid();
        }
        k(b.a().c(this.f2291g), new a());
        v();
    }

    public final void v() {
        if (this.f2289e == null || this.f2292h) {
            return;
        }
        this.f2292h = true;
        this.f119d.b(new VSpecialHeadAdapter(this, new m(), this.f2289e));
    }
}
