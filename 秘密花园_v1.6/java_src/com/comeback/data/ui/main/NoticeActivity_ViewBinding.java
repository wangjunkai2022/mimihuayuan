package com.comeback.data.ui.main;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class NoticeActivity_ViewBinding implements Unbinder {
    public NoticeActivity b;

    @UiThread
    public NoticeActivity_ViewBinding(NoticeActivity noticeActivity, View view) {
        this.b = noticeActivity;
        noticeActivity.tvContent = (TextView) c.c(view, R.id.tv_content, e.a("UQsGCA9THkcFJVsJDA8NHxA="), TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        NoticeActivity noticeActivity = this.b;
        if (noticeActivity != null) {
            this.b = null;
            noticeActivity.tvContent = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
