package com.comeback.data.ui.km;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.ui.km.bean.User;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.k.g;

/* loaded from: classes.dex */
public class UserCenterActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public UserCenterActivity f1302c;

    /* renamed from: d  reason: collision with root package name */
    public View f1303d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ UserCenterActivity f1304c;

        public a(UserCenterActivity_ViewBinding userCenterActivity_ViewBinding, UserCenterActivity userCenterActivity) {
            this.f1304c = userCenterActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            UserCenterActivity userCenterActivity = this.f1304c;
            userCenterActivity.t(userCenterActivity.tvFollow);
            User user = new User();
            user.setMu_id(userCenterActivity.f1299e);
            user.setMu_name(userCenterActivity.f1298d);
            g.d(user.getRealm()).a(user);
            h.n1(e.a("0ufQgtjb37vjg774"));
            userCenterActivity.tvFollow.setVisibility(8);
        }
    }

    @UiThread
    public UserCenterActivity_ViewBinding(UserCenterActivity userCenterActivity, View view) {
        super(userCenterActivity, view);
        this.f1302c = userCenterActivity;
        userCenterActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        View b = c.b(view, R.id.tv_follow, e.a("UQsGCA9THkcFIFsLFAUUTBcDDQBLHlxHGwlQR18FDT1eBxQnBxpaWBYCEw=="));
        userCenterActivity.tvFollow = (TextView) c.a(b, R.id.tv_follow, e.a("UQsGCA9THkcFIFsLFAUUTA=="), TextView.class);
        this.f1303d = b;
        b.setOnClickListener(new a(this, userCenterActivity));
        userCenterActivity.basic_primary_text = ContextCompat.getColor(view.getContext(), R.color.basic_primary_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        UserCenterActivity userCenterActivity = this.f1302c;
        if (userCenterActivity != null) {
            this.f1302c = null;
            userCenterActivity.tvName = null;
            userCenterActivity.tvFollow = null;
            this.f1303d.setOnClickListener(null);
            this.f1303d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
