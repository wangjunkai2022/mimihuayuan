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
import f.e.a.j.g0.n.c;
import f.e.a.k.f;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class PageView extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1815d;
    @BindView
    public ViewPager mViewPager;
    @SuppressLint({"HandlerLeak"})
    public Handler b = new a();

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f1814c = new b();
    public AdPagerAdapter a = new AdPagerAdapter(getContext());

    /* loaded from: classes.dex */
    public class a extends Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            PageView.this.b.removeCallbacksAndMessages(null);
            PageView.this.b.sendEmptyMessageDelayed(0, 6000);
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
            if (pageView.f1815d) {
                ViewPager viewPager = pageView.mViewPager;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1, true);
                PageView pageView2 = PageView.this;
                pageView2.b.postDelayed(pageView2.f1814c, 6000);
            }
        }
    }

    public PageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setClipChildren(false);
        ButterKnife.b(this, LayoutInflater.from(getContext()).inflate(R.layout.widget_spike_pager_view, (ViewGroup) this, true));
        this.mViewPager.setOffscreenPageLimit(2);
        this.mViewPager.setPageTransformer(false, new f.e.a.j.g0.n.b());
        this.mViewPager.setAdapter(this.a);
        try {
            Field declaredField = ViewPager.class.getDeclaredField(e.a("WjEAFgQfVVYB"));
            declaredField.setAccessible(true);
            declaredField.set(this.mViewPager, new c(this.mViewPager.getContext(), new AccelerateInterpolator()));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f1815d) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                this.b.removeCallbacks(this.f1814c);
                this.b.postDelayed(this.f1814c, 6000);
            } else if (action == 0) {
                this.b.removeCallbacks(this.f1814c);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View, android.view.ViewGroup
    public void onDetachedFromWindow() {
        this.f1815d = false;
        this.b.removeCallbacksAndMessages(null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDisplayHint(int i2) {
        super.onDisplayHint(i2);
        f.a();
    }
}
