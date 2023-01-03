package f.e.a.j.l0;

import android.view.View;
import com.comeback.data.ui.test.TiktopAdapter;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements View.OnClickListener {
    public final /* synthetic */ TiktopAdapter.TiktopHolder a;

    public /* synthetic */ b(TiktopAdapter.TiktopHolder tiktopHolder) {
        this.a = tiktopHolder;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.b(view);
    }
}
