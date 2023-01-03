package com.comeback.data.ui.gkj.fragment;

import butterknife.BindView;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerAdapter;
import com.comeback.data.widget.CustomViewPager;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.m.n.a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class UpdateFragment extends BaseFragment {
    @BindView
    public CustomViewPager mViewPager;

    @Override // com.comeback.data.base.BaseFragment
    public void a() {
        getArguments().getString(e.a("XgY="));
    }

    @Override // com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_gkj_update;
    }

    @Override // com.comeback.data.base.BaseFragment
    public void e() {
    }

    @Override // com.comeback.data.base.BaseFragment
    public void f() {
        ArrayList arrayList = new ArrayList();
        long currentTimeMillis = System.currentTimeMillis();
        for (int i2 = 0; i2 < 7; i2++) {
            a aVar = new a();
            aVar.a = currentTimeMillis / 1000;
            if (i2 == 0) {
                aVar.b = e.a("eQcU");
            } else if (i2 == 1) {
                aVar.b = e.a("0frLgvzW");
            } else {
                aVar.b = new SimpleDateFormat(e.a("cg=="), Locale.CHINA).format(new Date(currentTimeMillis));
            }
            arrayList.add(0, aVar);
            currentTimeMillis -= 86400000;
        }
        String[] strArr = new String[arrayList.size()];
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            a aVar2 = (a) arrayList.get(i3);
            strArr[i3] = aVar2.b;
            arrayList2.add(WeekTypeFragment.o(String.valueOf(aVar2.a)));
        }
        int i4 = 8;
        if (arrayList.size() - 1 <= 8) {
            i4 = arrayList.size() - 1;
        }
        this.mViewPager.setOffscreenPageLimit(i4);
        this.mViewPager.setAdapter(new BaseViewPagerAdapter(getChildFragmentManager(), strArr, arrayList2));
        this.mViewPager.setCurrentItem(arrayList.size() - 1, false);
    }
}
