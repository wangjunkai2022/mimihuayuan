package com.comeback.data.ui.nana;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.nana.adapter.VideoAdapter;
import com.comeback.data.ui.nana.bean.ActorBean;
import com.comeback.data.ui.nana.bean.VideoListBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.m.b;
import f.e.a.j.h0.m.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public ActorBean.ResponseEntity.ActorsEntity f1832d;
    @BindView
    public ImageView ivHead;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoListBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1833f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1833f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoListBean videoListBean = (VideoListBean) obj;
            if (this.f1833f == 1) {
                ActorDetailActivity.this.f114c.c();
                TextView textView = ActorDetailActivity.this.tvCount;
                textView.setText(videoListBean.getResponse().getTotal_results() + e.a("3uHLgNbv3KDyRkhH") + videoListBean.getResponse().getActor_cup() + e.a("0N/Kgvbc"));
            }
            ActorDetailActivity.this.f114c.a(videoListBean.getResponse().getVideos());
        }
    }

    public static void t(Context context, ImageView imageView, ActorBean.ResponseEntity.ActorsEntity actorsEntity) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), actorsEntity);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1832d = (ActorBean.ResponseEntity.ActorsEntity) intent.getSerializableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_nana_actor;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-16777216);
        h.K0(this.f1832d.getActor_url(), this.ivHead);
        this.tvName.setText(this.f1832d.getActor_name());
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        b a2 = f.e.a.j.h0.m.e.a();
        int actor_id = this.f1832d.getActor_id();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "Qw0IAQU="), d.a);
        k(a2.g(actor_id, hashMap), new a(i2));
    }
}
