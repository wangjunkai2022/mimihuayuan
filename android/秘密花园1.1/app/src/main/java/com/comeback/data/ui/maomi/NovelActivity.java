package com.comeback.data.ui.maomi;

import android.content.Context;
import com.comeback.data.base.BaseFragment;
import com.comeback.data.base.BaseViewPagerActivity;
import com.comeback.data.ui.maomi.fragment.NovelListFragment;
import f.b.a.a.a;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NovelActivity extends BaseViewPagerActivity {
    public static void n(Context context) {
        a.u(context, NovelActivity.class);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity, com.comeback.data.base.BaseActivity
    public void e() {
        super.e();
        j(-1);
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public ArrayList<BaseFragment> l() {
        ArrayList<BaseFragment> arrayList = new ArrayList<>();
        arrayList.add(NovelListFragment.n(7));
        arrayList.add(NovelListFragment.n(8));
        arrayList.add(NovelListFragment.n(12));
        arrayList.add(NovelListFragment.n(13));
        arrayList.add(NovelListFragment.n(14));
        arrayList.add(NovelListFragment.n(32));
        arrayList.add(NovelListFragment.n(33));
        arrayList.add(NovelListFragment.n(34));
        return arrayList;
    }

    @Override // com.comeback.data.base.BaseViewPagerActivity
    public String[] m() {
        return new String[]{e.a("3uHegdPx34zzgLfi"), e.a("09jZgc3I3YnXgLnF"), e.a("0cLCgfDe36vWjr3V"), e.a("0szVgdHe3YrCgojB"), e.a("0eLEg+PC37nzg4PA"), e.a("0eHmjOLB3p/ijpv6"), e.a("0c/FgNXT3LzXg7Hf"), e.a("0u3Fg9rI3IP8jpvT")};
    }
}
