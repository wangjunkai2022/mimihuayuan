package com.comeback.data.ui.fulao2;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;

/* loaded from: classes.dex */
public class ActorDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ActorDetailActivity f696c;

    /* renamed from: d  reason: collision with root package name */
    public View f697d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ActorDetailActivity f698c;

        public a(ActorDetailActivity_ViewBinding actorDetailActivity_ViewBinding, ActorDetailActivity actorDetailActivity) {
            this.f698c = actorDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            ActorDetailActivity actorDetailActivity = this.f698c;
            g.d(actorDetailActivity.f693d.getRealm()).a(actorDetailActivity.f693d);
            h.n1(e.a("0fbVjPz837vjg774"));
            actorDetailActivity.t();
        }
    }

    @UiThread
    public ActorDetailActivity_ViewBinding(ActorDetailActivity actorDetailActivity, View view) {
        super(actorDetailActivity, view);
        this.f696c = actorDetailActivity;
        actorDetailActivity.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
        actorDetailActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        actorDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        View b = c.b(view, R.id.tv_follow, e.a("UQsGCA9THkcFIFsLFAUUTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        actorDetailActivity.tvFollow = (TextView) c.a(b, R.id.tv_follow, e.a("UQsGCA9THkcFIFsLFAUUTA=="), TextView.class);
        this.f697d = b;
        b.setOnClickListener(new a(this, actorDetailActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ActorDetailActivity actorDetailActivity = this.f696c;
        if (actorDetailActivity != null) {
            this.f696c = null;
            actorDetailActivity.ivHead = null;
            actorDetailActivity.tvName = null;
            actorDetailActivity.tvCount = null;
            actorDetailActivity.tvFollow = null;
            this.f697d.setOnClickListener(null);
            this.f697d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
