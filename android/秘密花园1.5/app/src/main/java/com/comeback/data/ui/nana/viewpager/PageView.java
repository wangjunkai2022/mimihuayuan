package com.comeback.data.ui.nana.viewpager;

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
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.h0.n.c;
import f.e.a.k.f;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class PageView extends FrameLayout {
    public AdPagerAdapter a;
    @SuppressLint({"HandlerLeak"})
    public Handler b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f1889c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1890d;
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
            if (pageView.f1890d) {
                ViewPager viewPager = pageView.mViewPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
                PageView pageView2 = PageView.this;
                pageView2.b.postDelayed(pageView2.f1889c, 6000L);
            }
        }
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.b = new a();
        this.f1889c = new b();
        setClipChildren(false);
        ButterKnife.b(this, LayoutInflater.from(getContext()).inflate(R.layout.widget_spike_pager_view, (ViewGroup) this, true));
        this.a = new AdPagerAdapter(getContext());
        this.mViewPager.setOffscreenPageLimit(2);
        this.mViewPager.setPageTransformer(false, new f.e.a.j.h0.n.b());
        this.mViewPager.setAdapter(this.a);
        try {
            Field declaredField = ViewPager.class.getDeclaredField(e.a("WjEAFgQfVVYB"));
            declaredField.setAccessible(true);
            declaredField.set(this.mViewPager, new c(this.mViewPager.getContext(), new AccelerateInterpolator()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f1890d) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                this.b.removeCallbacks(this.f1889c);
                this.b.postDelayed(this.f1889c, 6000L);
            } else if (action == 0) {
                this.b.removeCallbacks(this.f1889c);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f1890d = false;
        this.b.removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDisplayHint(int i2) {
        super.onDisplayHint(i2);
        f.a();
    }
}
