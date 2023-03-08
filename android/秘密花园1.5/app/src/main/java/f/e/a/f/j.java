package f.e.a.f;

import com.comeback.data.base.BaseViewPagerFragment;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {
    public final /* synthetic */ BaseViewPagerFragment a;
    public final /* synthetic */ int b;

    public /* synthetic */ j(BaseViewPagerFragment baseViewPagerFragment, int i2) {
        this.a = baseViewPagerFragment;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.j(this.b);
    }
}
