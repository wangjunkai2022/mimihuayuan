package f.e.a.j.k.b;

import com.comeback.data.ui.fruitPie.bean.AuthorList;
import com.comeback.data.ui.fruitPie.bean.ColumnList;
import com.comeback.data.ui.fruitPie.bean.DiscoverBean;
import com.comeback.data.ui.fruitPie.bean.FilmInfo;
import com.comeback.data.ui.fruitPie.bean.IdDetail;
import com.comeback.data.ui.fruitPie.bean.SearchResult;
import com.comeback.data.ui.fruitPie.bean.VideoList;
import java.util.HashMap;
import l.o0.m;
import l.o0.q;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @m("/v1_2/articleSearch")
    e<SearchResult> a(@l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/homePage")
    e<VideoList> b(@l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/libraryDetail")
    e<IdDetail> c(@l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/{type}")
    e<VideoList> d(@q("type") String str, @l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/columnistList")
    e<ColumnList> e(@l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/anchorsList")
    e<AuthorList> f(@l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/find")
    e<DiscoverBean> g(@l.o0.a HashMap<String, String> hashMap);

    @m("/v1_2/filmInfo")
    e<FilmInfo> h(@l.o0.a HashMap<String, String> hashMap);
}
