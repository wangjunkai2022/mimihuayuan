package f.e.a.j.q0.f;

import com.comeback.data.ui.xiami.bean.HomeBean;
import com.comeback.data.ui.xiami.bean.ImageDetail;
import com.comeback.data.ui.xiami.bean.ImageList;
import com.comeback.data.ui.xiami.bean.NovelDetail;
import com.comeback.data.ui.xiami.bean.NovelList;
import com.comeback.data.ui.xiami.bean.VideoDetail;
import com.comeback.data.ui.xiami.bean.VideoList;
import java.util.Map;
import l.o0.m;
import l.o0.s;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @l.o0.e
    @m("/index/search")
    m.e<VideoList> a(@l.o0.d Map<String, String> map);

    @l.o0.f("/index/categoryVideoInfo")
    m.e<VideoList> b(@s Map<String, String> map);

    @l.o0.f("/index/hotSearch")
    m.e<VideoList> c();

    @l.o0.f("/fiction/info")
    m.e<NovelDetail> d(@s Map<String, String> map);

    @l.o0.f("/index/home")
    m.e<HomeBean> e();

    @l.o0.e
    @m("/index/videoInfo")
    m.e<VideoDetail> f(@l.o0.d Map<String, String> map);

    @l.o0.f("/fiction/list")
    m.e<NovelList> g(@s Map<String, String> map);

    @l.o0.f("/index/featured")
    m.e<VideoList> h(@s Map<String, String> map);

    @l.o0.f("/index/galleryGroupInfo")
    m.e<ImageDetail> i(@s Map<String, String> map);

    @l.o0.f("/index/hot")
    m.e<VideoList> j(@s Map<String, String> map);

    @l.o0.f("/index/galleryInfo")
    m.e<ImageList> k(@s Map<String, String> map);

    @l.o0.f("/index/featured/info")
    m.e<VideoList> l(@s Map<String, String> map);
}
