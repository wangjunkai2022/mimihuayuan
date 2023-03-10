package com.comeback.data.ui.jav;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ActorDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ActorDetailActivity f1282c;

    @UiThread
    public ActorDetailActivity_ViewBinding(ActorDetailActivity actorDetailActivity, View view) {
        super(actorDetailActivity, view);
        this.f1282c = actorDetailActivity;
        actorDetailActivity.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
        actorDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        actorDetailActivity.tvSecondName = (TextView) c.c(view, R.id.tv_second_name, e.a("UQsGCA9THkcFNVEEFwQHJVYPBkM="), TextView.class);
        actorDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ActorDetailActivity actorDetailActivity = this.f1282c;
        if (actorDetailActivity != null) {
            this.f1282c = null;
            actorDetailActivity.ivHead = null;
            actorDetailActivity.tvName = null;
            actorDetailActivity.tvSecondName = null;
            actorDetailActivity.tvCount = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
