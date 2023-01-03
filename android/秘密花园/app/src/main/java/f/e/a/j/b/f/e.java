package f.e.a.j.b.f;

import com.comeback.data.ui.avbobo.bean.ChannelId;
import com.comeback.data.ui.avbobo.fragment.HomeTypeFragment;
import java.io.PrintStream;
import m.j;

/* compiled from: HomeTypeFragment.java */
/* loaded from: classes.dex */
public class e extends j<ChannelId> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ HomeTypeFragment f3823e;

    public e(HomeTypeFragment homeTypeFragment) {
        this.f3823e = homeTypeFragment;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
        this.f3823e.refreshLayout.m(false);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // m.j
    public void f(ChannelId channelId) {
        this.f3823e.f195k = channelId.getData().getRecommend_view_query_group().getView_group().getChildren().get(0).getGroup_id();
        PrintStream printStream = System.out;
        f.e.a.e.a("CVxdWlVNUFdJ");
        HomeTypeFragment homeTypeFragment = this.f3823e;
        String str = homeTypeFragment.f195k;
        homeTypeFragment.refreshLayout.A = false;
        homeTypeFragment.r(1);
    }
}
