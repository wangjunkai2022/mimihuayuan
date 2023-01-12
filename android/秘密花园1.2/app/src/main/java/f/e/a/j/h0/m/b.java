package f.e.a.j.h0.m;

import com.comeback.data.ui.nana.bean.ActorBean;
import com.comeback.data.ui.nana.bean.MenuBean;
import com.comeback.data.ui.nana.bean.TagBean;
import com.comeback.data.ui.nana.bean.TypeBean;
import com.comeback.data.ui.nana.bean.VideoInfo;
import com.comeback.data.ui.nana.bean.VideoListBean;
import i.i0;
import java.util.HashMap;
import l.o0.f;
import l.o0.i;
import l.o0.q;
import l.o0.r;
import l.o0.s;
import l.o0.v;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @f("/v1/videos/{type}/top")
    m.e<VideoListBean> a(@q("type") String str, @r("token") String str2);

    @f("/v1/actors")
    m.e<ActorBean> b(@s HashMap<String, String> hashMap);

    @f
    l.d<i0> c(@v String str);

    @f("/v1/videos/menu/{menu}")
    m.e<VideoListBean> d(@q("menu") int i2, @s HashMap<String, String> hashMap);

    @f("/v1/{type}/menus")
    m.e<MenuBean> e(@q("type") String str, @r("token") String str2);

    @f("/v1/{type}/videos/{menuid}")
    m.e<VideoListBean> f(@q("type") String str, @q("menuid") String str2, @r("token") String str3);

    @f("/v1/actor/{actorId}}")
    m.e<VideoListBean> g(@q("actorId") int i2, @s HashMap<String, String> hashMap);

    @f
    l.d<i0> h(@v String str, @i("x-afdac809-9ad768a3") String str2);

    @f("/v1/shorts/tags")
    m.e<TagBean> i(@r("token") String str);

    @f("/v1/category/{type}")
    m.e<TypeBean> j(@q("type") String str, @r("token") String str2);

    @f("/v1/video/info/{id}")
    m.e<VideoInfo> k(@q("id") String str, @r("token") String str2);

    @f("/v1/videos/{videoType}/keyword/{key}")
    m.e<VideoListBean> l(@q("videoType") String str, @q("key") String str2, @r("token") String str3);
}
