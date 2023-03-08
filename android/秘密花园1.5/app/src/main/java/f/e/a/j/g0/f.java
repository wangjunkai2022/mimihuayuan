package f.e.a.j.g0;

import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.movieCloud.VideoSearchActivity;
import com.comeback.data.ui.movieCloud.adapter.HotWordAdapter;
import com.comeback.data.ui.movieCloud.adapter.TitleAdapter;
import com.comeback.data.ui.movieCloud.bean.XXList;
import f.a.a.a.l.g;
import f.a.a.a.l.l;

/* compiled from: VideoSearchActivity.java */
/* loaded from: classes.dex */
public class f extends BaseRefreshActivity.a<XXList> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ VideoSearchActivity f3946f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(VideoSearchActivity videoSearchActivity) {
        super();
        this.f3946f = videoSearchActivity;
    }

    @Override // m.j
    public void f(Object obj) {
        XXList xXList = (XXList) obj;
        VideoSearchActivity videoSearchActivity = this.f3946f;
        videoSearchActivity.f1809e = xXList;
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        videoSearchActivity.rvHot.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 10);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(videoSearchActivity);
        videoSearchActivity.rvHot.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        videoSearchActivity.rvHot.setAdapter(delegateAdapter);
        delegateAdapter.b(new TitleAdapter(videoSearchActivity, f.e.a.e.a("0OHOjfzb36PvgYDF"), new l()));
        g gVar = new g(2);
        gVar.D(5);
        gVar.C(5);
        gVar.s = true;
        delegateAdapter.b(new HotWordAdapter(videoSearchActivity, xXList.getData().getHotrows(), gVar));
    }
}
