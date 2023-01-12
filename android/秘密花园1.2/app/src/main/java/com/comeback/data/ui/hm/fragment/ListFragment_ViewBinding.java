package com.comeback.data.ui.hm.fragment;

import android.view.View;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.base.BaseRefreshFragment_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ListFragment_ViewBinding extends BaseRefreshFragment_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ListFragment f1145c;

    @UiThread
    public ListFragment_ViewBinding(ListFragment listFragment, View view) {
        super(listFragment, view);
        this.f1145c = listFragment;
        listFragment.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment_ViewBinding, butterknife.Unbinder
    public void a() {
        if (this.f1145c != null) {
            this.f1145c = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
