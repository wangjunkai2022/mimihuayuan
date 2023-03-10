package com.comeback.data.ui.fulao2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
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
import com.comeback.data.ui.fulao2.adapter.VideoListAdapter;
import com.comeback.data.ui.fulao2.bean.ActorsBean;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.l.h.b;
import f.e.a.j.l.h.f;
import f.e.a.k.g;
import java.util.HashMap;
/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public ActorsBean f770d;
    @BindView
    public ImageView ivHead;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvFollow;
    @BindView
    public TextView tvName;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f771f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f771f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f771f == 1) {
                ActorDetailActivity.this.f114c.c();
                TextView textView = ActorDetailActivity.this.tvCount;
                textView.setText(videoList.getResponse().getTotal_results() + e.a("3uHLgNbv3KDyRkhH") + videoList.getResponse().getActor_cup() + e.a("0N/Kgvbc"));
            }
            ActorDetailActivity.this.f114c.a(videoList.getResponse().getVideos());
        }
    }

    public static void u(Context context, ImageView imageView, ActorsBean actorsBean) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("VQcCCg=="), actorsBean);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f770d = (ActorsBean) intent.getParcelableExtra(e.a("VQcCCg=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_lutube_actor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        h.z0(this.f770d.getActor_url(), this.ivHead);
        this.tvName.setText(this.f770d.getActor_name());
        if (g.d(this.f770d.getRealm()).b(this.f770d.getClass(), e.a("VgEXCxksUFc="), this.f770d.getActor_id())) {
            t();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoListAdapter(this, true);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        b b = f.b();
        String actor_id = this.f770d.getActor_id();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "QwsOARgHWF4D"), String.valueOf(System.currentTimeMillis()));
        k(b.d(actor_id, hashMap), new a(i2));
    }

    public final void t() {
        this.tvFollow.setBackgroundResource(R.drawable.bg_unfollow);
        this.tvFollow.setTextColor(Color.parseColor(e.a("FFFQV1hACg==")));
        this.tvFollow.setClickable(false);
        this.tvFollow.setText(e.a("0tXRgv/F0aT8"));
    }
}
