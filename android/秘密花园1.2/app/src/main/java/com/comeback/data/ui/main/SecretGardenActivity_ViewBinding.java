package com.comeback.data.ui.main;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.data.widget.MarqueeTextView;
import com.comeback.data.widget.viewpager.PageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class SecretGardenActivity_ViewBinding implements Unbinder {
    public SecretGardenActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1566c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ SecretGardenActivity f1567c;

        public a(SecretGardenActivity_ViewBinding secretGardenActivity_ViewBinding, SecretGardenActivity secretGardenActivity) {
            this.f1567c = secretGardenActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            SecretGardenActivity secretGardenActivity = this.f1567c;
            NoticeActivity.l(secretGardenActivity, secretGardenActivity.tvNotice.getText().toString());
        }
    }

    @UiThread
    public SecretGardenActivity_ViewBinding(SecretGardenActivity secretGardenActivity, View view) {
        this.b = secretGardenActivity;
        secretGardenActivity.toolbar = (Toolbar) c.c(view, R.id.toolbar, e.a("UQsGCA9THkccCVgFGRhE"), Toolbar.class);
        secretGardenActivity.banner = (PageView) c.c(view, R.id.banner, e.a("UQsGCA9THlESCFoCCk0="), PageView.class);
        secretGardenActivity.tvNotice = (MarqueeTextView) c.c(view, R.id.tv_notice, e.a("UQsGCA9THkcFKFsTEQkGTA=="), MarqueeTextView.class);
        View b = c.b(view, R.id.ll_notice, e.a("UQsGCA9THl8fKFsTEQkGTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        secretGardenActivity.llNotice = (LinearLayout) c.a(b, R.id.ll_notice, e.a("UQsGCA9THl8fKFsTEQkGTA=="), LinearLayout.class);
        this.f1566c = b;
        b.setOnClickListener(new a(this, secretGardenActivity));
        secretGardenActivity.llAd = (LinearLayout) c.c(view, R.id.ll_ad, e.a("UQsGCA9THl8fJ1BA"), LinearLayout.class);
        secretGardenActivity.rvAd = (RecyclerView) c.c(view, R.id.rv_ad, e.a("UQsGCA9THkEFJ1BA"), RecyclerView.class);
        secretGardenActivity.rvVideo = (RecyclerView) c.c(view, R.id.rv_video, e.a("UQsGCA9THkEFMF0DHQVE"), RecyclerView.class);
        secretGardenActivity.rvNovel = (RecyclerView) c.c(view, R.id.rv_novel, e.a("UQsGCA9THkEFKFsRHQZE"), RecyclerView.class);
        secretGardenActivity.rvLoufeng = (RecyclerView) c.c(view, R.id.rv_loufeng, e.a("UQsGCA9THkEFKlsSHg8NDBA="), RecyclerView.class);
        secretGardenActivity.rvOther = (RecyclerView) c.c(view, R.id.rv_other, e.a("UQsGCA9THkEFKUAPHRhE"), RecyclerView.class);
        secretGardenActivity.iv_bg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFOVYAXw=="), ImageView.class);
        secretGardenActivity.tv_version = (TextView) c.c(view, R.id.tv_version, e.a("UQsGCA9THkcFOUICChkKBFlF"), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        SecretGardenActivity secretGardenActivity = this.b;
        if (secretGardenActivity != null) {
            this.b = null;
            secretGardenActivity.toolbar = null;
            secretGardenActivity.banner = null;
            secretGardenActivity.tvNotice = null;
            secretGardenActivity.llNotice = null;
            secretGardenActivity.llAd = null;
            secretGardenActivity.rvAd = null;
            secretGardenActivity.rvVideo = null;
            secretGardenActivity.rvNovel = null;
            secretGardenActivity.rvLoufeng = null;
            secretGardenActivity.rvOther = null;
            secretGardenActivity.iv_bg = null;
            secretGardenActivity.tv_version = null;
            this.f1566c.setOnClickListener(null);
            this.f1566c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
