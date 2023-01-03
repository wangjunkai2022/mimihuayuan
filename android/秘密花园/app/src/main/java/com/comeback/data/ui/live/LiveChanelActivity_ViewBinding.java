package com.comeback.data.ui.live;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.widget.viewpager.PageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class LiveChanelActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public LiveChanelActivity f1369c;

    @UiThread
    public LiveChanelActivity_ViewBinding(LiveChanelActivity liveChanelActivity, View view) {
        super(liveChanelActivity, view);
        this.f1369c = liveChanelActivity;
        liveChanelActivity.banner = (PageView) c.c(view, R.id.banner, e.a("UQsGCA9THlESCFoCCk0="), PageView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        LiveChanelActivity liveChanelActivity = this.f1369c;
        if (liveChanelActivity != null) {
            this.f1369c = null;
            liveChanelActivity.banner = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
