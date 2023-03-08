package com.comeback.data.ui.fulao2;

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
public class PlayActivity_ViewBinding implements Unbinder {
    public PlayActivity b;

    @UiThread
    public PlayActivity_ViewBinding(PlayActivity playActivity, View view) {
        this.b = playActivity;
        playActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        playActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        PlayActivity playActivity = this.b;
        if (playActivity != null) {
            this.b = null;
            playActivity.rvList = null;
            playActivity.tvTitle = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
