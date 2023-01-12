package f.e.a.j.e;

import com.comeback.data.ui.cm.ScreenActivity;
import com.google.android.material.tabs.TabLayout;

/* compiled from: ScreenActivity.java */
/* loaded from: classes.dex */
public class c implements TabLayout.OnTabSelectedListener {
    public final /* synthetic */ ScreenActivity a;

    public c(ScreenActivity screenActivity) {
        this.a = screenActivity;
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabReselected(TabLayout.Tab tab) {
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabSelected(TabLayout.Tab tab) {
        this.a.f319e = (String) tab.getTag();
        this.a.refreshLayout.h();
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabUnselected(TabLayout.Tab tab) {
    }
}
