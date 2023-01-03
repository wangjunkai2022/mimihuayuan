package f.e.a.j.r0.f;

import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.data.ui.xj.bean.HomeData;
import com.comeback.data.ui.xj.bean.PlayUrl;
import com.comeback.data.ui.xj.bean.ScreenVideo;
import com.comeback.data.ui.xj.bean.SearchResult;
import com.comeback.data.ui.xj.bean.ShortList;
import com.comeback.data.ui.xj.bean.Special;
import com.comeback.data.ui.xj.bean.VideoList;
import l.o0.f;
import l.o0.i;
import l.o0.q;
import l.o0.r;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/vod/{type}-0-0-0-0-0-0-0-0-0-{page}")
    e<VideoList> a(@q("type") String str, @q("page") int i2);

    @f("/special/listing-0-0-{page}")
    e<Channel> b(@q("page") int i2);

    @f("/special/detail/{id}")
    e<Special> c(@q("id") String str);

    @f("/search")
    e<SearchResult> d(@r("page") int i2, @r("wd") String str);

    @f("/minivod/reqplay/{id}")
    e<PlayUrl> e(@q("id") String str);

    @f("/minivod/{type}-0-0-0-0-0-0-0-0-0-0-{page}")
    e<VideoList> f(@q("type") String str, @q("page") int i2);

    @f("/vod/reqplay/{id}")
    e<PlayUrl> g(@i("cookie") String str, @q("id") String str2);

    @f("/vod/reqplay/{id}")
    e<PlayUrl> h(@i("X-Forwarded-For") String str, @q("id") String str2);

    @f("/vod/{path}")
    e<ScreenVideo> i(@q("path") String str);

    @f("/index")
    e<HomeData> j();

    @f("/minivod/reqlist")
    e<ShortList> k();
}
