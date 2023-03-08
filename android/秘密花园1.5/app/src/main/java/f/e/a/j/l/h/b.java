package f.e.a.j.l.h;

import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.StarList;
import com.comeback.data.ui.fulao2.bean.TokenBean;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.data.ui.fulao2.bean.VideoType;
import i.g0;
import java.util.HashMap;
import l.o0.i;
import l.o0.m;
import l.o0.q;
import l.o0.r;
import l.o0.s;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @l.o0.f("/v1/videos/long/top_{videoType}")
    m.e<VideoList> a(@q("videoType") String str, @r("timestamp") String str2);

    @l.o0.f("https://storage.pinyingkeji.com/host_f2_2.txt")
    m.e<Host> b();

    @l.o0.f("/v1/videos/popular/actor")
    m.e<StarList> c(@s HashMap<String, String> hashMap);

    @l.o0.f("/v1/actor/{id}")
    m.e<VideoList> d(@q("id") String str, @s HashMap<String, String> hashMap);

    @l.o0.f("/v1/videos/popular/lists")
    m.e<VideoList> e(@s HashMap<String, String> hashMap);

    @l.o0.f("/v2/search/{type}/{key}")
    m.e<VideoList> f(@q("type") String str, @q("key") String str2, @s HashMap<String, String> hashMap);

    @m("/v1/register/token")
    m.e<TokenBean> g(@i("origin") String str, @s HashMap<String, String> hashMap, @l.o0.a g0 g0Var);

    @l.o0.f("/v1/videos/menu/{index}")
    m.e<VideoList> h(@q("index") int i2, @s HashMap<String, String> hashMap);

    @l.o0.f("/v1/category/long")
    m.e<VideoType> i(@r("timestamp") String str);

    @l.o0.f("/v1/video/info/{index}")
    m.e<VideoInfo> j(@q("index") String str, @s HashMap<String, String> hashMap);

    @l.o0.f("https://storage.aweiya.net/host_f2_2.txt")
    m.e<Host> k();

    @l.o0.f("/v1/actors")
    m.e<StarList> l(@s HashMap<String, String> hashMap);

    @l.o0.f("https://storage.0551pf.com/host_f2_2.txt")
    m.e<Host> m();
}
