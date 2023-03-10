package com.comeback.data.ui.bale;

import android.content.Context;
import android.content.Intent;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.bale.adapter.Video2Adapter;
import com.comeback.data.ui.bale.bean.StarDetail;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.d.e.b;
import m.j;
/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseActivity {
    public int b;
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
    public class a extends j<StarDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(StarDetail starDetail) {
            ActorDetailActivity actorDetailActivity = ActorDetailActivity.this;
            StarDetail.ResultBean result = starDetail.getResult();
            actorDetailActivity.tvName.setText(result.getArtist());
            TextView textView = actorDetailActivity.tvCount;
            textView.setText(result.getVideoList().size() + e.a("3uHLgdbC3rr0"));
            actorDetailActivity.tvInfo.setText(result.getInfo());
            actorDetailActivity.tvIntro.setText(result.getDesc());
            h.u0(result.getImage(), actorDetailActivity.ivHead);
            actorDetailActivity.rvList.setLayoutManager(new GridLayoutManager(actorDetailActivity, 2));
            Video2Adapter video2Adapter = new Video2Adapter(actorDetailActivity);
            actorDetailActivity.rvList.setAdapter(video2Adapter);
            video2Adapter.a(result.getVideoList());
        }
    }

    public static void l(Context context, int i2) {
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getIntExtra(e.a("XgY="), 0);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_bale_actor;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        i();
        BaseActivity.f(this, true);
        k(b.a().k(this.b), new a());
    }
}
