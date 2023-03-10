package f.e.a.j.c.f;

import com.comeback.data.ui.ba.bean.ComicListBean;
import com.comeback.data.ui.ba.fragment.RecommendFragment;
import m.j;
/* compiled from: RecommendFragment.java */
/* loaded from: classes.dex */
public class c extends j<ComicListBean> {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f3913e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ RecommendFragment f3914f;

    public c(RecommendFragment recommendFragment, String str) {
        this.f3914f = recommendFragment;
        this.f3913e = str;
    }

    @Override // m.j
    public void d() {
    }

    @Override // m.j
    public void e(Throwable th) {
    }

    @Override // m.j
    public void f(ComicListBean comicListBean) {
        this.f3914f.f255g.put(this.f3913e, comicListBean);
        this.f3914f.j(this.f3913e);
    }
}
