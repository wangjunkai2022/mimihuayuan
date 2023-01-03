package f.e.a.j.n0.i;

import com.comeback.data.ui.tv91.bean.ConfigBean;
import com.comeback.data.ui.tv91.bean.MovieInfo;
import com.comeback.data.ui.tv91.bean.StarBean;
import com.comeback.data.ui.tv91.bean.Tags;
import com.comeback.data.ui.tv91.bean.VideoList;
import java.util.Map;
import l.o0.d;
import l.o0.e;
import l.o0.f;
import l.o0.m;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/vodapi.html")
    m.e<StarBean> a(@d Map<String, String> map);

    @e
    @m("/vodapi.html")
    m.e<VideoList> b(@d Map<String, String> map);

    @e
    @m("/vodapi.html")
    m.e<VideoList> c(@d Map<String, String> map);

    @e
    @m("/vodapi.html")
    m.e<Tags> d(@d Map<String, String> map);

    @e
    @m("/vodapi.html")
    m.e<VideoList> e(@d Map<String, String> map);

    @e
    @m("/vodapi.html")
    m.e<MovieInfo> f(@d Map<String, String> map);

    @f("http://47.92.103.233/")
    m.e<ConfigBean> g();
}
