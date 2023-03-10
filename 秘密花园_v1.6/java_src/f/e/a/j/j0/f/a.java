package f.e.a.j.j0.f;

import com.comeback.data.ui.senlin.bean.SenlinDetail;
import com.comeback.data.ui.senlin.bean.SenlinList;
import java.util.HashMap;
import l.o0.f;
import l.o0.s;
import m.e;
/* compiled from: ApiService.java */
/* loaded from: classes.dex */
public interface a {
    @f("/api.php/provide/vod/")
    e<SenlinDetail> a(@s HashMap<String, String> hashMap);

    @f("/api.php/provide/vod/")
    e<SenlinList> b(@s HashMap<String, String> hashMap);
}
