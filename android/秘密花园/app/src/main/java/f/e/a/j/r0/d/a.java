package f.e.a.j.r0.d;

import android.view.View;
import com.comeback.data.ui.xj.adapter.ScreenAdapter;
import com.comeback.data.ui.xj.bean.VideoBean;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnClickListener {
    public final /* synthetic */ ScreenAdapter.HomeListHolder a;
    public final /* synthetic */ VideoBean b;

    public /* synthetic */ a(ScreenAdapter.HomeListHolder homeListHolder, VideoBean videoBean) {
        this.a = homeListHolder;
        this.b = videoBean;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.a.b(this.b, view);
    }
}
