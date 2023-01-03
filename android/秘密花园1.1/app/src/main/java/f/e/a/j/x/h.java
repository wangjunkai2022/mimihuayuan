package f.e.a.j.x;

import com.comeback.data.ui.km2.MMDetailActivity;
import com.google.android.material.tabs.TabLayout;

/* compiled from: MMDetailActivity.java */
/* loaded from: classes.dex */
public class h implements TabLayout.OnTabSelectedListener {
    public final /* synthetic */ MMDetailActivity a;

    public h(MMDetailActivity mMDetailActivity) {
        this.a = mMDetailActivity;
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabReselected(TabLayout.Tab tab) {
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabSelected(TabLayout.Tab tab) {
        boolean equals = tab.getText().equals(f.e.a.e.a("09rJgNHJ3YzSgLXI"));
        this.a.scrollView.setVisibility(equals ? 0 : 8);
        this.a.rvList.setVisibility(equals ? 8 : 0);
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabUnselected(TabLayout.Tab tab) {
    }
}
