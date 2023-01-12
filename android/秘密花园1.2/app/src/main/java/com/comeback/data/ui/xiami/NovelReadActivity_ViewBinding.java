package com.comeback.data.ui.xiami;

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
        novelReadActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        novelReadActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        novelReadActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        novelReadActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        novelReadActivity.tvType = (TextView) c.c(view, R.id.tv_type, e.a("UQsGCA9THkcFMk0XHU0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        NovelReadActivity novelReadActivity = this.b;
        if (novelReadActivity != null) {
            this.b = null;
            novelReadActivity.tvDetail = null;
            novelReadActivity.tvTitle = null;
            novelReadActivity.tvTime = null;
            novelReadActivity.tvCount = null;
            novelReadActivity.tvType = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
