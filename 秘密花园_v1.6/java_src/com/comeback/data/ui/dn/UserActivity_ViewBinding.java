package com.comeback.data.ui.dn;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class UserActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public UserActivity f548c;

    /* renamed from: d  reason: collision with root package name */
    public View f549d;

    /* loaded from: classes.dex */
    public class a extends b {

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ UserActivity f550c;

        public a(UserActivity_ViewBinding userActivity_ViewBinding, UserActivity userActivity) {
            this.f550c = userActivity;
        }

        @Override // d.c.b
        public void a(View view) {
            if (this.f550c == null) {
                throw null;
            }
        }
    }

    @UiThread
    public UserActivity_ViewBinding(UserActivity userActivity, View view) {
        super(userActivity, view);
        this.f548c = userActivity;
        View b = c.b(view, R.id.button_collect, e.a("UQsGCA9THl4xE0ATFwQgBFsOBgcfVBlSHQIUCh0eCwRTQkQCBB9VXARB"));
        userActivity.mButtonCollect = (TextView) c.a(b, R.id.button_collect, e.a("UQsGCA9THl4xE0ATFwQgBFsOBgcfVA=="), TextView.class);
        this.f549d = b;
        b.setOnClickListener(new a(this, userActivity));
        ImageView imageView = (ImageView) c.c(view, R.id.image_sex, e.a("UQsGCA9THl46C1UAHTkGExA="), ImageView.class);
        userActivity.mImageThumb = (ImageView) c.c(view, R.id.image_thumb, e.a("UQsGCA9THl46C1UAHT4LHloARA=="), ImageView.class);
        userActivity.mTextCollectNum = (TextView) c.c(view, R.id.text_collect_num, e.a("UQsGCA9THl4nA0wTOwUPB1IBFyoeHh4="), TextView.class);
        userActivity.mTextFensiNum = (TextView) c.c(view, R.id.text_fensi_num, e.a("UQsGCA9THl4nA0wTPg8NGF4sFglM"), TextView.class);
        userActivity.mTextZanNum = (TextView) c.c(view, R.id.text_zan_num, e.a("UQsGCA9THl4nA0wTIgsNJUIPRA=="), TextView.class);
        userActivity.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        UserActivity userActivity = this.f548c;
        if (userActivity != null) {
            this.f548c = null;
            userActivity.mImageThumb = null;
            userActivity.mTextCollectNum = null;
            userActivity.mTextFensiNum = null;
            userActivity.mTextZanNum = null;
            userActivity.mTvTitle = null;
            this.f549d.setOnClickListener(null);
            this.f549d = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
