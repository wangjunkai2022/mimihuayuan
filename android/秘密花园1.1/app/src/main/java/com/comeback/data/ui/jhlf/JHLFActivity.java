package com.comeback.data.ui.jhlf;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.jhlf.adapter.AdAdapter;
import com.comeback.data.ui.jhlf.adapter.WebSiteAdapter;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import com.comeback.secret.garden.R;
import com.wang.avi.AVLoadingIndicatorView;
import f.e.a.e;
import f.e.a.j.v.g;
import f.e.a.j.v.h.c;
import java.util.List;
import m.j;

/* loaded from: classes.dex */
public class JHLFActivity extends BaseActivity {
    public static List<WebSiteBean.AdEntity> b;
    @BindView
    public FrameLayout flProgress;
    @BindView
    public AVLoadingIndicatorView loading;
    @BindView
    public RecyclerView rvAd;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tv_title;

    /* loaded from: classes.dex */
    public class a extends j<WebSiteBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
            h.n1(e.a("3+zUgeTl0Lb+gYnJnc7Sg4PH"));
            if (c.f3961d) {
                return;
            }
            JHLFActivity.l(JHLFActivity.this);
        }

        @Override // m.j
        public void f(WebSiteBean webSiteBean) {
            JHLFActivity.this.loading.hide();
            JHLFActivity.this.flProgress.setVisibility(8);
            JHLFActivity.m(JHLFActivity.this, webSiteBean);
        }
    }

    public static void l(JHLFActivity jHLFActivity) {
        if (jHLFActivity != null) {
            synchronized (c.class) {
                c.f3960c = null;
            }
            c.f3961d = true;
            jHLFActivity.k(c.a().c(), new g(jHLFActivity));
            return;
        }
        throw null;
    }

    public static void m(JHLFActivity jHLFActivity, WebSiteBean webSiteBean) {
        if (jHLFActivity != null) {
            List<WebSiteBean.AdEntity> ad2 = webSiteBean.getAd2();
            b = ad2;
            if (ad2 != null && ad2.size() > 0) {
                jHLFActivity.tv_title.setVisibility(0);
                AdAdapter adAdapter = new AdAdapter(jHLFActivity);
                jHLFActivity.rvAd.setLayoutManager(new LinearLayoutManager(jHLFActivity));
                jHLFActivity.rvAd.setAdapter(adAdapter);
                adAdapter.a(b);
            }
            List<WebSiteBean.WebSiteEntity> webSite = webSiteBean.getWebSite();
            if (webSite == null || webSite.size() <= 0) {
                return;
            }
            WebSiteAdapter webSiteAdapter = new WebSiteAdapter(jHLFActivity);
            jHLFActivity.rvList.setLayoutManager(new LinearLayoutManager(jHLFActivity));
            jHLFActivity.rvList.setAdapter(webSiteAdapter);
            webSiteAdapter.b(webSite, webSiteAdapter.b.size());
            return;
        }
        throw null;
    }

    public static void n(Context context) {
        f.b.a.a.a.u(context, JHLFActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.actiivty_jhlf_main;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        k(c.a().c(), new a());
    }
}
