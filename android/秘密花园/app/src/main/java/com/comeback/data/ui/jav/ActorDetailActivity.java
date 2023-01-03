package com.comeback.data.ui.jav;

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
import com.comeback.data.ui.jav.adapter.VideoAdapter;
import com.comeback.data.ui.jav.bean.ActorDetail;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import f.e.a.k.b;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class ActorDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1200d;

    /* renamed from: e  reason: collision with root package name */
    public String f1201e;

    /* renamed from: f  reason: collision with root package name */
    public d<i0> f1202f;
    @BindView
    public ImageView ivHead;
    @BindView
    public TextView tvCount;
    @BindView
    public TextView tvName;
    @BindView
    public TextView tvSecondName;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            ActorDetailActivity.r(ActorDetailActivity.this, true);
            ActorDetailActivity.this.refreshLayout.m(true);
            if (g0Var.a.f6449e > 300) {
                e.a("BFJTRA4BS1wB");
                f.e.a.k.f.a();
                return;
            }
            try {
                ActorDetail b = f.e.a.j.u.e.a.b(g0Var.b.H());
                if (this.a == 1) {
                    ActorDetailActivity.this.f114c.c();
                    ActorDetailActivity.this.tvName.setText(b.getName());
                    ActorDetailActivity.this.tvSecondName.setText(b.getSecondName());
                    ActorDetailActivity.this.tvCount.setText(b.getCount());
                }
                ActorDetailActivity.this.f114c.a(b.getList());
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            e.a("aD08ARkBVkFJ");
            th.getMessage();
            f.e.a.k.f.b();
            ActorDetailActivity.s(ActorDetailActivity.this, false);
            ActorDetailActivity.this.refreshLayout.m(false);
        }
    }

    public static void r(ActorDetailActivity actorDetailActivity, boolean z) {
        actorDetailActivity.refreshLayout.j(z);
    }

    public static void s(ActorDetailActivity actorDetailActivity, boolean z) {
        actorDetailActivity.refreshLayout.j(z);
    }

    public static void t(Context context, ImageView imageView, String str, String str2) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, ActorDetailActivity.class);
        intent.putExtra(e.a("QhAP"), str2);
        intent.putExtra(e.a("Xg8E"), str);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1200d = intent.getStringExtra(e.a("QhAP"));
        this.f1201e = intent.getStringExtra(e.a("Xg8E"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_jav_actor;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        h.u0(this.f1201e, this.ivHead);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new VideoAdapter(this, false);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 2);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1202f;
        if (dVar != null) {
            dVar.cancel();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.h0.a a2 = c.a();
        d<i0> b = a2.b(f.e.a.j.u.e.a.a + this.f1200d + e.a("CBICAw5O") + i2, b.h0, b.f3970c);
        this.f1202f = b;
        b.X(new a(i2));
    }
}
