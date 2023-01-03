package com.comeback.data.ui.cm;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.cm.adapter.ScreenAdapter;
import com.comeback.data.ui.cm.bean.ScreenBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.e.f.b;

/* loaded from: classes.dex */
public class SearchResultActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f337d;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ScreenBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f338f;

        /* JADX INFO: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f338f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            ScreenBean screenBean = (ScreenBean) obj;
            if (this.f338f == 1) {
                SearchResultActivity.this.f114c.c();
            }
            SearchResultActivity.this.f114c.a(screenBean.getRescont().getData());
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        f.b.a.a.a.v("QwMEFw==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f337d = intent.getStringExtra(e.a("QwMEFw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cm_search_result;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(Color.parseColor(e.a("FFNVVVNBCg==")));
        h(Color.parseColor(e.a("FFNVVVNBCg==")));
        this.tvTitle.setText(this.f337d);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ScreenAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(b.a().j(this.f337d, i2), new a(i2));
    }
}
