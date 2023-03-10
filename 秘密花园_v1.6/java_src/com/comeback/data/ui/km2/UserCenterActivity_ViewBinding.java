package com.comeback.data.ui.km2;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.ui.km2.bean.Km2User;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;
/* loaded from: classes.dex */
public class UserCenterActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public UserCenterActivity f1430c;

    /* renamed from: d  reason: collision with root package name */
    public View f1431d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ UserCenterActivity f1432c;

        public a(UserCenterActivity_ViewBinding userCenterActivity_ViewBinding, UserCenterActivity userCenterActivity) {
            this.f1432c = userCenterActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            UserCenterActivity userCenterActivity = this.f1432c;
            userCenterActivity.t(userCenterActivity.tvFollow);
            Km2User km2User = new Km2User();
            km2User.setMu_id(userCenterActivity.f1427e);
            km2User.setMu_name(userCenterActivity.f1426d);
            g.d(km2User.getRealm()).a(km2User);
            h.p1(e.a("0ufQgtjb37vjg774"));
            userCenterActivity.tvFollow.setVisibility(8);
        }
    }

    @UiThread
    public UserCenterActivity_ViewBinding(UserCenterActivity userCenterActivity, View view) {
        super(userCenterActivity, view);
        this.f1430c = userCenterActivity;
        userCenterActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        View b = c.b(view, R.id.tv_follow, e.a("UQsGCA9THkcFIFsLFAUUTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        userCenterActivity.tvFollow = (TextView) c.a(b, R.id.tv_follow, e.a("UQsGCA9THkcFIFsLFAUUTA=="), TextView.class);
        this.f1431d = b;
        b.setOnClickListener(new a(this, userCenterActivity));
        userCenterActivity.basic_primary_text = ContextCompat.getColor(view.getContext(), R.color.basic_primary_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        UserCenterActivity userCenterActivity = this.f1430c;
        if (userCenterActivity != null) {
            this.f1430c = null;
            userCenterActivity.tvName = null;
            userCenterActivity.tvFollow = null;
            this.f1431d.setOnClickListener(null);
            this.f1431d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
