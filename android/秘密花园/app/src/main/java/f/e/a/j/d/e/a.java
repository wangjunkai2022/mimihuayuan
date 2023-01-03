package f.e.a.j.d.e;

import com.comeback.data.ui.bale.bean.HotSearch;
import com.comeback.data.ui.bale.bean.RankList;
import com.comeback.data.ui.bale.bean.ScreenBean;
import com.comeback.data.ui.bale.bean.StarDetail;
import com.comeback.data.ui.bale.bean.StarList;
import com.comeback.data.ui.bale.bean.Tags;
import com.comeback.data.ui.bale.bean.VideoList;
import com.comeback.data.ui.bale.bean.VideoPlay;
import i.g0;
import l.o0.c;
import l.o0.e;
import l.o0.f;
import l.o0.m;
import l.o0.r;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/api/v1/video/videoinfo")
    m.e<VideoPlay> a(@c("videoId") String str);

    @m("/api/v1/video/videolist")
    m.e<VideoList> b(@r("tag") String str);

    @f("/api/v1/video/getsearchkey")
    m.e<HotSearch> c();

    @m("/api/v1/video/list")
    m.e<RankList> d(@r("page") int i2, @l.o0.a g0 g0Var);

    @m("/api/v1/video/rank")
    m.e<RankList> e(@r("type") String str, @r("page") int i2);

    @f("/api/v1/video/sort")
    m.e<ScreenBean> f();

    @f("/api/v1/video/artist")
    m.e<StarList> g();

    @m("/api/v1/video/tagsearch")
    m.e<RankList> h(@r("tags") String str, @r("page") int i2);

    @e
    @m("/api/v1/video/searchbywords")
    m.e<RankList> i(@r("page") int i2, @c("keyWords") String str);

    @f("/api/v1/video/alltag")
    m.e<Tags> j();

    @m("/api/v1/video/artistvideo")
    m.e<StarDetail> k(@r("artistId") int i2);
}
