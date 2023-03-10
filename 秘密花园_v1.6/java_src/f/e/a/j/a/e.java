package f.e.a.j.a;

import com.comeback.data.base.BannerAdapter;
import com.comeback.data.ui.aimeiju.HomeFragment;
import com.comeback.data.ui.aimeiju.MovieDetailActivity;
/* compiled from: HomeFragment.java */
/* loaded from: classes.dex */
public class e implements BannerAdapter.a {
    public final /* synthetic */ HomeFragment.a a;

    public e(HomeFragment.a aVar) {
        this.a = aVar;
    }

    public void a(String str, int i2) {
        MovieDetailActivity.n(HomeFragment.this.getContext(), str);
    }
}
