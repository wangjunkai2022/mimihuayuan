package com.comeback.data.ui.xj.fragment;

import com.comeback.data.base.BaseRefreshFragment;
import com.comeback.data.base.BaseVRefreshFragment;
import com.comeback.data.ui.xj.adapter.VMovieItemAdapter;
import com.comeback.data.ui.xj.adapter.VStarAdapter;
import com.comeback.data.ui.xj.adapter.VTitle1Adapter;
import com.comeback.data.ui.xj.bean.Channel;
import com.comeback.data.ui.xj.bean.VideoBean;
import com.comeback.secret.garden.R;
import f.a.a.a.l.c;
import f.a.a.a.l.g;
import f.a.a.a.l.l;
import f.e.a.j.s0.g.b;
import java.util.List;
/* loaded from: classes.dex */
public class ChannelFragment extends BaseVRefreshFragment {

    /* loaded from: classes.dex */
    public class a extends BaseRefreshFragment.a<Channel> {

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ int f2332f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i2) {
            super();
            this.f2332f = i2;
        }

        @Override // m.j
        public void f(Object obj) {
            Channel channel = (Channel) obj;
            if (this.f2332f == 1) {
                ChannelFragment.this.m();
            }
            ChannelFragment.q(ChannelFragment.this, channel);
        }
    }

    public static void q(ChannelFragment channelFragment, Channel channel) {
        if (channelFragment != null) {
            List<Channel.DataBean.RowsBean> actorrows = channel.getData().getActorrows();
            List<Channel.DataBean.RowsBean> rows = channel.getData().getRows();
            if (actorrows != null && actorrows.size() != 0 && channelFragment.f116g == 1) {
                channelFragment.f120i.b(new VStarAdapter(channelFragment.getContext(), new l(), actorrows));
            }
            if (rows == null || rows.size() == 0) {
                return;
            }
            for (Channel.DataBean.RowsBean rowsBean : rows) {
                List<VideoBean> vodrows = rowsBean.getVodrows();
                channelFragment.f120i.b(new VTitle1Adapter(channelFragment.getContext(), rowsBean, new c()));
                g gVar = new g(2);
                gVar.D(5);
                gVar.C(5);
                gVar.s = true;
                channelFragment.f120i.b(new VMovieItemAdapter(channelFragment.getContext(), vodrows, gVar));
            }
            return;
        }
        throw null;
    }

    @Override // com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public int b() {
        return R.layout.fragment_xj_channel;
    }

    @Override // com.comeback.data.base.BaseVRefreshFragment, com.comeback.data.base.BaseRefreshFragment, com.comeback.data.base.BaseFragment
    public void f() {
        super.f();
        this.refreshLayout.w(R.color.bg_transparent100, R.color.basic_third_text);
    }

    @Override // com.comeback.data.base.BaseRefreshFragment
    public void l(int i2) {
        g(b.a().b(i2), new a(i2));
    }
}
