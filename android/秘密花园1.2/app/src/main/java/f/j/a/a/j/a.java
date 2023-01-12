package f.j.a.a.j;

import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import androidx.annotation.NonNull;
import androidx.viewpager.widget.ViewPager;

/* compiled from: RefreshContentWrapper.java */
/* loaded from: classes.dex */
public class a implements f.j.a.a.f.d, f.j.a.a.l.a, ValueAnimator.AnimatorUpdateListener {
    public View a;
    public View b;

    /* renamed from: c  reason: collision with root package name */
    public View f6233c;

    /* renamed from: d  reason: collision with root package name */
    public View f6234d;

    /* renamed from: e  reason: collision with root package name */
    public View f6235e;

    /* renamed from: f  reason: collision with root package name */
    public int f6236f = 0;

    /* renamed from: g  reason: collision with root package name */
    public boolean f6237g = true;

    /* renamed from: h  reason: collision with root package name */
    public boolean f6238h = true;

    /* renamed from: i  reason: collision with root package name */
    public d f6239i = new d();

    public a(@NonNull View view) {
        this.f6233c = view;
        this.b = view;
        this.a = view;
    }

    public boolean a() {
        return this.f6238h && this.f6239i.a(this.a);
    }

    public boolean b() {
        return this.f6237g && this.f6239i.b(this.a);
    }

    public View c(View view, PointF pointF, View view2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            PointF pointF2 = new PointF();
            while (childCount > 0) {
                childCount--;
                View childAt = viewGroup.getChildAt(childCount);
                if (f.j.a.a.m.b.h(viewGroup, childAt, pointF.x, pointF.y, pointF2)) {
                    if ((childAt instanceof ViewPager) || !f.j.a.a.m.b.f(childAt)) {
                        pointF.offset(pointF2.x, pointF2.y);
                        View c2 = c(childAt, pointF, view2);
                        pointF.offset(-pointF2.x, -pointF2.y);
                        return c2;
                    }
                    return childAt;
                }
            }
        }
        return view2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(int r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = -1
            r2 = 0
            r3 = 0
            if (r7 == r1) goto L21
            android.view.View r4 = r5.b
            android.view.View r7 = r4.findViewById(r7)
            if (r7 == 0) goto L21
            if (r6 <= 0) goto L16
            float r4 = (float) r6
            r7.setTranslationY(r4)
            r7 = 1
            goto L22
        L16:
            float r4 = r7.getTranslationY()
            int r4 = (r4 > r3 ? 1 : (r4 == r3 ? 0 : -1))
            if (r4 <= 0) goto L21
            r7.setTranslationY(r3)
        L21:
            r7 = 0
        L22:
            if (r8 == r1) goto L3e
            android.view.View r1 = r5.b
            android.view.View r8 = r1.findViewById(r8)
            if (r8 == 0) goto L3e
            if (r6 >= 0) goto L33
            float r7 = (float) r6
            r8.setTranslationY(r7)
            goto L3f
        L33:
            float r0 = r8.getTranslationY()
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L3e
            r8.setTranslationY(r3)
        L3e:
            r0 = r7
        L3f:
            if (r0 != 0) goto L48
            android.view.View r7 = r5.b
            float r8 = (float) r6
            r7.setTranslationY(r8)
            goto L4d
        L48:
            android.view.View r7 = r5.b
            r7.setTranslationY(r3)
        L4d:
            android.view.View r7 = r5.f6234d
            if (r7 == 0) goto L59
            int r8 = java.lang.Math.max(r2, r6)
            float r8 = (float) r8
            r7.setTranslationY(r8)
        L59:
            android.view.View r7 = r5.f6235e
            if (r7 == 0) goto L65
            int r6 = java.lang.Math.min(r2, r6)
            float r6 = (float) r6
            r7.setTranslationY(r6)
        L65:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.j.a.a.j.a.d(int, int, int):void");
    }

    public ValueAnimator.AnimatorUpdateListener e(int i2) {
        View view = this.f6233c;
        if (view == null || i2 == 0) {
            return null;
        }
        if ((i2 >= 0 || !f.j.a.a.m.b.c(view, 1)) && (i2 <= 0 || !f.j.a.a.m.b.c(this.f6233c, -1))) {
            return null;
        }
        this.f6236f = i2;
        return this;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        try {
            float scaleY = (intValue - this.f6236f) * this.f6233c.getScaleY();
            if (this.f6233c instanceof AbsListView) {
                f.j.a.a.m.b.j((AbsListView) this.f6233c, (int) scaleY);
            } else {
                this.f6233c.scrollBy(0, (int) scaleY);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.f6236f = intValue;
    }
}
