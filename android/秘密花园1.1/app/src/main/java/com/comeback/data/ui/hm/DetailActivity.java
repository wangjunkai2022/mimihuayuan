package com.comeback.data.ui.hm;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.hm.adapter.ChapterAdapter;
import com.comeback.data.ui.hm.bean.ChapterInfo;
import com.comeback.data.ui.hm.bean.ItemInfo;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.c;
import f.e.a.k.g;
import g.a.x;
import i.i0;
import java.io.IOException;
import l.d;
import l.f;
import l.g0;

/* loaded from: classes.dex */
public class DetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public d<i0> f1031d;

    /* renamed from: e  reason: collision with root package name */
    public ItemInfo f1032e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1033f = false;
    @BindView
    public RatioImageView ivImg;
    @BindView
    public ImageView ivLike;
    @BindView
    public TextView tvAuthor;
    @BindView
    public TextView tvDesc;
    @BindView
    public TextView tvState;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvUpdate;

    /* loaded from: classes.dex */
    public class a implements f<i0> {
        public final /* synthetic */ int a;

        public a(int i2) {
            this.a = i2;
        }

        @Override // l.f
        public void a(d<i0> dVar, g0<i0> g0Var) {
            DetailActivity.r(DetailActivity.this, true);
            DetailActivity.this.refreshLayout.m(true);
            DetailActivity.this.refreshLayout.t(false);
            if (g0Var.a.f6449e > 300) {
                e.a("BFJTRA4BS1wB");
                f.e.a.k.f.a();
                return;
            }
            try {
                ChapterInfo d2 = f.e.a.j.q.f.a.d(g0Var.b.H());
                DetailActivity.this.tvState.setText(d2.getState());
                if (this.a == 1) {
                    DetailActivity.this.f114c.c();
                }
                DetailActivity.this.f114c.a(d2.getChapterList());
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }

        @Override // l.f
        public void b(d<i0> dVar, Throwable th) {
            e.a("aD08ARkBVkFJ");
            th.getMessage();
            f.e.a.k.f.b();
            DetailActivity.s(DetailActivity.this, false);
            DetailActivity.this.refreshLayout.m(false);
        }
    }

    public static void r(DetailActivity detailActivity, boolean z) {
        detailActivity.refreshLayout.j(z);
    }

    public static void s(DetailActivity detailActivity, boolean z) {
        detailActivity.refreshLayout.j(z);
    }

    public static void u(Context context, ImageView imageView, ItemInfo itemInfo) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, DetailActivity.class);
        intent.putExtra(e.a("XgwFCw=="), itemInfo);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f1032e = (ItemInfo) intent.getParcelableExtra(e.a("XgwFCw=="));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hm_detail;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
        h.u0(this.f1032e.getImage(), this.ivImg);
        this.tvTitle.setText(this.f1032e.getTitle());
        this.tvAuthor.setText(this.f1032e.getAuthor());
        this.tvUpdate.setText(this.f1032e.getUpdate());
        this.tvDesc.setText(this.f1032e.getDesc());
        t(g.d(x.P()).f(ItemInfo.class, e.a("XgY="), this.f1032e.getId()).size() != 0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ChapterAdapter(this);
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        d<i0> dVar = this.f1031d;
        if (dVar != null) {
            dVar.cancel();
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.h0.a a2 = c.a();
        boolean isHm = this.f1032e.isHm();
        String id = this.f1032e.getId();
        StringBuilder sb = new StringBuilder();
        sb.append(isHm ? f.e.a.j.q.f.a.a : f.e.a.j.q.f.a.b);
        sb.append(e.a(isHm ? "GA8CCgMGWBwaCFIIVw==" : "GBoQSwIdX1xc"));
        sb.append(id);
        sb.append(e.a("GQoXCQc="));
        d<i0> c2 = a2.c(sb.toString());
        this.f1031d = c2;
        c2.X(new a(i2));
    }

    public final void t(boolean z) {
        this.f1033f = z;
        this.ivLike.setImageResource(z ? R.mipmap.ic_km_like_selected : R.mipmap.ic_km_like_normal);
    }
}
