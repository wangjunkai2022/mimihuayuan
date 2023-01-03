package com.comeback.data.ui.cm;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.cm.adapter.Screen2Adapter;
import com.comeback.data.ui.cm.bean.ArtistDetail;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.e.f.b;

/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public int f313d;
    @BindView
    public RatioImageView ivHead;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvInfo;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<ArtistDetail> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            ActorDetailActivity actorDetailActivity = ActorDetailActivity.this;
            ArtistDetail.RescontEntity rescont = ((ArtistDetail) obj).getRescont();
            actorDetailActivity.tvName.setText(rescont.getArtist());
            TextView textView = actorDetailActivity.tvCount;
            textView.setText(rescont.getVideoList().getTotal() + e.a("3uHLgdbC3rr0"));
            actorDetailActivity.tvInfo.setText(rescont.getDesc());
            actorDetailActivity.tvIntro.setText(rescont.getDesc());
            h.u0(rescont.getImage(), actorDetailActivity.ivHead);
            actorDetailActivity.f114c.a(rescont.getVideoList().getData());
        }
    }

    public static void r(Context context, int i2) {
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f313d = intent.getIntExtra(e.a("XgY="), 0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_cm_actor;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new Screen2Adapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(b.a().d(this.f313d, i2), new a());
    }
}
