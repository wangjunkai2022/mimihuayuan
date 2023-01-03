package f.e.a.j.x.j;

import com.comeback.data.ui.km2.bean.AreaBean;
import com.comeback.data.ui.km2.bean.KMVideoList;
import com.comeback.data.ui.km2.bean.MMInfo;
import com.comeback.data.ui.km2.bean.MMList;
import com.comeback.data.ui.km2.bean.VideoInfo;
import java.util.Map;
import l.o0.d;
import l.o0.e;
import l.o0.m;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface b {
    @e
    @m("/api/video/index")
    m.e<KMVideoList> b(@d Map<String, String> map);

    @e
    @m("/api/brothel/info")
    m.e<MMInfo> c(@d Map<String, String> map);

    @e
    @m("/api/brothel/index")
    m.e<MMList> d(@d Map<String, String> map);

    @e
    @m("/api/video/info")
    m.e<VideoInfo> e(@d Map<String, String> map);

    @e
    @m("/api/area/index")
    m.e<AreaBean> f(@d Map<String, String> map);
}
