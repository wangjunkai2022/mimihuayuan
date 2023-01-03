package f.j.a.a.j;

import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.ViewPager;
import f.j.a.a.f.d;
import f.j.a.a.m.b;

/* compiled from: RefreshContentWrapper.java */
/* loaded from: classes.dex */
public class a implements d, f.j.a.a.l.a, ValueAnimator.AnimatorUpdateListener {
    public View a;
    public View b;

    /* renamed from: c  reason: collision with root package name */
    public View f6158c;

    /* renamed from: d  reason: collision with root package name */
    public View f6159d;

    /* renamed from: e  reason: collision with root package name */
    public View f6160e;

    /* renamed from: f  reason: collision with root package name */
    public int f6161f = 0;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6162g = true;

    /* renamed from: h  reason: collision with root package name */
    public boolean f6163h = true;

    /* renamed from: i  reason: collision with root package name */
    public d f6164i = new d();

    public a(@NonNull View view) {
        this.f6158c = view;
        this.b = view;
        this.a = view;
    }

    public boolean a() {
        return this.f6163h && this.f6164i.a(this.a);
    }

    public boolean b() {
        return this.f6162g && this.f6164i.b(this.a);
    }

    public View c(View view, PointF pointF, View view2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            PointF pointF2 = new PointF();
            while (childCount > 0) {
                childCount--;
                View childAt = viewGroup.getChildAt(childCount);
                if (b.h(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if (!(childAt instanceof ViewPager) && b.f(childAt)) {
                        return childAt;
                    }
                    pointF.offset(pointF2.x, pointF2.y);
                    View c2 = c(childAt, pointF, view2);
                    pointF.offset(-pointF2.x, -pointF2.y);
                    return c2;
                }
            }
        }
        return view2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void d(int r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = -1
            r2 = 0
            r3 = 0
            if (r7 == r1) goto L_0x0021
            android.view.View r4 = r5.b
            android.view.View r7 = r4.findViewById(r7)
            if (r7 == 0) goto L_0x0021
            if (r6 <= 0) goto L_0x0016
            float r4 = (float) r6
            r7.setTranslationY(r4)
            r7 = 1
            goto L_0x0022
        L_0x0016:
            float r4 = r7.getTranslationY()
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 <= 0) goto L_0x0021
            r7.setTranslationY(r3)
        L_0x0021:
            r7 = 0
        L_0x0022:
            if (r8 == r1) goto L_0x003e
            android.view.View r1 = r5.b
            android.view.View r8 = r1.findViewById(r8)
            if (r8 == 0) goto L_0x003e
            if (r6 >= 0) goto L_0x0033
            float r7 = (float) r6
            r8.setTranslationY(r7)
            goto L_0x003f
        L_0x0033:
            float r0 = r8.getTranslationY()
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L_0x003e
            r8.setTranslationY(r3)
        L_0x003e:
            r0 = r7
        L_0x003f:
            if (r0 != 0) goto L_0x0048
            android.view.View r7 = r5.b
            float r8 = (float) r6
            r7.setTranslationY(r8)
            goto L_0x004d
        L_0x0048:
            android.view.View r7 = r5.b
            r7.setTranslationY(r3)
        L_0x004d:
            android.view.View r7 = r5.f6159d
            if (r7 == 0) goto L_0x0059
            int r8 = java.lang.Math.max(r2, r6)
            float r8 = (float) r8
            r7.setTranslationY(r8)
        L_0x0059:
            android.view.View r7 = r5.f6160e
            if (r7 == 0) goto L_0x0065
            int r6 = java.lang.Math.min(r2, r6)
            float r6 = (float) r6
            r7.setTranslationY(r6)
        L_0x0065:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.j.a.a.j.a.d(int, int, int):void");
    }

    public ValueAnimator.AnimatorUpdateListener e(int i2) {
        View view = this.f6158c;
        if (view == null || i2 == 0) {
            return null;
        }
        if ((i2 >= 0 || !b.c(view, 1)) && (i2 <= 0 || !b.c(this.f6158c, -1))) {
            return null;
        }
        this.f6161f = i2;
        return this;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        try {
            float scaleY = ((float) (intValue - this.f6161f)) * this.f6158c.getScaleY();
            if (this.f6158c instanceof AbsListView) {
                b.j((AbsListView) this.f6158c, (int) scaleY);
            } else {
                this.f6158c.scrollBy(0, (int) scaleY);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f6161f = intValue;
    }
}
