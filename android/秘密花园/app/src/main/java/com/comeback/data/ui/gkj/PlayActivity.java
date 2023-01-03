package com.comeback.data.ui.gkj;

import android.content.Intent;
import android.text.TextUtils;
import com.comeback.data.base.BasePlayByIdActivity;
import com.comeback.data.ui.gkj.bean.AnimeRead;
import f.e.a.e;
import f.e.a.j.m.p.c;
import java.util.HashMap;
import m.j;

/* loaded from: classes.dex */
public class PlayActivity extends BasePlayByIdActivity {

    /* renamed from: d  reason: collision with root package name */
    public String f882d;

    /* loaded from: classes.dex */
    public class a extends j<AnimeRead> {
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
        public void f(AnimeRead animeRead) {
            AnimeRead animeRead2 = animeRead;
            if (!TextUtils.isEmpty(animeRead2.getPlay_url())) {
                PlayActivity.this.m(animeRead2.getPlay_url());
            }
        }
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity, com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        super.c(intent);
        this.f882d = intent.getStringExtra(e.a("RQcQCx4BWlY6Ag=="));
    }

    @Override // com.comeback.data.base.BasePlayByIdActivity
    public void l(String str) {
        c b = f.e.a.j.m.p.e.b();
        String str2 = this.f882d;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(e.a("VA0ODQgsUFc="), str);
        hashMap.put(e.a("VA0ODQgsS1YACUEVGw88AlM="), str2);
        hashMap.put(f.b.a.a.a.i("BlJTVFs=", hashMap, f.b.a.a.a.i("Bg==", hashMap, f.b.a.a.a.i("VgwKCQ4=", hashMap, e.a("UA4MBgofZkcKFlE="), "XgwHARM="), "WwsODR8="), "RwMEAQ=="), e.a("Bg=="));
        k(b.m(hashMap), new a());
    }
}
