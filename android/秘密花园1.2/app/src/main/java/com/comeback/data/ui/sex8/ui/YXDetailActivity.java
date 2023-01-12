package com.comeback.data.ui.sex8.ui;

import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.sex8.adapter.ChapterAdapter;
import com.comeback.data.ui.sex8.bean.YXHostBean;
import com.comeback.data.ui.sex8.bean.YXNovelDetail;
import com.comeback.data.ui.sex8.bean.YXParams;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k0.a.b;

/* loaded from: classes.dex */
public class YXDetailActivity extends BaseRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public static String f1959e;

    /* renamed from: d  reason: collision with root package name */
    public YXNovelDetail.DataBean f1960d;
    @BindView
    public RatioImageView ivHeader;
    @BindView
    public ImageView ivPic;
    @BindView
    public TextView tvAuthor;
    @BindView
    public TextView tvAuthor2;
    @BindView
    public TextView tvDetail;
    @BindView
    public TextView tvDetail2;
    @BindView
    public TextView tvName;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<YXNovelDetail> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            YXDetailActivity.r(YXDetailActivity.this, (YXNovelDetail) obj);
            YXDetailActivity.this.refreshLayout.t(false);
            YXDetailActivity.this.refreshLayout.A = false;
        }
    }

    public static void r(YXDetailActivity yXDetailActivity, YXNovelDetail yXNovelDetail) {
        if (yXDetailActivity != null) {
            YXNovelDetail.DataBean data = yXNovelDetail.getData();
            yXDetailActivity.f1960d = data;
            yXDetailActivity.tvName.setText(data.getName());
            yXDetailActivity.tvTitle.setText(yXDetailActivity.f1960d.getName());
            h.u0(yXDetailActivity.f1960d.getCover_img(), yXDetailActivity.ivPic);
            TextView textView = yXDetailActivity.tvDetail;
            textView.setText(yXDetailActivity.f1960d.getRadio_count() + "    " + yXDetailActivity.f1960d.getRadio_count() + e.a("3vnl"));
            YXHostBean host = yXDetailActivity.f1960d.getHost();
            yXDetailActivity.tvAuthor.setText(host.getName());
            yXDetailActivity.tvAuthor2.setText(host.getName());
            TextView textView2 = yXDetailActivity.tvDetail2;
            textView2.setText(host.getWorks_count() + "    " + host.getHits_count());
            h.u0(host.getImg(), yXDetailActivity.ivHeader);
            yXDetailActivity.f114c.a(yXDetailActivity.f1960d.getRadio_list());
            return;
        }
        throw null;
    }

    public static void s(Context context, String str) {
        Intent intent = new Intent(context, YXDetailActivity.class);
        f.b.a.a.a.v("Vg4BEQYsUFc=", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        f1959e = intent.getStringExtra(e.a("Vg4BEQYsUFc="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_fm_detail;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ChapterAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.k0.a.a a2 = b.a();
        YXParams yXParams = new YXParams();
        yXParams.setV(e.a("RQMHDQQsWF8RE1k4EQQFBA=="));
        yXParams.setDevice_type(e.a("Bg=="));
        yXParams.setAlbum_id(f1959e);
        k(a2.c(yXParams.toJson(), System.currentTimeMillis()), new a());
    }
}
