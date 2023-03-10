package com.comeback.data.ui.cucumber;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.UiThread;
import com.comeback.data.base.BaseRefreshActivity_ViewBinding;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ColumnDetailActivity_ViewBinding extends BaseRefreshActivity_ViewBinding {

    /* renamed from: c  reason: collision with root package name */
    public ColumnDetailActivity f411c;

    @UiThread
    public ColumnDetailActivity_ViewBinding(ColumnDetailActivity columnDetailActivity, View view) {
        super(columnDetailActivity, view);
        this.f411c = columnDetailActivity;
        columnDetailActivity.ivBg = (ImageView) c.c(view, R.id.iv_bg, e.a("UQsGCA9THloFJFNA"), ImageView.class);
        columnDetailActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        columnDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
    }

    @Override // com.comeback.data.base.BaseRefreshActivity_ViewBinding, butterknife.Unbinder
    public void a() {
        ColumnDetailActivity columnDetailActivity = this.f411c;
        if (columnDetailActivity != null) {
            this.f411c = null;
            columnDetailActivity.ivBg = null;
            columnDetailActivity.tvTitle = null;
            columnDetailActivity.tvDetail = null;
            super.a();
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
