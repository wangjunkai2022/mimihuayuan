package f.e.a.j.f0.h;

import com.comeback.data.ui.movieCloud.bean.AMJList;
import com.comeback.data.ui.movieCloud.bean.AMJPlay;
import com.comeback.data.ui.movieCloud.bean.PlayIndex;
import com.comeback.data.ui.movieCloud.bean.XXList;
import com.comeback.data.ui.movieCloud.bean.XXPlay;
import l.o0.f;
import l.o0.q;
import l.o0.r;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/search?page=1")
    e<XXList> a();

    @f("/search")
    e<XXList> b(@r("page") int i2, @r("wd") String str);

    @f("/vod/reqplay/{id}")
    e<PlayIndex> c(@q("id") String str, @r("playindex") String str2);

    @f("https://mjapp.mjomj.com/index.php/app/ios/vod/index")
    e<AMJList> d(@r("size") int i2, @r("page") int i3, @r("key") String str);

    @f("/vod/show/{id}")
    e<XXPlay> e(@q("id") String str);

    @f("https://mjapp.mjomj.com/index.php/app/ios/vod/show")
    e<AMJPlay> f(@r("token") String str, @r("id") String str2);
}
