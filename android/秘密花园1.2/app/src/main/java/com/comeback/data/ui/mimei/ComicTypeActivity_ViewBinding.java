package com.comeback.data.ui.mimei;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseViewPagerActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ComicTypeActivity_ViewBinding extends BaseViewPagerActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ComicTypeActivity f1745c;

    @UiThread
    public ComicTypeActivity_ViewBinding(ComicTypeActivity comicTypeActivity, View view) {
        super(comicTypeActivity, view);
        this.f1745c = comicTypeActivity;
        comicTypeActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ComicTypeActivity comicTypeActivity = this.f1745c;
        if (comicTypeActivity != null) {
            this.f1745c = null;
            comicTypeActivity.tvTitle = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
