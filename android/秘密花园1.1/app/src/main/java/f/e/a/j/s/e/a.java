package f.e.a.j.s.e;

import com.comeback.data.ui.iqiyi.bean.AppInfo;
import com.comeback.data.ui.iqiyi.bean.Category;
import com.comeback.data.ui.iqiyi.bean.Special;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import java.util.ArrayList;
import l.o0.e;
import l.o0.m;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/bigapi/video/detail")
    m.e<VideoInfo> a(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/material/detail")
    m.e<ArrayList<VideoInfo>> b(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/video/search")
    m.e<ArrayList<VideoInfo>> c(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/special/list")
    m.e<ArrayList<Special>> d(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/material/category")
    m.e<ArrayList<Category>> e(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/video/search")
    m.e<ArrayList<VideoInfo>> f(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/app/info")
    m.e<AppInfo> g(@l.o0.c("_data") String str);

    @e
    @m("/bigapi/video/love")
    m.e<ArrayList<VideoInfo>> h(@l.o0.c("_data") String str);
}
