package f.e.a.j.w.g;

import com.comeback.data.ui.km.bean.KMInfo;
import com.comeback.data.ui.km.bean.KMVideoList;
import com.comeback.data.ui.km.bean.PicList;
import java.util.Map;
import l.o0.e;
import l.o0.m;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/api/videos/listAll")
    m.e<KMVideoList> a(@l.o0.d Map<String, String> map);

    @e
    @m("/api/videos/listHot")
    m.e<KMVideoList> b(@l.o0.d Map<String, String> map);

    @e
    @m("http://119.28.65.192:8090/api/photos/listAll")
    m.e<PicList> c(@l.o0.d Map<String, String> map);

    @e
    @m("/api/system/getInfo")
    m.e<KMInfo> d(@l.o0.d Map<String, String> map);

    @e
    @m("/api/users/getUserInfo")
    m.e<KMVideoList> e(@l.o0.d Map<String, String> map);
}
