package f.e.a.j.e0.j;

import com.comeback.data.ui.mimei.bean.AnimateHomeType;
import com.comeback.data.ui.mimei.bean.ComicDetailBean;
import com.comeback.data.ui.mimei.bean.ComicHomeType;
import com.comeback.data.ui.mimei.bean.HotSearch;
import com.comeback.data.ui.mimei.bean.NovelHomeType;
import com.comeback.data.ui.mimei.bean.ReadBean;
import java.util.HashMap;
import l.o0.q;
import l.o0.s;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface c {
    @l.o0.f("/v2/combine/comic/internal/{id}")
    m.e<ComicDetailBean> a(@q("id") String str, @s HashMap<String, String> hashMap);

    @l.o0.f("/v1/combine/animat/index")
    m.e<AnimateHomeType> b(@s HashMap<String, String> hashMap);

    @l.o0.f("/v1/search/tag")
    m.e<HotSearch> c();

    @l.o0.f("/v1/search/fiction")
    m.e<NovelHomeType> d(@s HashMap<String, String> hashMap);

    @l.o0.f("/v1/combine/fiction/index")
    m.e<NovelHomeType> e();

    @l.o0.f("/v2/comic/read")
    m.e<ReadBean> f(@s HashMap<String, String> hashMap);

    @l.o0.f("/v2/search/comic")
    m.e<ComicHomeType> g(@s HashMap<String, String> hashMap);

    @l.o0.f("/v2/comic/{type}")
    m.e<ComicHomeType> h(@q("type") String str, @s HashMap<String, String> hashMap);

    @l.o0.f("/v2/combine/comic/index")
    m.e<ComicHomeType> i(@s HashMap<String, String> hashMap);

    @l.o0.f("/v1/fiction/{type}")
    m.e<NovelHomeType> j(@q("type") String str, @s HashMap<String, String> hashMap);
}
