package com.comeback.data.ui.xiami;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.widget.ImageView;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.xiami.adapter.VideoAdapter;
import com.comeback.data.ui.xiami.bean.VideoList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.q0.f.b;
import f.e.a.j.q0.f.d;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SpecialDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f2220d;

    /* renamed from: e  reason: collision with root package name */
    public String f2221e;
    @BindView
    public RatioImageView ivCover;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<VideoList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2222f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2222f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            VideoList videoList = (VideoList) obj;
            if (this.f2222f == 1) {
                SpecialDetailActivity.this.f114c.c();
            }
            SpecialDetailActivity.this.f114c.a(videoList.getData());
        }
    }

    public static void t(Context context, String str, String str2, ImageView imageView) {
        ActivityOptionsCompat makeSceneTransitionAnimation = ActivityOptionsCompat.makeSceneTransitionAnimation((Activity) context, imageView, e.a("fg8CAw47XFIXA0Y="));
        Intent intent = new Intent(context, SpecialDetailActivity.class);
        intent.putExtra(e.a("QhAP"), str2);
        intent.putExtra(e.a("XgY="), str);
        ContextCompat.startActivity(context, intent, makeSceneTransitionAnimation.toBundle());
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.f2220d = intent.getStringExtra(e.a("XgY="));
        this.f2221e = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_xm_special;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        i();
        h.u0(this.f2221e, this.ivCover);
        super.e();
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
        b a2 = d.a();
        HashMap hashMap = new HashMap();
        hashMap.put(f.b.a.a.a.i("QAcBOwQVX1oQD1UL", hashMap, f.b.a.a.a.G(this.b, hashMap, e.a("RwMEASUc"), "VAoCCgUWVQ=="), "UQcCEB4BXFc6Ag=="), this.f2220d);
        k(a2.l(hashMap), new a(i2));
    }
}
