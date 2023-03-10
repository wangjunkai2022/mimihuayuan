package com.comeback.data.ui.maomi.fragment;

import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class AnchorFragment_ViewBinding implements Unbinder {
    public AnchorFragment b;

    @UiThread
    public AnchorFragment_ViewBinding(AnchorFragment anchorFragment, View view) {
        this.b = anchorFragment;
        anchorFragment.mFlContent = (FrameLayout) c.c(view, R.id.fl_content, e.a("UQsGCA9THl41CncIFh4GBUNF"), FrameLayout.class);
        RecyclerView recyclerView = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THl4hEHgOCx5E"), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        AnchorFragment anchorFragment = this.b;
        if (anchorFragment != null) {
            this.b = null;
            anchorFragment.mFlContent = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
