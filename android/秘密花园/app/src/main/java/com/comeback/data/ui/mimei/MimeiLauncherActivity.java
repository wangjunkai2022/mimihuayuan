package com.comeback.data.ui.mimei;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.mimei.bean.HostBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.e0.h;
import f.e.a.j.e0.i;
import f.e.a.j.e0.j.d;
import f.i.b.j;
import i.b0;
import i.d0;
import i.e0;
import i.f;
import i.g;
import i.h0;
import java.io.IOException;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MimeiLauncherActivity extends BaseActivity {

    /* renamed from: c  reason: collision with root package name */
    public b0 f1672c;

    /* renamed from: e  reason: collision with root package name */
    public boolean f1674e;
    @BindView
    public FrameLayout flProgress;
    @BindView
    public RadioGroup radioGroupHost;
    @BindView
    public RadioGroup radioGroupImage;
    @BindView
    public RadioButton radioHost1;
    public RadioGroup.OnCheckedChangeListener b = new a(this);

    /* renamed from: d  reason: collision with root package name */
    public ArrayList<f> f1673d = new ArrayList<>();

    /* loaded from: classes.dex */
    public class a implements RadioGroup.OnCheckedChangeListener {
        public a(MimeiLauncherActivity mimeiLauncherActivity) {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int i2) {
            switch (i2) {
                case R.id.radio_host1 /* 2131296680 */:
                    d.f3854e = e.a("XxYXFBhJFhwSFl1JAQEbAlYNBxFFEFc=");
                    d.b = e.a("Wgs3HgQLfUI1FVsfCw==");
                    d.f3852c = e.a("XxYXFBhJFhwQCVkOG0QaAE8LAgsPBhdQHQ==");
                    break;
                case R.id.radio_host2 /* 2131296681 */:
                    d.f3854e = e.a("XxYXFBhJFhwSFl1JCwIPHxoHBxFFEFc=");
                    d.b = e.a("Wgs3HgQLfUI1FVsfCw==");
                    d.f3852c = e.a("XxYXFBhJFhwQCVkOG0dSWAdQUVxSRwgHXQBdCx1EDhJGAQ8LHhcXUBwL");
                    break;
                case R.id.radio_host3 /* 2131296682 */:
                    d.f3854e = e.a("XxYXFBhJFhxCUwNRSF5UUgRRTVVcHlBeFg8aBBcH");
                    d.b = e.a("Wgs7Iig7fFwgPn5JNQ==");
                    d.f3852c = e.a("XxYXFBhJFhwQCVkOG0RSXFoLDgECXVpcHg==");
                    break;
                case R.id.radio_novel1 /* 2131296692 */:
                    d.f3853d = e.a("XxYXFBhJFhwVD1cTEQUNRVMYCxUYHlodEAg=");
                    break;
                case R.id.radio_novel2 /* 2131296693 */:
                    d.f3853d = e.a("XxYXFBhJFhwVD1cTEQUNRQZVDg0GFlAdEAlZ");
                    break;
            }
            synchronized (f.e.a.j.e0.j.f.class) {
                f.e.a.j.e0.j.f.b = null;
            }
        }
    }

    /* loaded from: classes.dex */
    public class b implements g {
        public final /* synthetic */ int a;

        public b(int i2) {
            this.a = i2;
        }

        @Override // i.g
        public void c(f fVar, h0 h0Var) {
            if (h0Var.f6449e > 300) {
                int i2 = this.a;
                if (i2 < f.e.a.k.b.B.length - 1) {
                    MimeiLauncherActivity.this.o(i2 + 1);
                    return;
                }
                return;
            }
            String str = null;
            try {
                str = h0Var.f6452h.H();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            String b = f.e.a.j.e0.j.b.b(str);
            if (!TextUtils.isEmpty(b) && b.length() > 64) {
                b = b.substring(32, b.length() - 32);
            }
            MimeiLauncherActivity.m(MimeiLauncherActivity.this, (HostBean) new j().d(b, HostBean.class));
        }

        @Override // i.g
        public void d(f fVar, IOException iOException) {
            int i2 = this.a;
            if (i2 < f.e.a.k.b.B.length - 1) {
                MimeiLauncherActivity.this.o(i2 + 1);
            }
        }
    }

    public static void m(MimeiLauncherActivity mimeiLauncherActivity, HostBean hostBean) {
        if (mimeiLauncherActivity != null) {
            if (!(hostBean == null || hostBean.getApi() == null)) {
                Iterator<HostBean.ApiBean> it = hostBean.getApi().iterator();
                while (it.hasNext()) {
                    e0.a aVar = new e0.a();
                    aVar.i(it.next().getUrl() + e.a("GBETAQ4XF1sHC1g="));
                    f a2 = mimeiLauncherActivity.f1672c.a(f.b.a.a.a.s("VA4MFw4=", aVar, e.a("dA0NCg4QTVocCA==")));
                    mimeiLauncherActivity.f1673d.add(a2);
                    ((d0) a2).W(new h(mimeiLauncherActivity));
                }
            }
            if (!(hostBean == null || hostBean.getComic() == null)) {
                List<HostBean.ComicBean> comic = hostBean.getComic();
                Iterator<HostBean.ComicBean> it2 = comic.iterator();
                while (it2.hasNext()) {
                    e0.a aVar2 = new e0.a();
                    aVar2.i(it2.next().getUrl() + e.a("GBETAQ4XF1sHC1hYAEcODkMKDABWEFZeGgU="));
                    f a3 = mimeiLauncherActivity.f1672c.a(f.b.a.a.a.s("VA4MFw4=", aVar2, e.a("dA0NCg4QTVocCA==")));
                    mimeiLauncherActivity.f1673d.add(a3);
                    ((d0) a3).W(new f.e.a.j.e0.g(mimeiLauncherActivity, comic));
                }
            }
            if (hostBean != null && hostBean.getFiction() != null) {
                Iterator<HostBean.FictionBean> it3 = hostBean.getFiction().iterator();
                while (it3.hasNext()) {
                    e0.a aVar3 = new e0.a();
                    aVar3.i(it3.next().getUrl() + e.a("GBETAQ4XF1sHC1g="));
                    f a4 = mimeiLauncherActivity.f1672c.a(f.b.a.a.a.s("VA4MFw4=", aVar3, e.a("dA0NCg4QTVocCA==")));
                    mimeiLauncherActivity.f1673d.add(a4);
                    ((d0) a4).W(new i(mimeiLauncherActivity));
                }
                return;
            }
            return;
        }
        throw null;
    }

    public static void q(Context context) {
        f.b.a.a.a.u(context, MimeiLauncherActivity.class);
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_mimei_launcher;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        this.radioGroupHost.setOnCheckedChangeListener(this.b);
        this.radioGroupImage.setOnCheckedChangeListener(this.b);
        this.radioGroupHost.setOnCheckedChangeListener(this.b);
        b0.a aVar = new b0.a();
        aVar.c(25, TimeUnit.SECONDS);
        aVar.d(25, TimeUnit.SECONDS);
        aVar.f6388m = Proxy.NO_PROXY;
        aVar.f6381f = true;
        this.f1672c = new b0(aVar);
        o(0);
    }

    public final void o(int i2) {
        e.a("aD08Ow==");
        f.e.a.k.f.b();
        String[] strArr = f.e.a.k.b.B;
        if (i2 >= strArr.length) {
            e.a("aD08Ow==");
            e.a("3+zUgeTl3JfCjoDC");
            return;
        }
        String str = strArr[i2];
        e0.a aVar = new e0.a();
        aVar.i(str);
        f a2 = this.f1672c.a(aVar.b());
        this.f1673d.add(a2);
        ((d0) a2).W(new b(i2));
    }

    @Override // com.comeback.data.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ArrayList<f> arrayList = this.f1673d;
        if (arrayList != null) {
            Iterator<f> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }
    }

    public final void p() {
        if (!this.f1674e) {
            this.f1674e = true;
            Iterator<f> it = this.f1673d.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.flProgress.setVisibility(0);
            d.a = e.a("dQcCFg4BGVYKLAUESjwaMwUOCC0BHEN+NzcFKCwNVyVdJxAtBgtRUEA0RwVKDhMJXitVKT8qQ303DQEqEjtWJG9STVRSFwlQQl8GXksMAlkDWgcHXRUBVUMHBQYaDlAOD1YBSg1EWwtAAlECTVNRDgZXUwVbRVwGEVQCUkAOBlxTB1dSW0ZdVUcAV19ODwBeDlBbBVNFXFFBVQEG");
            if (!TextUtils.isEmpty(f.e.a.k.b.A)) {
                d.a = f.e.a.k.b.A;
            }
            MimeiActivity.l(this);
            finish();
        }
    }
}
