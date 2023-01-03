package f.e.a.j.k0.h;

import com.comeback.data.ui.slf.bean.AppInfo;
import com.comeback.data.ui.slf.bean.ChapterBean;
import com.comeback.data.ui.slf.bean.ComicDetail;
import com.comeback.data.ui.slf.bean.GuessLike;
import com.comeback.data.ui.slf.bean.HomeDataBean;
import com.comeback.data.ui.slf.bean.SLFItemBean;
import com.comeback.data.ui.slf.bean.SearchInfo;
import com.comeback.data.ui.slf.bean.Special;
import java.util.ArrayList;
import java.util.HashMap;
import l.o0.d;
import l.o0.e;
import l.o0.m;
import l.o0.q;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/bigapi/{type}/searchinfo")
    m.e<SearchInfo> a(@q("type") String str, @d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/cartoon/guess")
    m.e<GuessLike> b(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/image/detail")
    m.e<ChapterBean> c(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/{type}/search")
    m.e<ArrayList<SLFItemBean>> d(@q("type") String str, @d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/video/detail")
    m.e<ComicDetail> e(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/app/info")
    m.e<AppInfo> f(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/video/search")
    m.e<ArrayList<SLFItemBean>> g(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/cartoon/homenew")
    m.e<HomeDataBean> h(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/image/search")
    m.e<ArrayList<SLFItemBean>> i(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/story/category")
    m.e<ArrayList<HomeDataBean.NewBean>> j(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/story/home")
    m.e<HomeDataBean> k(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/story/newdetail")
    m.e<ComicDetail> l(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/cartoon/detail")
    m.e<ComicDetail> m(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/{type}/specialdetail")
    m.e<GuessLike> n(@q("type") String str, @d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/{type}/special")
    m.e<ArrayList<Special>> o(@q("type") String str, @d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/video/homenew")
    m.e<HomeDataBean> p(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/cartoon/search")
    m.e<ArrayList<SLFItemBean>> q(@d HashMap<String, String> hashMap);

    @e
    @m("/bigapi/image/home")
    m.e<HomeDataBean> r(@d HashMap<String, String> hashMap);
}
