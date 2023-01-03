package com.comeback.data.ui.ds;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.ds.adapter.RealTimeAdapter;
import com.comeback.data.ui.ds.bean.ScreenBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i.j.b;

/* loaded from: classes.dex */
public class TagActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f602d;

    /* renamed from: e  reason: collision with root package name */
    public String f603e;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ScreenBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f604f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f604f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ScreenBean screenBean = (ScreenBean) obj;
            if (this.f604f == 1) {
                TagActivity.this.f114c.c();
            }
            TagActivity.this.f114c.a(screenBean.getResult().getList());
        }
    }

    public static void t(Context context, String str, String str2) {
        Intent intent = new Intent(context, TagActivity.class);
        intent.putExtra(e.a("QwsXCA4="), str);
        intent.putExtra(e.a("QxsTAQ=="), str2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f603e = intent.getStringExtra(e.a("QwsXCA4="));
        this.f602d = intent.getStringExtra(e.a("QxsTAQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_ds_tags;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
        this.tvTitle.setText(this.f603e);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new RealTimeAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(b.a().c(DsActivity.f593d, this.f602d, i2), new a(i2));
    }
}
