package com.comeback.data.ui.gdian;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ImageReadActivity_ViewBinding implements Unbinder {
    public ImageReadActivity b;

    @UiThread
    public ImageReadActivity_ViewBinding(ImageReadActivity imageReadActivity, View view) {
        this.b = imageReadActivity;
        imageReadActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        imageReadActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        imageReadActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        imageReadActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        imageReadActivity.tvType = (TextView) c.c(view, R.id.tv_type, e.a("UQsGCA9THkcFMk0XHU0="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ImageReadActivity imageReadActivity = this.b;
        if (imageReadActivity != null) {
            this.b = null;
            imageReadActivity.rvList = null;
            imageReadActivity.tvTitle = null;
            imageReadActivity.tvTime = null;
            imageReadActivity.tvCount = null;
            imageReadActivity.tvType = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
