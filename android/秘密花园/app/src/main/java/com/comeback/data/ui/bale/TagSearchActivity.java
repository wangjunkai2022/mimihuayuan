package com.comeback.data.ui.bale;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.bale.adapter.VideoAdapter;
import com.comeback.data.ui.bale.bean.RankList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.e.b;

/* loaded from: classes.dex */
public class TagSearchActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f270d;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<RankList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f271f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f271f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            RankList rankList = (RankList) obj;
            if (this.f271f == 1) {
                TagSearchActivity.this.f114c.c();
            }
            TagSearchActivity.this.f114c.a(rankList.getResult().getData());
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, TagSearchActivity.class);
        f.b.a.a.a.v("QwMEFw==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f270d = intent.getStringExtra(e.a("QwMEFw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_bale_tag;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
        this.tvTitle.setText(this.f270d);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(b.a().h(this.f270d, i2), new a(i2));
    }
}
