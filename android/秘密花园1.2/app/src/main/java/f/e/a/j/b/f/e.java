package f.e.a.j.b.f;

import com.comeback.data.ui.avbobo.bean.ChannelId;
import com.comeback.data.ui.avbobo.fragment.HomeTypeFragment;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import java.io.PrintStream;
import m.j;

/* compiled from: HomeTypeFragment.java */
/* loaded from: classes.dex */
public class e extends j<ChannelId> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ HomeTypeFragment f3895e;

    public e(HomeTypeFragment homeTypeFragment) {
        this.f3895e = homeTypeFragment;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        SmartRefreshLayout smartRefreshLayout;
        smartRefreshLayout = this.f3895e.refreshLayout;
        smartRefreshLayout.m(false);
    }

    @Override // m.j
    public void f(ChannelId channelId) {
        this.f3895e.f195k = channelId.getData().getRecommend_view_query_group().getView_group().getChildren().get(0).getGroup_id();
        PrintStream printStream = System.out;
        f.e.a.e.a("CVxdWlVNUFdJ");
        HomeTypeFragment homeTypeFragment = this.f3895e;
        String str = homeTypeFragment.f195k;
        homeTypeFragment.refreshLayout.A = false;
        homeTypeFragment.r(1);
    }
}
