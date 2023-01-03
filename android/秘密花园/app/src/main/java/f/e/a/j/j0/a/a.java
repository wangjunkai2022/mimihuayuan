package f.e.a.j.j0.a;

import com.comeback.data.ui.sex8.bean.LouFengDetail;
import com.comeback.data.ui.sex8.bean.LouFengList;
import com.comeback.data.ui.sex8.bean.YXHostList;
import com.comeback.data.ui.sex8.bean.YXNovelDetail;
import com.comeback.data.ui.sex8.bean.YXNovelList;
import java.util.Map;
import l.o0.c;
import l.o0.d;
import l.o0.e;
import l.o0.m;
import l.o0.r;

/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @e
    @m("/apiv286.php")
    m.e<LouFengList> a(@d Map<String, String> map, @r("0") long j2);

    @e
    @m("/apiv286.php")
    m.e<LouFengDetail> b(@d Map<String, String> map, @r("0") long j2);

    @e
    @m("http://radioluntan.space/apiv286.php")
    m.e<YXNovelDetail> c(@c("request") String str, @r("0") long j2);

    @e
    @m("http://radioluntan.space/apiv286.php")
    m.e<YXNovelList> d(@c("request") String str, @r("0") long j2);

    @e
    @m("http://radioluntan.space/apiv286.php")
    m.e<YXHostList> e(@c("request") String str, @r("0") long j2);
}
