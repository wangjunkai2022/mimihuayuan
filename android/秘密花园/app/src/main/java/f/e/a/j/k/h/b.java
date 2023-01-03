package f.e.a.j.k.h;

import com.comeback.data.ui.fulao2.bean.Host;
import com.comeback.data.ui.fulao2.bean.StarList;
import com.comeback.data.ui.fulao2.bean.TokenBean;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.data.ui.fulao2.bean.VideoList;
import com.comeback.data.ui.fulao2.bean.VideoType;
import i.g0;
import java.util.HashMap;
import l.o0.a;
import l.o0.f;
import l.o0.i;
import l.o0.m;
import l.o0.q;
import l.o0.r;
import l.o0.s;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @f("/v1/videos/long/top_{videoType}")
    e<VideoList> a(@q("videoType") String str, @r("timestamp") String str2);

    @f("https://storage.pinyingkeji.com/host_f2_2.txt")
    e<Host> b();

    @f("/v1/videos/popular/actor")
    e<StarList> c(@s HashMap<String, String> hashMap);

    @f("/v1/actor/{id}")
    e<VideoList> d(@q("id") String str, @s HashMap<String, String> hashMap);

    @f("/v1/videos/popular/lists")
    e<VideoList> e(@s HashMap<String, String> hashMap);

    @f("/v2/search/{type}/{key}")
    e<VideoList> f(@q("type") String str, @q("key") String str2, @s HashMap<String, String> hashMap);

    @m("/v1/register/token")
    e<TokenBean> g(@i("origin") String str, @s HashMap<String, String> hashMap, @a g0 g0Var);

    @f("/v1/videos/menu/{index}")
    e<VideoList> h(@q("index") int i2, @s HashMap<String, String> hashMap);

    @f("/v1/category/long")
    e<VideoType> i(@r("timestamp") String str);

    @f("/v1/video/info/{index}")
    e<VideoInfo> j(@q("index") String str, @s HashMap<String, String> hashMap);

    @f("https://storage.aweiya.net/host_f2_2.txt")
    e<Host> k();

    @f("/v1/actors")
    e<StarList> l(@s HashMap<String, String> hashMap);

    @f("https://storage.0551pf.com/host_f2_2.txt")
    e<Host> m();
}
