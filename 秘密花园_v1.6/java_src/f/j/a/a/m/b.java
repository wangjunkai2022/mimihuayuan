package f.j.a.a.m;

import android.content.res.Resources;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.webkit.WebView;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.ScrollingView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.ViewPager;
/* compiled from: SmartUtil.java */
/* loaded from: classes.dex */
public class b implements Interpolator {
    public static int b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static int f6267c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static float f6268d = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: e  reason: collision with root package name */
    public static final float f6269e;

    /* renamed from: f  reason: collision with root package name */
    public static final float f6270f;
    public int a;

    static {
        float k2 = 1.0f / k(1.0f);
        f6269e = k2;
        f6270f = 1.0f - (k(1.0f) * k2);
    }

    public b(int i2) {
        this.a = i2;
    }

    public static boolean a(@NonNull View view, PointF pointF, boolean z) {
        if (view.canScrollVertically(1) && view.getVisibility() == 0) {
            return false;
        }
        if ((view instanceof ViewGroup) && pointF != null && !g(view)) {
            ViewGroup viewGroup = (ViewGroup) view;
            PointF pointF2 = new PointF();
            for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount - 1);
                if (h(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ("fixed".equals(childAt.getTag()) || "fixed-top".equals(childAt.getTag())) {
                        return false;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    boolean a = a(childAt, pointF, z);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return a;
                }
            }
        }
        return z || view.canScrollVertically(-1);
    }

    public static boolean b(@NonNull View view, PointF pointF) {
        if (view.canScrollVertically(-1) && view.getVisibility() == 0) {
            return false;
        }
        if (!(view instanceof ViewGroup) || pointF == null) {
            return true;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        PointF pointF2 = new PointF();
        for (int childCount = viewGroup.getChildCount(); childCount > 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount - 1);
            if (h(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                if ("fixed".equals(childAt.getTag()) || "fixed-bottom".equals(childAt.getTag())) {
                    return false;
                }
                pointF.offset(pointF2.x, pointF2.y);
                boolean b2 = b(childAt, pointF);
                pointF.offset(-pointF2.x, -pointF2.y);
                return b2;
            }
        }
        return true;
    }

    public static boolean c(@NonNull View view, int i2) {
        return view.canScrollVertically(i2);
    }

    public static int d(float f2) {
        return (int) ((f2 * f6268d) + 0.5f);
    }

    public static void e(View view, int i2) {
        if (view instanceof ScrollView) {
            ((ScrollView) view).fling(i2);
        } else if (view instanceof AbsListView) {
            ((AbsListView) view).fling(i2);
        } else if (view instanceof WebView) {
            ((WebView) view).flingScroll(0, i2);
        } else if (view instanceof NestedScrollView) {
            ((NestedScrollView) view).fling(i2);
        } else if (view instanceof RecyclerView) {
            ((RecyclerView) view).fling(0, i2);
        }
    }

    public static boolean f(View view) {
        return g(view) || (view instanceof ViewPager) || (view instanceof NestedScrollingParent);
    }

    public static boolean g(View view) {
        return (view instanceof AbsListView) || (view instanceof ScrollView) || (view instanceof ScrollingView) || (view instanceof WebView) || (view instanceof NestedScrollingChild);
    }

    public static boolean h(@NonNull View view, @NonNull View view2, float f2, float f3, PointF pointF) {
        if (view2.getVisibility() != 0) {
            return false;
        }
        float[] fArr = {f2, f3};
        fArr[0] = fArr[0] + (view.getScrollX() - view2.getLeft());
        fArr[1] = fArr[1] + (view.getScrollY() - view2.getTop());
        boolean z = fArr[0] >= 0.0f && fArr[1] >= 0.0f && fArr[0] < ((float) view2.getWidth()) && fArr[1] < ((float) view2.getHeight());
        if (z) {
            pointF.set(fArr[0] - f2, fArr[1] - f3);
        }
        return z;
    }

    public static int i(View view) {
        int makeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(0, 0, layoutParams.width);
        int i2 = layoutParams.height;
        if (i2 > 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        } else {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
        return view.getMeasuredHeight();
    }

    public static void j(@NonNull AbsListView absListView, int i2) {
        absListView.scrollListBy(i2);
    }

    public static float k(float f2) {
        float f3 = f2 * 8.0f;
        if (f3 < 1.0f) {
            return f3 - (1.0f - ((float) Math.exp(-f3)));
        }
        return f.b.a.a.a.a(1.0f, (float) Math.exp(1.0f - f3), 0.63212055f, 0.36787945f);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        if (this.a == 1) {
            float f3 = 1.0f - f2;
            return 1.0f - (f3 * f3);
        }
        float k2 = k(f2) * f6269e;
        return k2 > 0.0f ? k2 + f6270f : k2;
    }
}
