package f.e.a.j.m0.b;

import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.ui.tomato.bean.LiveList;
import com.comeback.data.ui.tomato.bean.TomatoLiveBase;
import com.comeback.data.ui.tomato.fragment.LiveFragment;
import f.i.b.j;
import java.io.PrintStream;

/* compiled from: LiveFragment.java */
/* loaded from: classes.dex */
public class a extends BaseRefreshFragment.a<TomatoLiveBase> {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ LiveFragment f3926f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(LiveFragment liveFragment) {
        super();
        this.f3926f = liveFragment;
    }

    @Override // m.j
    public void f(Object obj) {
        BaseAbstractAdapter baseAbstractAdapter;
        try {
            String jsonData = ((TomatoLiveBase) obj).getJsonData();
            baseAbstractAdapter = this.f3926f.f117h;
            baseAbstractAdapter.a(((LiveList) new j().d(jsonData, LiveList.class)).getDataList());
            PrintStream printStream = System.out;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        PrintStream printStream2 = System.out;
    }
}
