package com.comeback.data.ui.commom;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class PicBrowseActivity_ViewBinding implements Unbinder {
    public PicBrowseActivity b;

    @UiThread
    public PicBrowseActivity_ViewBinding(PicBrowseActivity picBrowseActivity, View view) {
        this.b = picBrowseActivity;
        picBrowseActivity.mRecyclerView = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hA1ceGwYGGWELBhNM"), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        PicBrowseActivity picBrowseActivity = this.b;
        if (picBrowseActivity != null) {
            this.b = null;
            picBrowseActivity.mRecyclerView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
