package com.comeback.data.ui.sex8.ui;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class LouFengDetailActivity_ViewBinding implements Unbinder {
    public LouFengDetailActivity b;

    @UiThread
    public LouFengDetailActivity_ViewBinding(LouFengDetailActivity louFengDetailActivity, View view) {
        this.b = louFengDetailActivity;
        louFengDetailActivity.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
        louFengDetailActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        louFengDetailActivity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        louFengDetailActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        louFengDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        louFengDetailActivity.tvPrice = (TextView) c.c(view, R.id.tv_price, e.a("UQsGCA9THkcFNkYOGw9E"), TextView.class);
        louFengDetailActivity.tvWechat = (TextView) c.c(view, R.id.tv_wechat, e.a("UQsGCA9THkcFMVEEEAsXTA=="), TextView.class);
        louFengDetailActivity.tvQq = (TextView) c.c(view, R.id.tv_qq, e.a("UQsGCA9THkcFN0VA"), TextView.class);
        louFengDetailActivity.tvPhone = (TextView) c.c(view, R.id.tv_phone, e.a("UQsGCA9THkcFNlwIFg9E"), TextView.class);
        louFengDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        louFengDetailActivity.tabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THkcSBHgGAQUWHxA="), TabLayout.class);
        louFengDetailActivity.scrollView = (NestedScrollView) c.c(view, R.id.scrollView, e.a("UQsGCA9THkAQFFsLFDwKDkBF"), NestedScrollView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        LouFengDetailActivity louFengDetailActivity = this.b;
        if (louFengDetailActivity != null) {
            this.b = null;
            louFengDetailActivity.ivHead = null;
            louFengDetailActivity.rvList = null;
            louFengDetailActivity.tvArea = null;
            louFengDetailActivity.tvTime = null;
            louFengDetailActivity.tvCount = null;
            louFengDetailActivity.tvPrice = null;
            louFengDetailActivity.tvWechat = null;
            louFengDetailActivity.tvQq = null;
            louFengDetailActivity.tvPhone = null;
            louFengDetailActivity.tvDetail = null;
            louFengDetailActivity.tabLayout = null;
            louFengDetailActivity.scrollView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
