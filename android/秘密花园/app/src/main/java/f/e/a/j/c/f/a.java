package f.e.a.j.c.f;

import com.comeback.data.ui.ba.bean.BannerBean;
import com.comeback.data.ui.ba.fragment.RecommendFragment;
import com.youth.banner.listener.OnBannerListener;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements OnBannerListener {
    public final /* synthetic */ RecommendFragment a;
    public final /* synthetic */ BannerBean b;

    public /* synthetic */ a(RecommendFragment recommendFragment, BannerBean bannerBean) {
        this.a = recommendFragment;
        this.b = bannerBean;
    }

    @Override // com.youth.banner.listener.OnBannerListener
    public final void OnBannerClick(int i2) {
        this.a.h(this.b, i2);
    }
}
