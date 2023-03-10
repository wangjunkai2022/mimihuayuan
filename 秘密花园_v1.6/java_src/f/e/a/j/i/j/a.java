package f.e.a.j.i.j;

import com.comeback.data.ui.ds.bean.ComicDetailBean;
import com.comeback.data.ui.ds.bean.ComicListBean;
import com.comeback.data.ui.ds.bean.RankBean;
import com.comeback.data.ui.ds.bean.RecommendBean;
import com.comeback.data.ui.ds.bean.ScreenBean;
import java.util.Map;
import l.o0.d;
import l.o0.f;
import l.o0.m;
import l.o0.q;
import l.o0.s;
import m.e;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/home/api/searchk")
    e<ScreenBean> a(@s Map<String, String> map);

    @f("/home/api/chapter_list/tp/{id}-1-1-5000")
    e<ComicDetailBean> b(@q("id") String str);

    @f("/home/api/getpage/tp/{contentType}-{type}-{pageNo}")
    e<ScreenBean> c(@q("contentType") String str, @q("type") String str2, @q("pageNo") int i2);

    @l.o0.e
    @m("/home/api/yymhindex.html")
    e<RecommendBean> d(@d Map<String, String> map);

    @f("/home/api/rank/type/1")
    e<RankBean> e();

    @l.o0.e
    @m("/home/api/getjphc.html")
    e<ComicListBean> f(@d Map<String, String> map);

    @f("/home/api/cate/tp/{contentType}-{params2}-{params1}-1-{pageNo}")
    e<ScreenBean> g(@q("contentType") String str, @q("params1") String str2, @q("params2") String str3, @q("pageNo") int i2);
}
