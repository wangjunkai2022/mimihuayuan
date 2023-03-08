package com.comeback.data.ui.km2;

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
public class MMDetailActivity_ViewBinding implements Unbinder {
    public MMDetailActivity b;

    @UiThread
    public MMDetailActivity_ViewBinding(MMDetailActivity mMDetailActivity, View view) {
        this.b = mMDetailActivity;
        mMDetailActivity.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
        mMDetailActivity.rvList = (RecyclerView) c.c(view, R.id.rv_list, e.a("UQsGCA9THkEFKl0UDE0="), RecyclerView.class);
        mMDetailActivity.tvArea = (TextView) c.c(view, R.id.tv_area, e.a("UQsGCA9THkcFJ0YCGU0="), TextView.class);
        mMDetailActivity.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
        mMDetailActivity.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
        mMDetailActivity.tvPrice = (TextView) c.c(view, R.id.tv_price, e.a("UQsGCA9THkcFNkYOGw9E"), TextView.class);
        mMDetailActivity.tvWechat = (TextView) c.c(view, R.id.tv_wechat, e.a("UQsGCA9THkcFMVEEEAsXTA=="), TextView.class);
        mMDetailActivity.tvQq = (TextView) c.c(view, R.id.tv_qq, e.a("UQsGCA9THkcFN0VA"), TextView.class);
        mMDetailActivity.tvPhone = (TextView) c.c(view, R.id.tv_phone, e.a("UQsGCA9THkcFNlwIFg9E"), TextView.class);
        mMDetailActivity.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
        mMDetailActivity.tabLayout = (TabLayout) c.c(view, R.id.tab_layout, e.a("UQsGCA9THkcSBHgGAQUWHxA="), TabLayout.class);
        mMDetailActivity.scrollView = (NestedScrollView) c.c(view, R.id.scrollView, e.a("UQsGCA9THkAQFFsLFDwKDkBF"), NestedScrollView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void a() {
        MMDetailActivity mMDetailActivity = this.b;
        if (mMDetailActivity != null) {
            this.b = null;
            mMDetailActivity.ivHead = null;
            mMDetailActivity.rvList = null;
            mMDetailActivity.tvArea = null;
            mMDetailActivity.tvTime = null;
            mMDetailActivity.tvCount = null;
            mMDetailActivity.tvPrice = null;
            mMDetailActivity.tvWechat = null;
            mMDetailActivity.tvQq = null;
            mMDetailActivity.tvPhone = null;
            mMDetailActivity.tvDetail = null;
            mMDetailActivity.tabLayout = null;
            mMDetailActivity.scrollView = null;
            return;
        }
        throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
    }
}
