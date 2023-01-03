package f.e.a.j.j0.b;

import androidx.recyclerview.widget.RecyclerView;
import com.comeback.data.ui.sex8.ui.LouFengDetailActivity;
import com.google.android.material.tabs.TabLayout;
import f.e.a.e;

/* compiled from: LouFengDetailActivity.java */
/* loaded from: classes.dex */
public class b implements TabLayout.OnTabSelectedListener {
    public final /* synthetic */ LouFengDetailActivity a;

    public b(LouFengDetailActivity louFengDetailActivity) {
        this.a = louFengDetailActivity;
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
