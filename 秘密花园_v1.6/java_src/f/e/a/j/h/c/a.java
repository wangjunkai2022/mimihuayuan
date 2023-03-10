package f.e.a.j.h.c;

import com.comeback.data.ui.dn.bean.PlayUrl;
import com.comeback.data.ui.dn.bean.UserList;
import com.comeback.data.ui.dn.bean.VideoList;
import java.util.Map;
import l.o0.f;
import l.o0.r;
import l.o0.s;
import m.e;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("http://www.jiuwei.tv:81/getTxMediaInfo")
    e<PlayUrl> a(@r("videoid") String str);

    @f("/appapi/public/index.php")
    e<UserList> b(@s Map<String, String> map);

    @f("/appapi/public/index.php?service=Video.getVideoList&language=zh-cn&uid=-1")
    e<VideoList> c(@r("p") int i2);

    @f("/appapi/public/index.php?service=Video.getVideoList&language=zh-cn&uid=-1&p=1")
    e<VideoList> d();

    @f("/appapi/public/index.php")
    e<VideoList> e(@s Map<String, String> map);

    @f("/appapi/public/index.php")
    e<VideoList> f(@s Map<String, String> map);
}
