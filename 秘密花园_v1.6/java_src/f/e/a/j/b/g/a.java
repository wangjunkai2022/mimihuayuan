package f.e.a.j.b.g;

import com.comeback.data.ui.avbobo.bean.ChannelId;
import com.comeback.data.ui.avbobo.bean.ChannelList;
import com.comeback.data.ui.avbobo.bean.LoginInfo;
import com.comeback.data.ui.avbobo.bean.MovieDetail;
import com.comeback.data.ui.avbobo.bean.MovieList;
import com.comeback.data.ui.avbobo.bean.RankHotSearch;
import com.comeback.data.ui.avbobo.bean.RankVideoList;
import i.g0;
import java.util.HashMap;
import l.o0.f;
import l.o0.m;
import l.o0.q;
import l.o0.r;
import l.o0.s;
import m.e;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/s2/gw/res-bobo/bo/v2/api/hot_search")
    e<RankHotSearch> a();

    @f("/s2/gw/res-bobo/bo/v2/api/app_resources_recommend/{id}")
    e<MovieList> b(@q("id") String str);

    @f("/s2/gw/res-bobo/bo/v2/api/rank_boards/{type}")
    e<RankVideoList> c(@q("type") String str, @r("limit") int i2, @r("page") int i3);

    @f("/s2/gw/res-bobo/bo/v1/api/app_resources/{id}")
    e<MovieDetail> d(@q("id") String str);

    @f("/s2/gw/res-bobo/bo/v2/api/play/{lineVersion}/{id}/{sharpness}/{line_id}")
    e<HashMap<String, String>> e(@q("lineVersion") String str, @q("id") String str2, @q("sharpness") String str3, @q("line_id") String str4);

    @f("/s2/gw/res-bobo/bo/v1/api/query_groups")
    e<ChannelList> f(@s HashMap<String, String> hashMap);

    @f("/s2/gw/res-bobo/bo/v1/api/channel/{id}/view")
    e<ChannelId> g(@q("id") String str);

    @m("/s2/gw/user-server/web/login")
    e<LoginInfo> h(@l.o0.a g0 g0Var);

    @f("/s2/gw/res-bobo/bo/v1/api/app_resources")
    e<MovieList> i(@s HashMap<String, String> hashMap);
}
