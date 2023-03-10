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
public class Info2Activity_ViewBinding implements Unbinder {
    public Info2Activity b;

    @UiThread
    public Info2Activity_ViewBinding(Info2Activity info2Activity, View view) {
        this.b = info2Activity;
        info2Activity.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
        info2Activity.tvState = (TextView) c.c(view, R.id.tv_state, e.a("UQsGCA9THkcFNUAGDA9E"), TextView.class);
        info2Activity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        info2Activity.tvAge = (TextView) c.c(view, R.id.tv_age, e.a("UQsGCA9THkcFJ1MCXw=="), TextView.class);
        info2Activity.tvBeauty = (TextView) c.c(view, R.id.tv_beauty, e.a("UQsGCA9THkcFJFEGDR4aTA=="), TextView.class);
        info2Activity.tvPrice = (TextView) c.c(view, R.id.tv_price, e.a("UQsGCA9THkcFNkYOGw9E"), TextView.class);
        info2Activity.tvServer = (TextView) c.c(view, R.id.tv_server, e.a("UQsGCA9THkcFNVEVDg8RTA=="), TextView.class);
        info2Activity.tvQq = (TextView) c.c(view, R.id.tv_qq, e.a("UQsGCA9THkcFN0VA"), TextView.class);
        info2Activity.tvWechat = (TextView) c.c(view, R.id.tv_wechat, e.a("UQsGCA9THkcFMVEEEAsXTA=="), TextView.class);
        info2Activity.tvPhone = (TextView) c.c(view, R.id.tv_phone, e.a("UQsGCA9THkcFNlwIFg9E"), TextView.class);
        info2Activity.tvAddress = (TextView) c.c(view, R.id.tv_address, e.a("UQsGCA9THkcFJ1ADCg8QGBA="), TextView.class);
        info2Activity.tvIntro = (TextView) c.c(view, R.id.tv_intro, e.a("UQsGCA9THkcFL1oTCgVE"), TextView.class);
        info2Activity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        RecyclerView recyclerView = (RecyclerView) c.c(view, R.id.rv_recommend, e.a("UQsGCA9THkEFNFEEFwcODlkGRA=="), RecyclerView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        Info2Activity info2Activity = this.b;
        if (info2Activity != null) {
            this.b = null;
            info2Activity.tvTitle = null;
            info2Activity.tvState = null;
            info2Activity.tvArea = null;
            info2Activity.tvAge = null;
            info2Activity.tvBeauty = null;
            info2Activity.tvPrice = null;
            info2Activity.tvServer = null;
            info2Activity.tvQq = null;
            info2Activity.tvWechat = null;
            info2Activity.tvPhone = null;
            info2Activity.tvAddress = null;
            info2Activity.tvIntro = null;
            info2Activity.rvList = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
