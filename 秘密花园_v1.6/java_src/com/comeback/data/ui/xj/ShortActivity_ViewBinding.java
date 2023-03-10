package com.comeback.data.ui.xj;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ShortActivity_ViewBinding implements Unbinder {
    public ShortActivity b;

    @UiThread
    public ShortActivity_ViewBinding(ShortActivity shortActivity, View view) {
        this.b = shortActivity;
        shortActivity.mRvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hEHgOCx5E"), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ShortActivity shortActivity = this.b;
        if (shortActivity != null) {
            this.b = null;
            shortActivity.mRvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
