package f.e.a.j.a0.k;

import com.comeback.data.ui.lutube.bean.ActorList;
import com.comeback.data.ui.lutube.bean.HostInfo;
import com.comeback.data.ui.lutube.bean.VideoInfo;
import com.comeback.data.ui.lutube.bean.VideoList;
import com.comeback.data.ui.lutube.bean.VideoType;
import java.util.Map;
import l.o0.f;
import l.o0.q;
import l.o0.r;
import l.o0.s;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @f("/v1/videos/{videoType}/top")
    e<VideoList> a(@q("videoType") String str, @r("token") String str2);

    @f("/v2/videos/menu/0")
    e<VideoList> b(@s Map<String, String> map);

    @f("/v1/category/short")
    e<VideoType> c(@r("token") String str);

    @f("https://i.cfbbj.net/pwa.txt")
    e<HostInfo> d();

    @f("https://i.wfzh.net/pwa.txt")
    e<HostInfo> e();

    @f("/v1/video/info/{videoId}")
    e<VideoInfo> f(@q("videoId") String str, @r("token") String str2);

    @f("/v1/actor/{id}")
    e<VideoList> g(@q("id") String str, @s Map<String, String> map);

    @f("/v2/videos/{videoType}/keyword/{key}")
    e<VideoList> h(@q("videoType") String str, @q("key") String str2, @s Map<String, String> map);

    @f("/v1/actors")
    e<ActorList> i(@s Map<String, String> map);

    @f("https://lulutv.fun/pwa.txt")
    e<HostInfo> j();

    @f("/v2/videos/menu/{index}")
    e<VideoList> k(@q("index") int i2, @s Map<String, String> map);

    @f("/v1/category/long")
    e<VideoType> l(@r("token") String str);
}
