package f.e.a.j.c.g;

import com.comeback.data.ui.ba.bean.BannerBean;
import com.comeback.data.ui.ba.bean.ComicDetailBean;
import com.comeback.data.ui.ba.bean.ComicListBean;
import com.comeback.data.ui.ba.bean.HostBean;
import com.comeback.data.ui.ba.bean.ReadBean;
import java.util.Map;
import l.o0.d;
import l.o0.e;
import l.o0.f;
import l.o0.i;
import l.o0.m;
import l.o0.q;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/api/v1/comic/contents_list_ajax")
    m.e<ComicDetailBean> b(@l.o0.c("comic_id") String str);

    @e
    @m("/api/v1/page/{type}")
    m.e<ComicListBean> c(@q("type") String str, @d Map<String, String> map);

    @e
    @m("/api/v1/page/realtime")
    m.e<ComicListBean> d(@l.o0.c("data") String str);

    @f("/api/v1/operate/recommend")
    m.e<BannerBean> e();

    @e
    @m("/api/v1/comic/episode_frame")
    m.e<ReadBean> f(@l.o0.c("episode_idx") int i2);

    @f("https://api.hijcba.xyz/act/xjmh/domains")
    m.e<HostBean> g(@i("code") int i2);
}
