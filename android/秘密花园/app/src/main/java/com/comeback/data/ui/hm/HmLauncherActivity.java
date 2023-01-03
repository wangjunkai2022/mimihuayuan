package com.comeback.data.ui.hm;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import butterknife.BindView;
import butterknife.OnClick;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.hm.bean.Host;
import com.comeback.secret.garden.R;
import f.b.a.a.a;
import f.e.a.e;
import f.e.a.j.h0.c;
import i.i0;
import java.util.ArrayList;
import java.util.Iterator;
import l.d;

/* loaded from: classes.dex */
public class HmLauncherActivity extends BaseActivity {

    /* renamed from: d  reason: collision with root package name */
    public static String[] f1037d = {e.a("XxYXFBhJFhwCFVcfAFtNCFgPTA=="), e.a("XxYXFBhJFhwCFVcfAFhNCFgPTA=="), e.a("XxYXFBhJFhwCFVcfAFlNCFgPTA=="), e.a("XxYXFBhJFhwCFVcfAEQXBEdN")};
    public ArrayList<d<i0>> b;

    /* renamed from: c  reason: collision with root package name */
    public Host f1038c;
    @BindView
    public FrameLayout flLoad;

    public static void m(Context context) {
        a.u(context, HmLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_hm_launch;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        String[] strArr = f1037d;
        this.b = new ArrayList<>();
        for (String str : strArr) {
            d<i0> c2 = c.a().c(str);
            this.b.add(c2);
            c2.X(new f.e.a.j.q.e(this));
        }
    }

    public final void l() {
        Iterator<d<i0>> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    @OnClick
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_hm1 /* 2131296957 */:
                Host host = this.f1038c;
                if (!(host == null || host.getHm() == null || this.f1038c.getHm().size() == 0)) {
                    f.e.a.j.q.f.a.a = this.f1038c.getHm().get(0);
                    break;
                }
                break;
            case R.id.tv_hm2 /* 2131296958 */:
                Host host2 = this.f1038c;
                if (!(host2 == null || host2.getHm() == null || this.f1038c.getHm().size() <= 1)) {
                    f.e.a.j.q.f.a.a = this.f1038c.getHm().get(1);
                    break;
                }
                break;
            case R.id.tv_novel1 /* 2131296999 */:
                Host host3 = this.f1038c;
                if (!(host3 == null || host3.getNovel() == null || this.f1038c.getNovel().size() == 0)) {
                    f.e.a.j.q.f.a.b = this.f1038c.getNovel().get(0);
                    break;
                }
                break;
            case R.id.tv_novel2 /* 2131297000 */:
                Host host4 = this.f1038c;
                if (!(host4 == null || host4.getNovel() == null || this.f1038c.getNovel().size() <= 1)) {
                    f.e.a.j.q.f.a.b = this.f1038c.getNovel().get(1);
                    break;
                }
                break;
        }
        MainActivity.m(this);
        finish();
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        l();
    }
}
