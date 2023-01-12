package com.comeback.data.ui.main;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UpdateActivity_ViewBinding implements Unbinder {
    public UpdateActivity b;

    @UiThread
    public UpdateActivity_ViewBinding(UpdateActivity updateActivity, View view) {
        this.b = updateActivity;
        updateActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        updateActivity.tvContent = (TextView) c.c(view, R.id.tv_content, e.a("UQsGCA9THkcFJVsJDA8NHxA="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        UpdateActivity updateActivity = this.b;
        if (updateActivity != null) {
            this.b = null;
            updateActivity.tvTitle = null;
            updateActivity.tvContent = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
