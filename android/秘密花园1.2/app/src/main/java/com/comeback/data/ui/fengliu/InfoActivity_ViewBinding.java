package com.comeback.data.ui.fengliu;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class InfoActivity_ViewBinding implements Unbinder {
    public InfoActivity b;

    @UiThread
    public InfoActivity_ViewBinding(InfoActivity infoActivity, View view) {
        this.b = infoActivity;
        infoActivity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        infoActivity.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
        infoActivity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        infoActivity.tvAge = (TextView) c.c(view, R.id.tv_age, e.a("UQsGCA9THkcFJ1MCXw=="), TextView.class);
        infoActivity.tvBeauty = (TextView) c.c(view, R.id.tv_beauty, e.a("UQsGCA9THkcFJFEGDR4aTA=="), TextView.class);
        infoActivity.tvPrice = (TextView) c.c(view, R.id.tv_price, e.a("UQsGCA9THkcFNkYOGw9E"), TextView.class);
        infoActivity.tvServer = (TextView) c.c(view, R.id.tv_server, e.a("UQsGCA9THkcFNVEVDg8RTA=="), TextView.class);
        infoActivity.tvQq = (TextView) c.c(view, R.id.tv_qq, e.a("UQsGCA9THkcFN0VA"), TextView.class);
        infoActivity.tvWechat = (TextView) c.c(view, R.id.tv_wechat, e.a("UQsGCA9THkcFMVEEEAsXTA=="), TextView.class);
        infoActivity.tvPhone = (TextView) c.c(view, R.id.tv_phone, e.a("UQsGCA9THkcFNlwIFg9E"), TextView.class);
        infoActivity.tvAddress = (TextView) c.c(view, R.id.tv_address, e.a("UQsGCA9THkcFJ1ADCg8QGBA="), TextView.class);
        infoActivity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        infoActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        RecyclerView recyclerView = (RecyclerView) c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        InfoActivity infoActivity = this.b;
        if (infoActivity != null) {
            this.b = null;
            infoActivity.tvTitle = null;
            infoActivity.tvState = null;
            infoActivity.tvArea = null;
            infoActivity.tvAge = null;
            infoActivity.tvBeauty = null;
            infoActivity.tvPrice = null;
            infoActivity.tvServer = null;
            infoActivity.tvQq = null;
            infoActivity.tvWechat = null;
            infoActivity.tvPhone = null;
            infoActivity.tvAddress = null;
            infoActivity.tvIntro = null;
            infoActivity.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
