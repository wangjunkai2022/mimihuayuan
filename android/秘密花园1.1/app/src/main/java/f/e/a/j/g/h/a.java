package f.e.a.j.g.h;

import com.comeback.data.ui.cucumber.bean.ActorList;
import com.comeback.data.ui.cucumber.bean.Column;
import com.comeback.data.ui.cucumber.bean.ColumnDetail;
import com.comeback.data.ui.cucumber.bean.DefaultChannel;
import com.comeback.data.ui.cucumber.bean.DoMainInfo;
import com.comeback.data.ui.cucumber.bean.NvshenBean;
import com.comeback.data.ui.cucumber.bean.SelectionQuery;
import com.comeback.data.ui.cucumber.bean.StarWork;
import com.comeback.data.ui.cucumber.bean.TopStar;
import com.comeback.data.ui.cucumber.bean.UserDetail;
import com.comeback.data.ui.cucumber.bean.VideoList;
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
    @f("/es/mov/search")
    e<VideoList> a(@s HashMap<String, String> hashMap);

    @f("/home/actor/list")
    e<ActorList> b(@s HashMap<String, String> hashMap);

    @f("/domain/list")
    e<DoMainInfo> c();

    @f("shortvideo/listOrderBy{order}")
    e<VideoList> d(@q("order") String str, @r("pageNo") int i2);

    @f("/actor/movie/list")
    e<VideoList> e(@s HashMap<String, String> hashMap);

    @f("/movUser/queryMyUpMovGifList")
    e<VideoList> f(@s HashMap<String, String> hashMap);

    @f("/user/otherUserinfo")
    e<UserDetail> g(@r("inviteCode") String str);

    @f("/es/mov/similar")
    e<VideoList> h(@r("movId") int i2);

    @f("/home/actor/list/newtop4")
    e<TopStar> i();

    @f("/wonderful/square/detail")
    e<NvshenBean> j(@r("id") String str);

    @f("/home/selection/query2")
    e<SelectionQuery> k(@r("moduleId") int i2);

    @f("/home/defaultchannels")
    e<DefaultChannel> l();

    @f("/module/list")
    e<Column> m();

    @f("/home/actor/detail")
    e<ActorList> n(@r("id") int i2);

    @m("/module/movlist2")
    e<VideoList> o(@s HashMap<String, String> hashMap, @l.o0.a HashMap hashMap2);

    @f("/mov/browse2")
    e<VideoList> p(@r("movId") int i2);

    @f("/shortvideo/forward")
    e<VideoList> q();

    @f("/ranking/{key}")
    e<VideoList> r(@q("key") String str, @s HashMap<String, String> hashMap);

    @f("/home/selection/query")
    e<SelectionQuery> s();

    @f("/movie/actor/list")
    e<StarWork> t(@r("movieId") int i2);

    @f("/ranking/actors")
    e<ActorList> u(@s HashMap<String, String> hashMap);

    @f("/module/nav")
    e<ColumnDetail> v(@r("navId") int i2);

    @m("/home/movlist")
    e<VideoList> w(@s HashMap<String, String> hashMap, @l.o0.a HashMap<String, String> hashMap2);

    @f("/shortvideo/nvshen/certification")
    e<VideoList> x();
}
