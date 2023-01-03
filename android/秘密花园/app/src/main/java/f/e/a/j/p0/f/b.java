package f.e.a.j.p0.f;

import com.comeback.data.ui.xiami.bean.HomeBean;
import com.comeback.data.ui.xiami.bean.ImageDetail;
import com.comeback.data.ui.xiami.bean.ImageList;
import com.comeback.data.ui.xiami.bean.NovelDetail;
import com.comeback.data.ui.xiami.bean.NovelList;
import com.comeback.data.ui.xiami.bean.VideoDetail;
import com.comeback.data.ui.xiami.bean.VideoList;
import java.util.Map;
import l.o0.d;
import l.o0.e;
import l.o0.f;
import l.o0.m;
import l.o0.s;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @e
    @m("/index/search")
    m.e<VideoList> a(@d Map<String, String> map);

    @f("/index/categoryVideoInfo")
    m.e<VideoList> b(@s Map<String, String> map);

    @f("/index/hotSearch")
    m.e<VideoList> c();

    @f("/fiction/info")
    m.e<NovelDetail> d(@s Map<String, String> map);

    @f("/index/home")
    m.e<HomeBean> e();

    @e
    @m("/index/videoInfo")
    m.e<VideoDetail> f(@d Map<String, String> map);

    @f("/fiction/list")
    m.e<NovelList> g(@s Map<String, String> map);

    @f("/index/featured")
    m.e<VideoList> h(@s Map<String, String> map);

    @f("/index/galleryGroupInfo")
    m.e<ImageDetail> i(@s Map<String, String> map);

    @f("/index/hot")
    m.e<VideoList> j(@s Map<String, String> map);

    @f("/index/galleryInfo")
    m.e<ImageList> k(@s Map<String, String> map);

    @f("/index/featured/info")
    m.e<VideoList> l(@s Map<String, String> map);
}
