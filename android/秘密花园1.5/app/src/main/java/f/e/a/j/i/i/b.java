package f.e.a.j.i.i;

import com.comeback.data.ui.ds.fragment.DiscoverFragment;
import com.google.android.material.tabs.TabLayout;

/* compiled from: DiscoverFragment.java */
/* loaded from: classes.dex */
public class b implements TabLayout.OnTabSelectedListener {
    public final /* synthetic */ DiscoverFragment a;

    public b(DiscoverFragment discoverFragment) {
        this.a = discoverFragment;
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabReselected(TabLayout.Tab tab) {
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabSelected(TabLayout.Tab tab) {
        this.a.f632j = (String) tab.getTag();
        this.a.refreshLayout.h();
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabUnselected(TabLayout.Tab tab) {
    }
}
