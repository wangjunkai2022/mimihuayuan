package f.j.a.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;

/* compiled from: SmartRefreshLayout.java */
/* loaded from: classes.dex */
public class e implements Runnable {
    public final /* synthetic */ float a;
    public final /* synthetic */ int b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ boolean f6108c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SmartRefreshLayout f6109d;

    /* compiled from: SmartRefreshLayout.java */
    /* loaded from: classes.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            SmartRefreshLayout smartRefreshLayout = e.this.f6109d;
            if (smartRefreshLayout.K0 != null) {
                ((SmartRefreshLayout.k) smartRefreshLayout.x0).b(((Integer) valueAnimator.getAnimatedValue()).intValue(), true);
            }
        }
    }

    /* compiled from: SmartRefreshLayout.java */
    /* loaded from: classes.dex */
    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SmartRefreshLayout smartRefreshLayout = e.this.f6109d;
            if (smartRefreshLayout.K0 != null) {
                smartRefreshLayout.K0 = null;
                f.j.a.a.g.b bVar = smartRefreshLayout.y0;
                f.j.a.a.g.b bVar2 = f.j.a.a.g.b.ReleaseToRefresh;
                if (bVar != bVar2) {
                    ((SmartRefreshLayout.k) smartRefreshLayout.x0).d(bVar2);
                }
                e eVar = e.this;
                eVar.f6109d.setStateRefreshing(!eVar.f6108c);
            }
        }
    }

    public e(SmartRefreshLayout smartRefreshLayout, float f2, int i2, boolean z) {
        this.f6109d = smartRefreshLayout;
        this.a = f2;
        this.b = i2;
        this.f6108c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        SmartRefreshLayout smartRefreshLayout = this.f6109d;
        if (smartRefreshLayout.z0 == f.j.a.a.g.b.Refreshing) {
            ValueAnimator valueAnimator = smartRefreshLayout.K0;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            SmartRefreshLayout smartRefreshLayout2 = this.f6109d;
            smartRefreshLayout2.f2374j = ((float) smartRefreshLayout2.getMeasuredWidth()) / 2.0f;
            ((SmartRefreshLayout.k) this.f6109d.x0).d(f.j.a.a.g.b.PullDownToRefresh);
            SmartRefreshLayout smartRefreshLayout3 = this.f6109d;
            smartRefreshLayout3.K0 = ValueAnimator.ofInt(smartRefreshLayout3.b, (int) (((float) smartRefreshLayout3.i0) * this.a));
            this.f6109d.K0.setDuration((long) this.b);
            ValueAnimator valueAnimator2 = this.f6109d.K0;
            int i2 = f.j.a.a.m.b.b;
            valueAnimator2.setInterpolator(new f.j.a.a.m.b(0));
            this.f6109d.K0.addUpdateListener(new a());
            this.f6109d.K0.addListener(new b());
            this.f6109d.K0.start();
        }
    }
}
