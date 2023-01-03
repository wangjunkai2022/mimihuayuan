package f.e.a.j.s.e;

import com.comeback.data.ui.iqiyi.bean.AppInfo;
import com.comeback.data.ui.iqiyi.bean.Category;
import com.comeback.data.ui.iqiyi.bean.Special;
import com.comeback.data.ui.iqiyi.bean.VideoInfo;
import java.util.ArrayList;
import l.o0.c;
import l.o0.e;
import l.o0.m;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/bigapi/video/detail")
    m.e<VideoInfo> a(@c("_data") String str);

    @e
    @m("/bigapi/material/detail")
    m.e<ArrayList<VideoInfo>> b(@c("_data") String str);

    @e
    @m("/bigapi/video/search")
    m.e<ArrayList<VideoInfo>> c(@c("_data") String str);

    @e
    @m("/bigapi/special/list")
    m.e<ArrayList<Special>> d(@c("_data") String str);

    @e
    @m("/bigapi/material/category")
    m.e<ArrayList<Category>> e(@c("_data") String str);

    @e
    @m("/bigapi/video/search")
    m.e<ArrayList<VideoInfo>> f(@c("_data") String str);

    @e
    @m("/bigapi/app/info")
    m.e<AppInfo> g(@c("_data") String str);

    @e
    @m("/bigapi/video/love")
    m.e<ArrayList<VideoInfo>> h(@c("_data") String str);
}
