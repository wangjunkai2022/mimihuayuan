package com.comeback.data.ui.slf;

import android.animation.ObjectAnimator;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelReadActivity_ViewBinding implements Unbinder {
    public NovelReadActivity b;

    /* renamed from: c  reason: collision with root package name */
    public View f2028c;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ NovelReadActivity f2029c;

        public a(NovelReadActivity_ViewBinding novelReadActivity_ViewBinding, NovelReadActivity novelReadActivity) {
            this.f2029c = novelReadActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            NovelReadActivity novelReadActivity = this.f2029c;
            if (novelReadActivity.b) {
                novelReadActivity.m();
                return;
            }
            novelReadActivity.b = true;
            ObjectAnimator.ofFloat(novelReadActivity.llFolder, e.a("QxACChgfWEcaCVo/"), novelReadActivity.llFolder.getWidth(), 0.0f).setDuration(300L).start();
        }
    }

    @UiThread
    public NovelReadActivity_ViewBinding(NovelReadActivity novelReadActivity, View view) {
        this.b = novelReadActivity;
        novelReadActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        View b = c.b(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        novelReadActivity.tvDetail = (TextView) c.a(b, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        this.f2028c = b;
        b.setOnClickListener(new a(this, novelReadActivity));
        novelReadActivity.rvChapter = (RecyclerView) c.c(view, R.id.rv_chapter, e.a("UQsGCA9THkEFJVwGCB4GGRA="), RecyclerView.class);
        novelReadActivity.llFolder = (LinearLayout) c.c(view, R.id.ll_folder, e.a("UQsGCA9THl8fIFsLHA8RTA=="), LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        NovelReadActivity novelReadActivity = this.b;
        if (novelReadActivity != null) {
            this.b = null;
            novelReadActivity.tvName = null;
            novelReadActivity.tvDetail = null;
            novelReadActivity.rvChapter = null;
            novelReadActivity.llFolder = null;
            this.f2028c.setOnClickListener(null);
            this.f2028c = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
