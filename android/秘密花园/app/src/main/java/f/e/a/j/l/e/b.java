package f.e.a.j.l.e;

import com.comeback.data.ui.gdian.bean.ChapterList;
import com.comeback.data.ui.gdian.bean.Image;
import com.comeback.data.ui.gdian.bean.ImageList;
import com.comeback.data.ui.gdian.bean.LiveList;
import com.comeback.data.ui.gdian.bean.Novel;
import com.comeback.data.ui.gdian.bean.NovelList;
import com.comeback.data.ui.gdian.bean.Play;
import com.comeback.data.ui.gdian.bean.VideoList;
import java.util.HashMap;
import l.o0.c;
import l.o0.d;
import l.o0.f;
import l.o0.m;
import l.o0.q;
import l.o0.r;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @f("/apiv2/video/{id}")
    e<Play> a(@q("id") String str);

    @f("/apiv2/album/{id}")
    e<Image> b(@q("id") String str);

    @f("/apiv2/video/search")
    e<VideoList> c(@r("is_av") int i2, @r("sort") String str, @r("num") int i3, @r("page") int i4, @r("keyword") String str2);

    @f("/apiv2/fiction/search")
    e<NovelList> d(@r("sort") String str, @r("num") int i2, @r("page") int i3, @r("keyword") String str2);

    @f("/apiv2/external-liverooms")
    e<LiveList> e(@r("num") int i2, @r("page") int i3);

    @l.o0.e
    @m("/api/Webapi_v1/Resource/chapterInfo")
    e<Novel> f(@c("chapter_id") String str);

    @l.o0.e
    @m("/api/Webapi_v1/Resource/chapterList")
    e<ChapterList> g(@d HashMap<String, String> hashMap);

    @f("/apiv2/album/search")
    e<ImageList> h(@r("sort") String str, @r("num") int i2, @r("page") int i3, @r("keyword") String str2);
}
