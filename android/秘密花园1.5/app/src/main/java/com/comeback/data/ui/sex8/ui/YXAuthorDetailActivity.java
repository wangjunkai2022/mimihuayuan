package com.comeback.data.ui.sex8.ui;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.sex8.adapter.NovelListAdapter;
import com.comeback.data.ui.sex8.bean.YXHostBean;
import com.comeback.data.ui.sex8.bean.YXNovelList;
import com.comeback.data.ui.sex8.bean.YXParams;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.k0.a.b;

/* loaded from: classes.dex */
public class YXAuthorDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public YXHostBean f1955d;
    @BindView
    public RatioImageView ivHeader;
    @BindView
    public TextView tvHot;
    @BindView
    public TextView tvSpecial;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<YXNovelList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1956f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1956f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            YXNovelList yXNovelList = (YXNovelList) obj;
            if (this.f1956f == 1) {
                YXAuthorDetailActivity.this.f114c.c();
            }
            YXAuthorDetailActivity.this.f114c.a(yXNovelList.getData());
        }
    }

    public static void t(Context context, YXHostBean yXHostBean) {
        Intent intent = new Intent(context, YXAuthorDetailActivity.class);
        intent.putExtra(e.a("Xw0QECkWWF0="), yXHostBean);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1955d = (YXHostBean) intent.getParcelableExtra(e.a("Xw0QECkWWF0="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_sex8_fm_author;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.f1955d.getName());
        this.tvSpecial.setText(this.f1955d.getWorks_count());
        this.tvHot.setText(this.f1955d.getHits_count());
        h.u0(this.f1955d.getImg(), this.ivHeader);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new NovelListAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.k0.a.a a2 = b.a();
        YXParams yXParams = new YXParams();
        yXParams.setPage_size(e.a("BlI="));
        yXParams.setV(e.a("RQMHDQQsW0osDlsUDAMH"));
        yXParams.setHostid(this.f1955d.getHost_id());
        yXParams.setPage(i2);
        k(a2.d(yXParams.toJson(), System.currentTimeMillis()), new a(i2));
    }
}
