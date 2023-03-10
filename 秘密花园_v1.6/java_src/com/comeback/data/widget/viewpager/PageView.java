package com.comeback.data.widget.viewpager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.comeback.data.widget.viewpager.AdPagerAdapter;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.k.f;
import f.e.a.m.b.c;
import java.lang.reflect.Field;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class PageView extends FrameLayout {
    public AdPagerAdapter a;
    @SuppressLint({"HandlerLeak"})
    public Handler b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f2360c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2361d;
    @BindView
    public ViewPager mViewPager;

    /* loaded from: classes.dex */
    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            PageView.this.b.removeCallbacksAndMessages(null);
            PageView.this.b.sendEmptyMessageDelayed(0, 6000L);
            ViewPager viewPager = PageView.this.mViewPager;
            viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
        }
    }

    /* loaded from: classes.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PageView pageView = PageView.this;
            if (pageView.f2361d) {
                ViewPager viewPager = pageView.mViewPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
                PageView pageView2 = PageView.this;
                pageView2.b.postDelayed(pageView2.f2360c, 6000L);
            }
        }
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.b = new a();
        this.f2360c = new b();
        setClipChildren(false);
        ButterKnife.b(this, LayoutInflater.from(getContext()).inflate(R.layout.widget_spike_pager_view, (ViewGroup) this, true));
        this.a = new AdPagerAdapter(getContext());
        this.mViewPager.setOffscreenPageLimit(2);
        this.mViewPager.setPageTransformer(false, new f.e.a.m.b.b());
        this.mViewPager.setAdapter(this.a);
        try {
            Field declaredField = ViewPager.class.getDeclaredField(e.a("WjEAFgQfVVYB"));
            declaredField.setAccessible(true);
            declaredField.set(this.mViewPager, new c(this.mViewPager.getContext(), new AccelerateInterpolator()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a(List<f.e.a.g.a> list, AdPagerAdapter.a aVar) {
        if (list != null && list.size() != 0) {
            AdPagerAdapter adPagerAdapter = this.a;
            adPagerAdapter.f2355e = aVar;
            adPagerAdapter.f2358c.clear();
            if (list.size() > 0) {
                adPagerAdapter.f2358c.addAll(list);
            }
            adPagerAdapter.notifyDataSetChanged();
            this.mViewPager.setCurrentItem((this.a.getCount() / 2) + new Random().nextInt(list.size()));
        }
        this.f2361d = true;
        this.b.postDelayed(this.f2360c, 6000L);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f2361d) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                this.b.removeCallbacks(this.f2360c);
                this.b.postDelayed(this.f2360c, 6000L);
            } else if (action == 0) {
                this.b.removeCallbacks(this.f2360c);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f2361d = false;
        this.b.removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDisplayHint(int i2) {
        super.onDisplayHint(i2);
        f.a();
    }
}
