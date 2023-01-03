package f.e.a.j.r.e;

import com.comeback.data.ui.ins.bean.Config;
import com.comeback.data.ui.ins.bean.HotUser;
import com.comeback.data.ui.ins.bean.ImageList;
import com.comeback.data.ui.ins.bean.VideoList;
import java.util.HashMap;
import l.o0.f;
import l.o0.i;
import l.o0.q;
import l.o0.s;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/api/inst/app/search/private/post/content")
    e<ImageList> a(@s HashMap<String, String> hashMap, @i("Authorization") String str);

    @f("/api/inst/app/user/private/igtv/view/list/{id}")
    e<VideoList> b(@q("id") String str, @s HashMap<String, String> hashMap, @i("Authorization") String str2);

    @f("/api/inst/app/recommend/private/user/v/list")
    e<HotUser> c(@s HashMap<String, String> hashMap, @i("Authorization") String str);

    @f("/api/inst/app/recommend/private/v/list")
    e<HotUser> d(@s HashMap<String, String> hashMap, @i("Authorization") String str);

    @f("/api/inst/app/general/public/getGeneral")
    e<Config> e();

    @f("/api/inst/app/recommend/private/post/hot/{id}")
    e<ImageList> f(@q("id") String str, @s HashMap<String, String> hashMap, @i("Authorization") String str2);

    @f("/api/post/app/user/private/post/view/list/{id}")
    e<ImageList> g(@q("id") String str, @s HashMap<String, String> hashMap, @i("Authorization") String str2);

    @f("/api/inst/app/search/private/post/content")
    e<VideoList> h(@s HashMap<String, String> hashMap, @i("Authorization") String str);

    @f("/api/inst/app/recommend/private/post/hot/{id}")
    e<VideoList> i(@q("id") String str, @s HashMap<String, String> hashMap, @i("Authorization") String str2);
}
