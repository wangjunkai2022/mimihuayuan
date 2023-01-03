package f.e.a.j.t.e;

import com.comeback.data.ui.isiyu.bean.HomeList;
import com.comeback.data.ui.isiyu.bean.HomeType;
import com.comeback.data.ui.isiyu.bean.SearchTag;
import com.comeback.data.ui.isiyu.bean.SpecialDetail;
import com.comeback.data.ui.isiyu.bean.SpecialList;
import com.comeback.data.ui.isiyu.bean.UserInfo;
import com.comeback.data.ui.isiyu.bean.Video;
import java.util.ArrayList;
import java.util.HashMap;
import l.o0.d;
import l.o0.e;
import l.o0.f;
import l.o0.m;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @e
    @m("/api/video/list")
    m.e<SpecialDetail> a(@d HashMap<String, String> hashMap);

    @e
    @m("/api/video/guess-like")
    m.e<SpecialDetail> b(@d HashMap<String, String> hashMap);

    @e
    @m("/api/video/list")
    m.e<SpecialDetail> c(@d HashMap<String, String> hashMap);

    @e
    @m("/api/video/video-ad-list")
    m.e<HomeList> d(@d HashMap<String, String> hashMap);

    @f("/api/video/type-list")
    m.e<ArrayList<HomeType>> e();

    @e
    @m("/api/video/info")
    m.e<Video> f(@d HashMap<String, String> hashMap);

    @f("/api/video/search-tag")
    m.e<ArrayList<SearchTag>> g();

    @f("/api/user/info")
    m.e<UserInfo> h();

    @e
    @m("/api/video/special-list")
    m.e<SpecialList> i(@d HashMap<String, String> hashMap);
}
