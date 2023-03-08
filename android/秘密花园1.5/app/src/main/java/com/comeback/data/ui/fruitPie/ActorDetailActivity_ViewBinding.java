package com.comeback.data.ui.fruitPie;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ActorDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ActorDetailActivity f698c;

    /* renamed from: d  reason: collision with root package name */
    public View f699d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ActorDetailActivity f700c;

        public a(ActorDetailActivity_ViewBinding actorDetailActivity_ViewBinding, ActorDetailActivity actorDetailActivity) {
            this.f700c = actorDetailActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f700c.finish();
        }
    }

    @UiThread
    public ActorDetailActivity_ViewBinding(ActorDetailActivity actorDetailActivity, View view) {
        super(actorDetailActivity, view);
        this.f698c = actorDetailActivity;
        actorDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        View b = c.b(view, R.id.iv_back, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
        this.f699d = b;
        b.setOnClickListener(new a(this, actorDetailActivity));
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ActorDetailActivity actorDetailActivity = this.f698c;
        if (actorDetailActivity != null) {
            this.f698c = null;
            actorDetailActivity.tvTitle = null;
            this.f699d.setOnClickListener(null);
            this.f699d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
