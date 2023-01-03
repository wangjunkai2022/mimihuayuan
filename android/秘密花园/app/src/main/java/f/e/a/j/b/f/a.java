package f.e.a.j.b.f;

import com.comeback.data.ui.avbobo.bean.ChannelList;
import com.comeback.data.ui.avbobo.fragment.HomeTypeFragment;
import com.comeback.data.ui.commom.PPTAdapter;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements PPTAdapter.b {
    public final /* synthetic */ HomeTypeFragment a;
    public final /* synthetic */ ChannelList.DataBean b;

    public /* synthetic */ a(HomeTypeFragment homeTypeFragment, ChannelList.DataBean dataBean) {
        this.a = homeTypeFragment;
        this.b = dataBean;
    }

    @Override // com.comeback.data.ui.commom.PPTAdapter.b
    public final void a(int i2) {
        this.a.s(this.b, i2);
    }
}
