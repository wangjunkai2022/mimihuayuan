package f.e.a.j.h0;

import com.comeback.data.ui.hgl.bean.ChannelList;
import com.comeback.data.ui.hgl.bean.ListBean;
import com.comeback.data.ui.hgl.bean.RoomList;
import com.comeback.data.ui.live.bean.LiveChannel;
import com.comeback.data.ui.live.bean.LiveRoomList;
import i.i0;
import l.d;
import l.o0.c;
import l.o0.f;
import l.o0.i;
import l.o0.m;
import l.o0.q;
import l.o0.v;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("http://api.vipmisss.com:81/xcdsw/{name}")
    e<RoomList> a(@q("name") String str);

    @f
    d<i0> b(@v String str, @i("Cookie") String str2, @i("user-agent") String str3);

    @f
    d<i0> c(@v String str);

    @f
    d<i0> d(@v String str, @i("code") int i2);

    @f("http://api.maiyoux.com:81/mf/json.txt")
    e<ChannelList> e();

    @f("http://l.lzpeng.com/api/public/?service=Home.getHot")
    e<ListBean> f();

    @f("http://api.maiyoux.com:81/mf/{name}")
    e<RoomList> g(@q("name") String str);

    @l.o0.e
    @m("http://xiuxiuba.vip:82/mobile/live/index")
    e<LiveChannel> h(@c("id") String str);

    @l.o0.e
    @m("http://xiuxiuba.vip:82/mobile/live/anchors")
    e<LiveRoomList> i(@i("token") String str, @c("id") String str2, @c("name") String str3);

    @f
    d<i0> j(@v String str, @i("Cookie") String str2);

    @f("http://api.vipmisss.com:81/xcdsw/json.txt")
    e<ChannelList> k();
}
