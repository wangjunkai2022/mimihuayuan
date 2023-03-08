package f.e.a.j.w.h;

import com.comeback.data.ui.jhlf.bean.MMList;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import java.util.ArrayList;
import l.o0.f;
import l.o0.r;
import m.e;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/index/search")
    e<ArrayList<MMList.DataEntity>> a(@r("page") int i2, @r("source") String str, @r("key") String str2);

    @f("/index/list")
    e<MMList> b(@r("page") int i2, @r("city") String str, @r("id") String str2);

    @f("/index/getWebsite")
    e<WebSiteBean> c();

    @f("/index/search")
    e<ArrayList<MMList.DataEntity>> d(@r("page") int i2, @r("key") String str);
}
