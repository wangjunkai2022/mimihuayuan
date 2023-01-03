package com.comeback.data.ui.hm;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.ui.hm.bean.ItemInfo;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;
import f.e.a.k.i;
import g.a.x;
import io.realm.RealmQuery;

/* loaded from: classes.dex */
public class DetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public DetailActivity f1034c;

    /* renamed from: d  reason: collision with root package name */
    public View f1035d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ DetailActivity f1036c;

        public a(DetailActivity_ViewBinding detailActivity_ViewBinding, DetailActivity detailActivity) {
            this.f1036c = detailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            DetailActivity detailActivity = this.f1036c;
            if (detailActivity.f1033f) {
                h.n1(e.a("0u31gt3736fFjqPo"));
                detailActivity.t(false);
                g d2 = g.d(x.P());
                String a = e.a("XgY=");
                String id = detailActivity.f1032e.getId();
                if (d2 != null) {
                    x xVar = g.a;
                    xVar.f();
                    RealmQuery realmQuery = new RealmQuery(xVar, ItemInfo.class);
                    realmQuery.a(a, id);
                    g.a.N(new i(d2, realmQuery.b()));
                    return;
                }
                throw null;
            }
            h.n1(e.a("0fbVjPz837vjg774"));
            detailActivity.t(true);
            g.d(x.P()).a(detailActivity.f1032e);
        }
    }

    @UiThread
    public DetailActivity_ViewBinding(DetailActivity detailActivity, View view) {
        super(detailActivity, view);
        this.f1034c = detailActivity;
        detailActivity.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
        detailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        detailActivity.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
        detailActivity.tvUpdate = (TextView) c.c(view, R.id.tv_update, e.a("UQsGCA9THkcFM0QDGR4GTA=="), TextView.class);
        detailActivity.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
        detailActivity.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
        View b = c.b(view, R.id.iv_like, e.a("UQsGCA9THloFKl0MHU1DClkGQwkOB1FcF0YTCBYpDwJUCUQ="));
        detailActivity.ivLike = (ImageView) c.a(b, R.id.iv_like, e.a("UQsGCA9THloFKl0MHU0="), ImageView.class);
        this.f1035d = b;
        b.setOnClickListener(new a(this, detailActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        DetailActivity detailActivity = this.f1034c;
        if (detailActivity != null) {
            this.f1034c = null;
            detailActivity.ivImg = null;
            detailActivity.tvTitle = null;
            detailActivity.tvAuthor = null;
            detailActivity.tvUpdate = null;
            detailActivity.tvDesc = null;
            detailActivity.tvState = null;
            detailActivity.ivLike = null;
            this.f1035d.setOnClickListener(null);
            this.f1035d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
