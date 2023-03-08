package com.comeback.data.ui.bale;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.bale.adapter.Video2Adapter;
import com.comeback.data.ui.bale.bean.RankList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.e.b;

/* loaded from: classes.dex */
public class SearchResultActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f266d;
    @BindView
    public TextView tvTitle;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<RankList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f267f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f267f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            RankList rankList = (RankList) obj;
            if (this.f267f == 1) {
                SearchResultActivity.this.f114c.c();
            }
            SearchResultActivity.this.f114c.a(rankList.getResult().getData());
        }
    }

    public static void t(Context context, String str) {
        Intent intent = new Intent(context, SearchResultActivity.class);
        f.b.a.a.a.v("QwMEFw==", intent, str, context, intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f266d = intent.getStringExtra(e.a("QwMEFw=="));
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
        this.tvTitle.setText(this.f266d);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new Video2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(b.a().i(i2, this.f266d), new a(i2));
    }
}
