package com.comeback.data.ui.gdian;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public NovelActivity f805c;

    @UiThread
    public NovelActivity_ViewBinding(NovelActivity novelActivity, View view) {
        super(novelActivity, view);
        this.f805c = novelActivity;
        novelActivity.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
        novelActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        novelActivity.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
        novelActivity.tvUpdate = (TextView) c.c(view, R.id.tv_update, e.a("UQsGCA9THkcFM0QDGR4GTA=="), TextView.class);
        novelActivity.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
        novelActivity.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        NovelActivity novelActivity = this.f805c;
        if (novelActivity != null) {
            this.f805c = null;
            novelActivity.ivImg = null;
            novelActivity.tvTitle = null;
            novelActivity.tvAuthor = null;
            novelActivity.tvUpdate = null;
            novelActivity.tvDesc = null;
            novelActivity.tvState = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
