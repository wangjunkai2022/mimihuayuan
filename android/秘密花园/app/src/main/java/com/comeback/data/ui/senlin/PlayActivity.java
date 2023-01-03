package com.comeback.data.ui.senlin;

import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.senlin.bean.SenlinDetail;
import f.e.a.e;
import f.e.a.j.i0.f.b;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity {

    /* loaded from: classes.dex */
    public class a extends j<SenlinDetail> {
        public a() {
        }

        @Override // m.j
        public void d() {
        }

        @Override // m.j
        public void e(Throwable th) {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // m.j
        public void f(SenlinDetail senlinDetail) {
            PlayActivity.this.m(senlinDetail.getList().get(0).getVod_play_url());
        }
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        f.e.a.j.i0.f.a a2 = b.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("UwcXBQIf", hashMap, e.a("VgE="), "XgYQ"), this.b);
        k(a2.a(hashMap), new a());
    }
}
