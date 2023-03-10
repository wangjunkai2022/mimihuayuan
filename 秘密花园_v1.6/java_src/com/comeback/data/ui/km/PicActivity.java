package com.comeback.data.ui.km;

import android.content.Context;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class PicActivity extends BaseViewPagerActivity {
    public static void n(Context context) {
        a.u(context, PicActivity.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        super.e();
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJCCQ==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJCCw==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJCDw==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJCDA==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJDAQ==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJDCA==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJDCw==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJDCg==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJDDQ==")));
        arrayList.add(PicItemFragment.n(e.a("BlJaXVJDDA==")));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("0ezLgc7A0LD9g7L+n/b8"), e.a("0uf3gcXu3J3u"), e.a("0uPkjfbR3JbAga7g"), e.a("ZwMNEBIbVkAW"), e.a("0NztgcHo0JX1gKLXneLp"), e.a("YYfG14Lwtw=="), e.a("0ezLgc7A3pbt"), e.a("0OrSjPfv3pfN"), e.a("0MXjgNHJ3o7i"), e.a("0vXRgfDS3KjS")};
    }
}
