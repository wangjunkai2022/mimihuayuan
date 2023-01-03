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
import f.e.a.j.r0.f.b;

/* loaded from: classes.dex */
public class SpecialDetailActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public Channel.DataBean.RowsBean f2210e;

    /* renamed from: f  reason: collision with root package name */
    public Special f2211f;

    /* renamed from: g  reason: collision with root package name */
    public String f2212g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2213h;

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
            specialDetailActivity.f2210e = special.getData().getRow();
            specialDetailActivity.v();
            specialDetailActivity.f2211f = special;
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
        this.f2210e = (Channel.DataBean.RowsBean) intent.getParcelableExtra(e.a("UwMXBQ=="));
        this.f2212g = intent.getStringExtra(e.a("XgY="));
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
        if (this.f2211f != null) {
            this.refreshLayout.k();
            this.refreshLayout.j(true);
            return;
        }
        if (TextUtils.isEmpty(this.f2212g)) {
            this.f2212g = this.f2210e.getSpid();
        }
        k(b.a().c(this.f2212g), new a());
        v();
    }

    public final void v() {
        if (this.f2210e != null && !this.f2213h) {
            this.f2213h = true;
            this.f119d.b(new VSpecialHeadAdapter(this, new m(), this.f2210e));
        }
    }
}
