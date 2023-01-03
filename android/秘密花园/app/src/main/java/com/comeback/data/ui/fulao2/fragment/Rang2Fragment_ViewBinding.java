package com.comeback.data.ui.fulao2.fragment;

import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class Rang2Fragment_ViewBinding implements Unbinder {
    public Rang2Fragment b;

    @UiThread
    public Rang2Fragment_ViewBinding(Rang2Fragment rang2Fragment, View view) {
        this.b = rang2Fragment;
        rang2Fragment.rvGuide = (RecyclerView) c.c(view, R.id.rv_guide, e.a("UQsGCA9THkEFIUEOHA9E"), RecyclerView.class);
        rang2Fragment.rvActor = (RecyclerView) c.c(view, R.id.rv_actor, e.a("UQsGCA9THkEFJ1cTFxhE"), RecyclerView.class);
        rang2Fragment.rvNew = (RecyclerView) c.c(view, R.id.rv_new, e.a("UQsGCA9THkEFKFEQXw=="), RecyclerView.class);
        rang2Fragment.rvOriginal = (RecyclerView) c.c(view, R.id.rv_original, e.a("UQsGCA9THkEFKUYOHwMNCltF"), RecyclerView.class);
        rang2Fragment.rvUncover = (RecyclerView) c.c(view, R.id.rv_uncover, e.a("UQsGCA9THkEFM1oEFxwGGRA="), RecyclerView.class);
        rang2Fragment.rvCover = (RecyclerView) c.c(view, R.id.rv_cover, e.a("UQsGCA9THkEFJVsRHRhE"), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        Rang2Fragment rang2Fragment = this.b;
        if (rang2Fragment != null) {
            this.b = null;
            rang2Fragment.rvGuide = null;
            rang2Fragment.rvActor = null;
            rang2Fragment.rvNew = null;
            rang2Fragment.rvOriginal = null;
            rang2Fragment.rvUncover = null;
            rang2Fragment.rvCover = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
