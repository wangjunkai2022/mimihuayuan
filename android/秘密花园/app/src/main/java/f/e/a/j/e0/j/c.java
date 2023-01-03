package f.e.a.j.e0.j;

import com.comeback.data.ui.mimei.bean.AnimateHomeType;
import com.comeback.data.ui.mimei.bean.ComicDetailBean;
import com.comeback.data.ui.mimei.bean.ComicHomeType;
import com.comeback.data.ui.mimei.bean.HotSearch;
import com.comeback.data.ui.mimei.bean.NovelHomeType;
import com.comeback.data.ui.mimei.bean.ReadBean;
import java.util.HashMap;
import l.o0.f;
import l.o0.q;
import l.o0.s;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface c {
    @f("/v2/combine/comic/internal/{id}")
    e<ComicDetailBean> a(@q("id") String str, @s HashMap<String, String> hashMap);

    @f("/v1/combine/animat/index")
    e<AnimateHomeType> b(@s HashMap<String, String> hashMap);

    @f("/v1/search/tag")
    e<HotSearch> c();

    @f("/v1/search/fiction")
    e<NovelHomeType> d(@s HashMap<String, String> hashMap);

    @f("/v1/combine/fiction/index")
    e<NovelHomeType> e();

    @f("/v2/comic/read")
    e<ReadBean> f(@s HashMap<String, String> hashMap);

    @f("/v2/search/comic")
    e<ComicHomeType> g(@s HashMap<String, String> hashMap);

    @f("/v2/comic/{type}")
    e<ComicHomeType> h(@q("type") String str, @s HashMap<String, String> hashMap);

    @f("/v2/combine/comic/index")
    e<ComicHomeType> i(@s HashMap<String, String> hashMap);

    @f("/v1/fiction/{type}")
    e<NovelHomeType> j(@q("type") String str, @s HashMap<String, String> hashMap);
}
