package f.e.a.j.n.p;

import com.comeback.data.ui.gkj.bean.AnimeRead;
import com.comeback.data.ui.gkj.bean.ComicDetail;
import com.comeback.data.ui.gkj.bean.ComicList;
import com.comeback.data.ui.gkj.bean.ComicRead;
import com.comeback.data.ui.gkj.bean.ConfBean;
import com.comeback.data.ui.gkj.bean.NavBean;
import com.comeback.data.ui.gkj.bean.ScreenBean;
import com.comeback.data.ui.gkj.bean.SpecialBean;
import com.comeback.data.ui.gkj.bean.ViewModel;
import i.g0;
import java.util.HashMap;
import l.o0.f;
import l.o0.i;
import l.o0.m;
import l.o0.r;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface c {
    @l.o0.e
    @m("/api/comic-lists")
    m.e<ComicList> a(@l.o0.d HashMap<String, String> hashMap);

    @l.o0.e
    @m("/api/guess-like")
    m.e<ComicList> c(@l.o0.d HashMap<String, String> hashMap);

    @m("/cms/api/article/search/list")
    m.e<SpecialBean> d(@l.o0.a g0 g0Var);

    @l.o0.e
    @m("/api/special-lists")
    m.e<ComicList> e(@l.o0.d HashMap<String, String> hashMap);

    @l.o0.e
    @m("/api/comic-select")
    m.e<ScreenBean> f(@l.o0.c("empty") String str);

    @f("/cms/api/app/conf")
    m.e<ConfBean> g(@i("newver") int i2);

    @l.o0.e
    @m("/api/view-module")
    m.e<ViewModel> h(@l.o0.d HashMap<String, String> hashMap);

    @l.o0.e
    @m("/api/comic-rank")
    m.e<ComicList> i(@l.o0.c("global_type") String str);

    @f("/cms/api/cartoon/detail")
    m.e<ComicDetail> j(@r("id") int i2);

    @f("/cms/api/special/nav/article/list")
    m.e<NavBean> k(@r("navId") int i2, @r("page") int i3, @r("pageSize") int i4);

    @f("/cms/api/special/article/list")
    m.e<SpecialBean> l(@r("id") int i2, @r("page") int i3, @r("pageSize") int i4);

    @f("/cms/api/cartoon/play")
    m.e<ComicRead> m(@r("cid") int i2, @i("authorization") String str);

    @l.o0.e
    @m("/api/comic-image")
    m.e<AnimeRead> n(@l.o0.d HashMap<String, String> hashMap);
}
