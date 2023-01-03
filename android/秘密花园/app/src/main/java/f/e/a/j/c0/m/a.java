package f.e.a.j.c0.m;

import com.comeback.data.ui.maomi.bean.AnchorList;
import com.comeback.data.ui.maomi.bean.Cartoon;
import com.comeback.data.ui.maomi.bean.CartoonDetail;
import com.comeback.data.ui.maomi.bean.CartoonWatch;
import com.comeback.data.ui.maomi.bean.HomeData;
import com.comeback.data.ui.maomi.bean.HotWords;
import com.comeback.data.ui.maomi.bean.NovelList;
import com.comeback.data.ui.maomi.bean.SearchResult;
import com.comeback.data.ui.maomi.bean.ShortOriginal;
import com.comeback.data.ui.maomi.bean.SpecialList;
import com.comeback.data.ui.maomi.bean.VideoDetail;
import com.comeback.data.ui.maomi.bean.VoiceDetail;
import com.comeback.data.ui.maomi.bean.VoiceDetailList;
import com.comeback.data.ui.maomi.bean.VoiceList;
import l.o0.f;
import l.o0.q;
import l.o0.r;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/api/video/detail")
    e<VideoDetail> a(@r("params") String str);

    @f("/api/comic/lists")
    e<CartoonDetail> b(@r("params") String str);

    @f("/api/special/video")
    e<SearchResult> c(@r("params") String str);

    @f("/api/book/detail")
    e<VoiceDetail> d(@r("params") String str);

    @f("/api/book/{type}")
    e<VoiceList> e(@q("type") String str, @r("params") String str2);

    @f("/api/anchor/voice")
    e<VoiceDetailList> f(@r("params") String str);

    @f("/api/comic/{type}")
    e<Cartoon> g(@q("type") String str, @r("params") String str2);

    @f("/api/comic/popular")
    e<Cartoon> h(@r("params") String str);

    @f("/api/anchor/index")
    e<AnchorList> i();

    @f("/api/v2/video/index")
    e<HomeData> j();

    @f("/api/other/search_keyword")
    e<HotWords> k(@r("params") String str);

    @f("/api/v2/original/index")
    e<ShortOriginal> l(@r("params") String str);

    @f("/api/anchor/special")
    e<VoiceDetailList> m(@r("params") String str);

    @f("/api/video/search")
    e<SearchResult> n(@r("params") String str);

    @f("/api/v2/novels/index")
    e<NovelList> o(@r("params") String str);

    @f("/api/anchor/voice")
    e<VoiceDetailList> p(@r("params") String str);

    @f("/api/v2/special/more")
    e<SpecialList> q();

    @f("/api/comic/watch")
    e<CartoonWatch> r(@r("params") String str);
}
