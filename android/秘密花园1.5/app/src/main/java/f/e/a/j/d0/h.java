package f.e.a.j.d0;

import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.ui.maomi.SearchActivity;
import com.comeback.data.ui.maomi.adapter.HotWordAdapter;
import com.comeback.data.ui.maomi.bean.HotWords;
import com.comeback.data.ui.movieCloud.adapter.TitleAdapter;
import f.a.a.a.l.l;

/* compiled from: SearchActivity.java */
/* loaded from: classes.dex */
public class h extends BaseRefreshActivity.a<HotWords> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ SearchActivity f3914f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(SearchActivity searchActivity) {
        super();
        this.f3914f = searchActivity;
    }

    @Override // m.j
    public void f(Object obj) {
        HotWords hotWords = (HotWords) obj;
        SearchActivity searchActivity = this.f3914f;
        searchActivity.f1616e = hotWords;
        RecyclerView.RecycledViewPool recycledViewPool = new RecyclerView.RecycledViewPool();
        searchActivity.rvHot.setRecycledViewPool(recycledViewPool);
        recycledViewPool.setMaxRecycledViews(0, 10);
        VirtualLayoutManager virtualLayoutManager = new VirtualLayoutManager(searchActivity);
        searchActivity.rvHot.setLayoutManager(virtualLayoutManager);
        DelegateAdapter delegateAdapter = new DelegateAdapter(virtualLayoutManager, false);
        searchActivity.rvHot.setAdapter(delegateAdapter);
        delegateAdapter.b(new TitleAdapter(searchActivity, f.e.a.e.a("0OHOjfzb36PvgYDF"), new l()));
        f.a.a.a.l.g gVar = new f.a.a.a.l.g(5);
        gVar.D(5);
        gVar.C(5);
        gVar.s = true;
        HotWordAdapter hotWordAdapter = new HotWordAdapter(searchActivity, hotWords.getData().getData(), gVar);
        delegateAdapter.b(hotWordAdapter);
        hotWordAdapter.b = new i(searchActivity);
    }
}
