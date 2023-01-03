package com.comeback.data.ui.bale;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class TagSearchActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public TagSearchActivity f273c;

    @UiThread
    public TagSearchActivity_ViewBinding(TagSearchActivity tagSearchActivity, View view) {
        super(tagSearchActivity, view);
        this.f273c = tagSearchActivity;
        tagSearchActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        TagSearchActivity tagSearchActivity = this.f273c;
        if (tagSearchActivity != null) {
            this.f273c = null;
            tagSearchActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
