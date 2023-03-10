package com.comeback.data.widget.viewpager;

import android.content.Context;
import android.view.LayoutInflater;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class BaseCardPagerAdapter<T> extends RecyclingPagerAdapter {
    public boolean b = true;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<T> f2358c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public LayoutInflater f2359d;

    public BaseCardPagerAdapter(Context context) {
        this.f2359d = LayoutInflater.from(context);
    }

    public int b() {
        return this.f2358c.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.b ? b() * 10000 : b();
    }
}
