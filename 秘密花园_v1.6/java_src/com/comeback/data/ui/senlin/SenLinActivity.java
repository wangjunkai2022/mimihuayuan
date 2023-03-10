package com.comeback.data.ui.senlin;

import android.content.Context;
import android.text.TextUtils;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.senlin.adapter.VMovieItemAdapter;
import com.comeback.data.ui.senlin.adapter.VSearchAdapter;
import com.comeback.data.ui.senlin.adapter.VTitleAdapter;
import com.comeback.data.ui.senlin.adapter.VTypeItemAdapter;
import com.comeback.data.ui.senlin.bean.SenlinList;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.i;
import f.e.a.e;
import f.e.a.j.j0.b;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SenLinActivity extends BaseVRefreshActivity {

    /* renamed from: h  reason: collision with root package name */
    public static String f1896h = "";

    /* renamed from: e  reason: collision with root package name */
    public boolean f1897e;

    /* renamed from: f  reason: collision with root package name */
    public SenlinList.ClassEntity f1898f;

    /* renamed from: g  reason: collision with root package name */
    public String f1899g;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<SenlinList> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f1900f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f1900f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            String str;
            SenlinList senlinList = (SenlinList) obj;
            if (this.f1900f == 1) {
                SenLinActivity.this.r();
                SenLinActivity.this.f1897e = false;
            }
            SenLinActivity senLinActivity = SenLinActivity.this;
            if (!senLinActivity.f1897e) {
                senLinActivity.f119d.b(new VSearchAdapter(senLinActivity, "", new c(), new f.e.a.j.j0.a(senLinActivity)));
                g gVar = new g(5);
                gVar.D(5);
                gVar.C(5);
                gVar.s = false;
                senLinActivity.f119d.b(new VTypeItemAdapter(senLinActivity, senlinList.getcClass(), gVar, new b(senLinActivity)));
                c cVar = new c();
                if (TextUtils.isEmpty(senLinActivity.f1899g)) {
                    SenlinList.ClassEntity classEntity = senLinActivity.f1898f;
                    str = classEntity == null ? e.a("0f7jjNTi36jHgKLX") : classEntity.getType_name();
                } else {
                    str = senLinActivity.f1899g;
                }
                senLinActivity.f119d.b(new VTitleAdapter(senLinActivity, str, cVar));
                senLinActivity.f1897e = true;
            }
            senLinActivity.f119d.b(new VMovieItemAdapter(senLinActivity, senlinList.getList(), new i()));
        }
    }

    public static void v(Context context) {
        f.b.a.a.a.u(context, SenLinActivity.class);
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        synchronized (f.e.a.j.j0.f.b.class) {
            f.e.a.j.j0.f.b.b = null;
        }
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        f.e.a.j.j0.f.a a2 = f.e.a.j.j0.f.b.a();
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put(f.b.a.a.a.i("WwsQEA==", hashMap, e.a("VgE="), "RwU="), String.valueOf(this.b));
        if (TextUtils.isEmpty(this.f1899g)) {
            if (this.f1898f != null) {
                hashMap.put(e.a("Qw=="), String.valueOf(this.f1898f.getType_id()));
            }
        } else {
            hashMap.put(e.a("QAY="), this.f1899g);
        }
        k(a2.b(hashMap), new a(i2));
    }
}
