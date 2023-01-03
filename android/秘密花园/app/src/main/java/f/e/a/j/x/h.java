package f.e.a.j.x;

import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.ui.km2.MMDetailActivity;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;

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
        boolean equals = tab.getText().equals(e.a("09rJgNHJ3YzSgLXI"));
        int i2 = 0;
        this.a.scrollView.setVisibility(equals ? 0 : 8);
        RecyclerView recyclerView = this.a.rvList;
        if (equals) {
            i2 = 8;
        }
        recyclerView.setVisibility(i2);
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public void onTabUnselected(TabLayout.Tab tab) {
    }
}
