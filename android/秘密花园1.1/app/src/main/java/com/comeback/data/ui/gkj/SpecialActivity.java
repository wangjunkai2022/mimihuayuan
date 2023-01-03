package com.comeback.data.ui.gkj;

import android.content.Context;
import android.content.Intent;
import com.comeback.data.base.BaseRefreshActivity;
import com.comeback.data.base.BaseVRefreshActivity;
import com.comeback.data.ui.gkj.adapter.NComic2Adapter;
import com.comeback.data.ui.gkj.adapter.NComic3Adapter;
import com.comeback.data.ui.gkj.adapter.NVideo2Adapter;
import com.comeback.data.ui.gkj.adapter.NVideo3Adapter;
import com.comeback.data.ui.gkj.bean.SpecialBean;
import f.a.a.a.l.g;
import f.e.a.e;

/* loaded from: classes.dex */
public class SpecialActivity extends BaseVRefreshActivity {

    /* renamed from: e  reason: collision with root package name */
    public int f900e;

    /* renamed from: f  reason: collision with root package name */
    public int f901f;

    /* renamed from: g  reason: collision with root package name */
    public int f902g;

    /* loaded from: classes.dex */
    public class a extends BaseRefreshActivity.a<SpecialBean> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f903f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f903f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            SpecialBean specialBean = (SpecialBean) obj;
            if (this.f903f == 1) {
                SpecialActivity.this.r();
            }
            SpecialActivity specialActivity = SpecialActivity.this;
            int i2 = specialActivity.f902g;
            if (i2 == 4) {
                g m2 = f.b.a.a.a.m(2, 5, 5);
                m2.s = true;
                int i3 = specialActivity.f901f;
                if (i3 == 3) {
                    specialActivity.f119d.b(new NComic2Adapter(specialActivity, specialBean.getData(), m2));
                } else if (i3 == 1) {
                    specialActivity.f119d.b(new NVideo2Adapter(specialActivity, specialBean.getData(), m2));
                }
            } else if (i2 == 3) {
                g m3 = f.b.a.a.a.m(3, 5, 5);
                m3.s = true;
                int i4 = specialActivity.f901f;
                if (i4 == 3) {
                    specialActivity.f119d.b(new NComic3Adapter(specialActivity, specialBean.getData(), m3));
                } else if (i4 == 1) {
                    specialActivity.f119d.b(new NVideo3Adapter(specialActivity, specialBean.getData(), m3));
                }
            }
        }
    }

    public static void v(Context context, int i2, String str, int i3, int i4) {
        Intent intent = new Intent(context, SpecialActivity.class);
        intent.putExtra(e.a("XgY="), i2);
        intent.putExtra(e.a("RBIGBwISVX0SC1E="), str);
        intent.putExtra(e.a("QxsTAQ=="), i3);
        intent.putExtra(e.a("RBYaCA4="), i4);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        intent.getStringExtra(e.a("RBIGBwISVX0SC1E="));
        this.f900e = intent.getIntExtra(e.a("XgY="), 0);
        this.f901f = intent.getIntExtra(e.a("QxsTAQ=="), 0);
        this.f902g = intent.getIntExtra(e.a("RBYaCA4="), 0);
    }

    @Override // com.comeback.data.base.BaseVRefreshActivity, com.comeback.data.base.BaseRefreshActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseRefreshActivity
    public void p(int i2) {
        k(f.e.a.j.m.p.e.b().k(this.f900e, i2 - 1, 20), new a(i2));
    }
}
