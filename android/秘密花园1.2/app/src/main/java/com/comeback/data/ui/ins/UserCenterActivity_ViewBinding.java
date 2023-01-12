package com.comeback.data.ui.ins;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class UserCenterActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public UserCenterActivity f1158c;

    /* renamed from: d  reason: collision with root package name */
    public View f1159d;

    /* renamed from: e  reason: collision with root package name */
    public View f1160e;

    /* loaded from: classes.dex */
    public class a extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ UserCenterActivity f1161c;

        public a(UserCenterActivity_ViewBinding userCenterActivity_ViewBinding, UserCenterActivity userCenterActivity) {
            this.f1161c = userCenterActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1161c.onClick(view);
        }
    }

    /* loaded from: classes.dex */
    public class b extends d.c.b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ UserCenterActivity f1162c;

        public b(UserCenterActivity_ViewBinding userCenterActivity_ViewBinding, UserCenterActivity userCenterActivity) {
            this.f1162c = userCenterActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            this.f1162c.onClick(view);
        }
    }

    @UiThread
    public UserCenterActivity_ViewBinding(UserCenterActivity userCenterActivity, View view) {
        super(userCenterActivity, view);
        this.f1158c = userCenterActivity;
        userCenterActivity.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
        View b2 = c.b(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAX0oCBVNCDgEfG1ZXU0FbCTsGCghcRQ=="));
        userCenterActivity.ivImg = (ImageView) c.a(b2, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
        this.f1159d = b2;
        b2.setOnClickListener(new a(this, userCenterActivity));
        View b3 = c.b(view, R.id.iv_video, e.a("UQsGCA9THloFMF0DHQVES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
        userCenterActivity.ivVideo = (ImageView) c.a(b3, R.id.iv_video, e.a("UQsGCA9THloFMF0DHQVE"), ImageView.class);
        this.f1160e = b3;
        b3.setOnClickListener(new b(this, userCenterActivity));
        userCenterActivity.ivHead = (RatioImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), RatioImageView.class);
        Context context = view.getContext();
        userCenterActivity.basic_primary_text = ContextCompat.getColor(context, R.color.basic_primary_text);
        userCenterActivity.basic_third_text = ContextCompat.getColor(context, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        UserCenterActivity userCenterActivity = this.f1158c;
        if (userCenterActivity != null) {
            this.f1158c = null;
            userCenterActivity.tvName = null;
            userCenterActivity.ivImg = null;
            userCenterActivity.ivVideo = null;
            userCenterActivity.ivHead = null;
            this.f1159d.setOnClickListener(null);
            this.f1159d = null;
            this.f1160e.setOnClickListener(null);
            this.f1160e = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
