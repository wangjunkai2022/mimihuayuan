package f.e.a.j.d0.d;

import com.comeback.data.ui.md.bean.ChanelList;
import com.comeback.data.ui.md.bean.MdApiBean;
import com.comeback.data.ui.md.bean.SearchBean;
import com.comeback.data.ui.md.bean.VideoList;
import java.util.Map;
import l.o0.d;
import l.o0.e;
import l.o0.f;
import l.o0.m;
import l.o0.v;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @e
    @m("/video/list")
    m.e<SearchBean> a(@d Map<String, String> map);

    @f
    m.e<VideoList> b(@v String str);

    @e
    @m("/video/channel")
    m.e<ChanelList> c(@d Map<String, String> map);

    @e
    @m("/video/listcache")
    m.e<MdApiBean> d(@d Map<String, String> map);
}
