package com.comeback.data.ui.maomi;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class CartoonWatchActivity_ViewBinding implements Unbinder {
    public CartoonWatchActivity b;

    @UiThread
    public CartoonWatchActivity_ViewBinding(CartoonWatchActivity cartoonWatchActivity, View view) {
        this.b = cartoonWatchActivity;
        cartoonWatchActivity.mRecyclerView = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hA1ceGwYGGWELBhNM"), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        CartoonWatchActivity cartoonWatchActivity = this.b;
        if (cartoonWatchActivity != null) {
            this.b = null;
            cartoonWatchActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
