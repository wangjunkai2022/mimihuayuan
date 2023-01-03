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
public class MainActivity_ViewBinding implements Unbinder {
    public MainActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f1486c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ MainActivity f1487c;

        public a(MainActivity_ViewBinding mainActivity_ViewBinding, MainActivity mainActivity) {
            this.f1487c = mainActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            MainActivity mainActivity = this.f1487c;
            NoticeActivity.l(mainActivity, mainActivity.tvNotice.getText().toString());
        }
    }

    @UiThread
    public MainActivity_ViewBinding(MainActivity mainActivity, View view) {
        this.b = mainActivity;
        mainActivity.toolbar = (Toolbar) c.c(view, R.id.toolbar, e.a("UQsGCA9THkccCVgFGRhE"), Toolbar.class);
        mainActivity.banner = (PageView) c.c(view, R.id.banner, e.a("UQsGCA9THlESCFoCCk0="), PageView.class);
        mainActivity.tvNotice = (MarqueeTextView) c.c(view, R.id.tv_notice, e.a("UQsGCA9THkcFKFsTEQkGTA=="), MarqueeTextView.class);
        View b = c.b(view, R.id.ll_notice, e.a("UQsGCA9THl8fKFsTEQkGTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        mainActivity.llNotice = (LinearLayout) c.a(b, R.id.ll_notice, e.a("UQsGCA9THl8fKFsTEQkGTA=="), LinearLayout.class);
        this.f1486c = b;
        b.setOnClickListener(new a(this, mainActivity));
        mainActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        mainActivity.iv_bg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFOVYAXw=="), ImageView.class);
        mainActivity.tv_version = (TextView) c.c(view, R.id.tv_version, e.a("UQsGCA9THkcFOUICChkKBFlF"), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MainActivity mainActivity = this.b;
        if (mainActivity != null) {
            this.b = null;
            mainActivity.toolbar = null;
            mainActivity.banner = null;
            mainActivity.tvNotice = null;
            mainActivity.llNotice = null;
            mainActivity.rvList = null;
            mainActivity.iv_bg = null;
            mainActivity.tv_version = null;
            this.f1486c.setOnClickListener(null);
            this.f1486c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
