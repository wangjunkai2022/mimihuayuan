package f.e.a.j.j.m;

import com.comeback.data.ui.fengliu.bean.MMInfo;
import com.comeback.data.ui.fengliu.bean.MMInfo2;
import com.comeback.data.ui.fengliu.bean.MMList;
import com.comeback.data.ui.fengliu.bean.MMList2;
import java.util.ArrayList;
import java.util.HashMap;
import l.o0.f;
import l.o0.r;
import l.o0.s;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/")
    m.e<MMInfo> a(@r("id") String str);

    @f("/api/info/list")
    m.e<MMList> b(@s HashMap<String, String> hashMap);

    @f("/api/web/info/page.json")
    m.e<MMList2> c(@s HashMap<String, String> hashMap);

    @f("/")
    m.e<ArrayList<MMInfo2>> d(@r("city") String str, @r("page") int i2);
}
