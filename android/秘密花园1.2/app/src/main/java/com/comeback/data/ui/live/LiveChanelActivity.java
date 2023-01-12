package com.comeback.data.ui.live;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.live.LiveChanelActivity;
import com.comeback.data.ui.live.adapter.ChannelAdapter;
import com.comeback.data.ui.live.bean.LiveChannel;
import com.comeback.data.ui.main.bean.ConfigBean;
import com.comeback.data.widget.viewpager.AdPagerAdapter;
import com.comeback.data.widget.viewpager.PageView;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.i0.c;

/* loaded from: classes.dex */
public class LiveChanelActivity extends BaseRefreshActivity {
    @BindView
    public PageView banner;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<LiveChannel> {
        public a() {
            super();
        }

        @Override // m.j
        public void f(Object obj) {
            LiveChanelActivity.this.f114c.c();
            LiveChanelActivity.this.f114c.a(((LiveChannel) obj).getData().getLists());
        }
    }

    public static void u(Context context) {
        f.b.a.a.a.u(context, LiveChanelActivity.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_live_chanel;
    }

    @Override // com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        ConfigBean configBean = App.f104e;
        if (configBean == null || configBean.getBanner() == null) {
            return;
        }
        this.banner.a(App.f104e.getBanner(), new AdPagerAdapter.a() { // from class: f.e.a.j.z.a
            @Override // com.comeback.data.widget.viewpager.AdPagerAdapter.a
            public final void a(f.e.a.g.a aVar) {
                LiveChanelActivity.this.t(aVar);
            }
        });
        this.banner.setVisibility(0);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public BaseAbstractAdapter l() {
        return new ChannelAdapter(this);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public RecyclerView.LayoutManager m() {
        return new GridLayoutManager(this, 3);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(c.a().h(e.a("Bg==")), new a());
    }

    public final void s(String str) {
        try {
            startActivity(new Intent(e.a("VgwHFgQaXR0aCEACFh5NClQWCgsFXW96NjE="), Uri.parse(str)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public /* synthetic */ void t(f.e.a.g.a aVar) {
        s(aVar.getId());
    }
}
