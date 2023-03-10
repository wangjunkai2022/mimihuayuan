package f.e.a.j.a.f;

import com.comeback.data.ui.aimeiju.bean.BannerBean;
import com.comeback.data.ui.aimeiju.bean.ListBean;
import com.comeback.data.ui.aimeiju.bean.PlayKey;
import com.comeback.data.ui.aimeiju.bean.VideoDetail;
import com.comeback.data.ui.aimeiju.bean.VideoList;
import java.util.Map;
import l.o0.r;
import l.o0.s;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface e {
    @l.o0.f("/index.php/app/ios/vod/index")
    m.e<VideoList> a(@s Map<String, String> map);

    @l.o0.f("/index.php/app/ios/m3u8/index")
    m.e<PlayKey> b();

    @l.o0.f("/index.php/app/ios/topic/index")
    m.e<ListBean> c(@r("size") int i2, @r("vsize") int i3, @r("id") String str);

    @l.o0.f("/index.php/app/ios/vod/index")
    m.e<VideoList> d(@s Map<String, String> map);

    @l.o0.f("/index.php/app/ios/vod/index")
    m.e<BannerBean> e(@r("size") int i2, @r("zid") int i3, @r("id") String str);

    @l.o0.f("/index.php/app/ios/vod/show")
    m.e<VideoDetail> f(@s Map<String, String> map);

    @l.o0.f("/index.php/app/ios/type/index")
    m.e<ListBean> g(@r("size") int i2, @r("vsize") int i3, @r("id") String str);

    @l.o0.f("/index.php/app/ios/vod/index")
    m.e<VideoList> h(@s Map<String, String> map);
}
