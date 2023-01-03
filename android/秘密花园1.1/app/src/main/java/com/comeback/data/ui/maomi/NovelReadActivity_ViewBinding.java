package com.comeback.data.ui.maomi;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelReadActivity_ViewBinding implements Unbinder {
    public NovelReadActivity b;

    @UiThread
    public NovelReadActivity_ViewBinding(NovelReadActivity novelReadActivity, View view) {
        this.b = novelReadActivity;
        novelReadActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        novelReadActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        NovelReadActivity novelReadActivity = this.b;
        if (novelReadActivity != null) {
            this.b = null;
            novelReadActivity.tvName = null;
            novelReadActivity.tvDetail = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
