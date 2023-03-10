package com.comeback.data.ui.isiyu;

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
import com.comeback.data.base.BaseActivity;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.isiyu.adapter.VideoAdapter;
import com.comeback.data.ui.isiyu.bean.SpecialDetail;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.u.e.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SpecialDetailActivity extends BaseRefreshActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f1255d;

    /* renamed from: e  reason: collision with root package name */
    public String f1256e;
    @BindView
    public RatioImageView ivCover;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<SpecialDetail> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1257f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1257f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SpecialDetail specialDetail = (SpecialDetail) obj;
            if (this.f1257f == 1) {
                SpecialDetailActivity.this.f114c.c();
            }
            SpecialDetailActivity.this.f114c.a(specialDetail.getData());
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
        this.f1255d = intent.getStringExtra(e.a("XgY="));
        this.f1256e = intent.getStringExtra(e.a("QhAP"));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_isiyu_special;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        BaseActivity.f(this, true);
        i();
        h.G0(this.f1256e, this.ivCover);
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
        b a2 = f.e.a.j.u.e.e.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("BlQ=", hashMap, f.b.a.a.a.G(i2, hashMap, e.a("RwMEAQ=="), "WwsODR8="), "RBIGBwISVWwaAg=="), this.f1255d);
        k(a2.d(hashMap), new a(i2));
    }
}
