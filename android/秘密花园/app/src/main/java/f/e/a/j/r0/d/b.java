package f.e.a.j.r0.d;

import android.view.View;
import com.comeback.data.ui.xj.adapter.ShortVideoAdapter;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {
    public final /* synthetic */ ShortVideoAdapter.TiktopHolder a;

    public /* synthetic */ b(ShortVideoAdapter.TiktopHolder tiktopHolder) {
        this.a = tiktopHolder;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.b(view);
    }
}
