package com.comeback.data.ui.ba.fragment;

import android.widget.RadioGroup;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.ui.ba.ComicReadActivity;
import com.comeback.data.ui.ba.adapter.RealTimeAdapter;
import com.comeback.data.ui.ba.bean.BaComicsBean;
import com.comeback.data.ui.ba.bean.BannerBean;
import com.comeback.data.ui.ba.bean.ComicListBean;
import com.comeback.data.ui.ba.fragment.RecommendFragment;
import com.comeback.secret.garden.R;
import com.youth.banner.Banner;
import com.youth.banner.Transformer;
import com.youth.banner.listener.OnBannerListener;
import f.e.a.j.c.g.c;
import f.e.a.k.e;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class RecommendFragment extends BaseFragment {
    @BindView
    public Banner banner;

    /* renamed from: g  reason: collision with root package name */
    public HashMap<String, ComicListBean> f255g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    public RealTimeAdapter f256h;
    @BindView
    public RadioGroup radioGroup;
    @BindView
    public RecyclerView rvList;

    /* loaded from: classes.dex */
    public class a extends j<BannerBean> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        @Override // m.j
        public void f(BannerBean bannerBean) {
            final BannerBean bannerBean2 = bannerBean;
            final RecommendFragment recommendFragment = RecommendFragment.this;
            recommendFragment.banner.setBannerAnimation(Transformer.Accordion);
            recommendFragment.banner.setBannerStyle(1);
            recommendFragment.banner.setDelayTime(4000);
            recommendFragment.banner.setImageLoader(new e());
            recommendFragment.banner.setImages(bannerBean2.getImages());
            recommendFragment.banner.start();
            recommendFragment.banner.setOnBannerListener(new OnBannerListener() { // from class: f.e.a.j.c.f.a
                @Override // com.youth.banner.listener.OnBannerListener
                public final void OnBannerClick(int i2) {
                    RecommendFragment.this.h(bannerBean2, i2);
                }
            });
        }
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_ba_recommend;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
        g(c.a().e(), new a());
        String a2 = f.e.a.e.a("Qw0MCg==");
        g(c.a().d(a2), new f.e.a.j.c.f.c(this, a2));
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        RealTimeAdapter realTimeAdapter = new RealTimeAdapter(getContext());
        this.f256h = realTimeAdapter;
        this.rvList.setAdapter(realTimeAdapter);
        this.rvList.addItemDecoration(new DividerItemDecoration(getContext(), 1));
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: f.e.a.j.c.f.b
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup, int i2) {
                RecommendFragment.this.i(radioGroup, i2);
            }
        });
    }

    public /* synthetic */ void h(BannerBean bannerBean, int i2) {
        BannerBean.ResultsBean resultsBean = bannerBean.getResults().get(i2);
        BaComicsBean baComicsBean = new BaComicsBean();
        baComicsBean.setShow_id(String.valueOf(resultsBean.getShow_detail_id()));
        baComicsBean.setSmall_picture(resultsBean.getRecommend_url());
        ComicReadActivity.q(getContext(), baComicsBean);
    }

    public /* synthetic */ void i(RadioGroup radioGroup, int i2) {
        if (i2 == R.id.rb_comic) {
            k(f.e.a.e.a("Qw0MCg=="));
        } else if (i2 == R.id.rb_finish) {
            k(f.e.a.e.a("VA0OFAcWTVY="));
        } else if (i2 != R.id.rb_new) {
        } else {
            k(f.e.a.e.a("WQcU"));
        }
    }

    public final void j(String str) {
        this.f256h.c();
        this.f256h.a(this.f255g.get(str).getResults().getComics());
    }

    public final void k(String str) {
        if (this.f255g.get(str) != null) {
            j(str);
        } else {
            g(c.a().d(str), new f.e.a.j.c.f.c(this, str));
        }
    }
}
