package f.e.a.j.e0.d;

import com.comeback.data.ui.md.bean.ChanelList;
import com.comeback.data.ui.md.bean.MdApiBean;
import com.comeback.data.ui.md.bean.SearchBean;
import com.comeback.data.ui.md.bean.VideoList;
import java.util.Map;
import l.o0.f;
import l.o0.m;
import l.o0.v;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @l.o0.e
    @m("/video/list")
    m.e<SearchBean> a(@l.o0.d Map<String, String> map);

    @f
    m.e<VideoList> b(@v String str);

    @l.o0.e
    @m("/video/channel")
    m.e<ChanelList> c(@l.o0.d Map<String, String> map);

    @l.o0.e
    @m("/video/listcache")
    m.e<MdApiBean> d(@l.o0.d Map<String, String> map);
}
