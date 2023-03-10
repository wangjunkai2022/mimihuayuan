package com.comeback.data.ui.ds.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ComicListFragment_ViewBinding implements Unbinder {
    public ComicListFragment b;

    @UiThread
    public ComicListFragment_ViewBinding(ComicListFragment comicListFragment, View view) {
        this.b = comicListFragment;
        comicListFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        ComicListFragment comicListFragment = this.b;
        if (comicListFragment != null) {
            this.b = null;
            comicListFragment.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
