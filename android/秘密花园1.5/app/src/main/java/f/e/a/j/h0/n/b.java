package f.e.a.j.h0.n;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* compiled from: ScaleTransformer.java */
/* loaded from: classes.dex */
public class b implements ViewPager.PageTransformer {
    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f2) {
        if (f2 < -1.0f || f2 > 1.0f) {
            view.setScaleX(0.97f);
            view.setScaleY(0.92f);
        } else if (f2 < 0.0f) {
            view.setScaleX((f2 * 0.029999971f) + 1.0f);
            view.setScaleY((0.07999998f * f2) + 1.0f);
        } else {
            view.setScaleX(1.0f - (f2 * 0.029999971f));
            view.setScaleY(1.0f - (0.07999998f * f2));
        }
    }
}
