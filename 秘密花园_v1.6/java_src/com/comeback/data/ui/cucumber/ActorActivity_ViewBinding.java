package com.comeback.data.ui.cucumber;

import android.view.View;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ActorActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ActorActivity f403c;

    @UiThread
    public ActorActivity_ViewBinding(ActorActivity actorActivity, View view) {
        super(actorActivity, view);
        this.f403c = actorActivity;
        actorActivity.tab1 = (TabLayout) c.c(view, R.id.tab1, e.a("UQsGCA9THkcSBAVA"), TabLayout.class);
        actorActivity.tab2 = (TabLayout) c.c(view, R.id.tab2, e.a("UQsGCA9THkcSBAZA"), TabLayout.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ActorActivity actorActivity = this.f403c;
        if (actorActivity != null) {
            this.f403c = null;
            actorActivity.tab1 = null;
            actorActivity.tab2 = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
