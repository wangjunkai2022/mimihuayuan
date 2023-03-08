package com.comeback.data.ui.cucumber;

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
public class ColumnMoreActivity_ViewBinding implements Unbinder {
    public ColumnMoreActivity b;

    @UiThread
    public ColumnMoreActivity_ViewBinding(ColumnMoreActivity columnMoreActivity, View view) {
        this.b = columnMoreActivity;
        columnMoreActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        columnMoreActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ColumnMoreActivity columnMoreActivity = this.b;
        if (columnMoreActivity != null) {
            this.b = null;
            columnMoreActivity.tvTitle = null;
            columnMoreActivity.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
