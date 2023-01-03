package f.j.a.a.m;

import com.google.android.material.appbar.AppBarLayout;

/* compiled from: DesignUtil.java */
/* loaded from: classes.dex */
public final class a implements AppBarLayout.OnOffsetChangedListener {
    public final /* synthetic */ f.j.a.a.l.a a;

    public a(f.j.a.a.l.a aVar) {
        this.a = aVar;
    }

    @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
    public void onOffsetChanged(AppBarLayout appBarLayout, int i2) {
        f.j.a.a.l.a aVar = this.a;
        boolean z = i2 >= 0;
        boolean z2 = appBarLayout.getTotalScrollRange() + i2 <= 0;
        f.j.a.a.j.a aVar2 = (f.j.a.a.j.a) aVar;
        aVar2.f6162g = z;
        aVar2.f6163h = z2;
    }
}
