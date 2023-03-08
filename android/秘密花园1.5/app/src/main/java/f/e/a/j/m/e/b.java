package f.e.a.j.m.e;

import com.comeback.data.ui.gdian.bean.ChapterList;
import com.comeback.data.ui.gdian.bean.Image;
import com.comeback.data.ui.gdian.bean.ImageList;
import com.comeback.data.ui.gdian.bean.LiveList;
import com.comeback.data.ui.gdian.bean.Novel;
import com.comeback.data.ui.gdian.bean.NovelList;
import com.comeback.data.ui.gdian.bean.Play;
import com.comeback.data.ui.gdian.bean.VideoList;
import java.util.HashMap;
import l.o0.f;
import l.o0.m;
import l.o0.q;
import l.o0.r;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @f("/apiv2/video/{id}")
    m.e<Play> a(@q("id") String str);

    @f("/apiv2/album/{id}")
    m.e<Image> b(@q("id") String str);

    @f("/apiv2/video/search")
    m.e<VideoList> c(@r("is_av") int i2, @r("sort") String str, @r("num") int i3, @r("page") int i4, @r("keyword") String str2);

    @f("/apiv2/fiction/search")
    m.e<NovelList> d(@r("sort") String str, @r("num") int i2, @r("page") int i3, @r("keyword") String str2);

    @f("/apiv2/external-liverooms")
    m.e<LiveList> e(@r("num") int i2, @r("page") int i3);

    @l.o0.e
    @m("/api/Webapi_v1/Resource/chapterInfo")
    m.e<Novel> f(@l.o0.c("chapter_id") String str);

    @l.o0.e
    @m("/api/Webapi_v1/Resource/chapterList")
    m.e<ChapterList> g(@l.o0.d HashMap<String, String> hashMap);

    @f("/apiv2/album/search")
    m.e<ImageList> h(@r("sort") String str, @r("num") int i2, @r("page") int i3, @r("keyword") String str2);
}
