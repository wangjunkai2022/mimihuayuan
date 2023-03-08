package f.e.a.f;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.comeback.data.base.BaseViewPagerActivity;
import com.google.android.material.tabs.TabLayout;
import java.lang.reflect.Field;

/* compiled from: BaseViewPagerActivity.java */
/* loaded from: classes.dex */
public class l implements Runnable {
    public final /* synthetic */ TabLayout a;
    public final /* synthetic */ int b;

    public l(BaseViewPagerActivity baseViewPagerActivity, TabLayout tabLayout, int i2) {
        this.a = tabLayout;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            LinearLayout linearLayout = (LinearLayout) this.a.getChildAt(0);
            for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                View childAt = linearLayout.getChildAt(i2);
                Field declaredField = childAt.getClass().getDeclaredField(f.e.a.e.a("QwcbED0aXEQ="));
                declaredField.setAccessible(true);
                TextView textView = (TextView) declaredField.get(childAt);
                childAt.setPadding(0, 0, 0, 0);
                int width = textView.getWidth();
                if (width == 0) {
                    textView.measure(0, 0);
                    width = textView.getMeasuredWidth();
                }
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                layoutParams.width = width;
                layoutParams.leftMargin = this.b;
                layoutParams.rightMargin = this.b;
                childAt.setLayoutParams(layoutParams);
                childAt.invalidate();
            }
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        }
    }
}
