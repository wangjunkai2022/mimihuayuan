package com.comeback.data.base;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;
import java.lang.reflect.Field;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class BaseViewPagerFragment extends BaseFragment {
    @BindView
    public TabLayout mTabLayout;
    @BindView
    public CustomViewPager mViewPager;

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_viewpage;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList<BaseFragment> h2 = h();
        this.mViewPager.setOffscreenPageLimit(h2.size() + (-1) <= 8 ? h2.size() - 1 : 8);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), i(), h2));
    }

    public abstract ArrayList<BaseFragment> h();

    public abstract String[] i();

    public /* synthetic */ void j(int i2) {
        try {
            LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
            for (int i3 = 0; i3 < linearLayout.getChildCount(); i3++) {
                View childAt = linearLayout.getChildAt(i3);
                Field declaredField = childAt.getClass().getDeclaredField(e.a("QwcbED0aXEQ="));
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
                layoutParams.leftMargin = i2;
                layoutParams.rightMargin = i2;
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
