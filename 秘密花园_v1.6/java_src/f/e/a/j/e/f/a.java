package f.e.a.j.e.f;

import com.comeback.data.ui.cm.bean.ArtistDetail;
import com.comeback.data.ui.cm.bean.ArtistList;
import com.comeback.data.ui.cm.bean.HomeBean;
import com.comeback.data.ui.cm.bean.HotSearch;
import com.comeback.data.ui.cm.bean.PlayBean;
import com.comeback.data.ui.cm.bean.RankVideo;
import com.comeback.data.ui.cm.bean.ScreenBean;
import l.o0.f;
import l.o0.q;
import l.o0.r;
import m.e;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/api/videoSearchHot")
    e<HotSearch> c();

    @f("/api/artistDetail")
    e<ArtistDetail> d(@r("artistId") int i2, @r("page") int i3);

    @f("/api/videoindex")
    e<HomeBean> e();

    @f("/api/videoplay/{id}")
    e<PlayBean> f(@q("id") String str, @r("uuid") String str2);

    @f("/api/videoartist")
    e<ArtistList> g();

    @f("/api/rank")
    e<RankVideo> h(@r("type") String str, @r("page") int i2);

    @f("/api/videosort/{id}")
    e<ScreenBean> i(@q("id") int i2, @r("orderby") String str, @r("page") int i3);

    @f("/api/videosort/0")
    e<ScreenBean> j(@r("serach") String str, @r("page") int i2);
}
