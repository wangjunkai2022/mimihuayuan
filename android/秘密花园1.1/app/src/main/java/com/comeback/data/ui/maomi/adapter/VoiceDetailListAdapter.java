package com.comeback.data.ui.maomi.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.Unbinder;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.maomi.VoiceAnchorSpecialActivity;
import com.comeback.data.ui.maomi.VoicePlayActivity;
import com.comeback.data.ui.maomi.bean.VoiceDetailList;
import com.comeback.data.ui.maomi.bean.VoiceList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VoiceDetailListAdapter extends BaseAbstractAdapter<VoiceDetailList.DataBeanX.DataBean> {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1602d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VoiceDetailList.DataBeanX.DataBean> {
        public VoiceDetailListAdapter a;
        public VoiceDetailList.DataBeanX.DataBean b;
        @BindView
        public RatioImageView mIvImg;
        @BindView
        public TextView mTvName;
        @BindView
        public TextView mTvPlayCount;
        @BindView
        public TextView mTvPraiseCount;

        public Holder(View view, VoiceDetailListAdapter voiceDetailListAdapter) {
            super(view);
            this.a = voiceDetailListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VoiceDetailList.DataBeanX.DataBean dataBean) {
            VoiceDetailList.DataBeanX.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            h.z0(dataBean2.getImage(), this.mIvImg);
            this.mTvName.setText(dataBean2.getName());
            this.mTvPlayCount.setText(dataBean2.getPlays());
            this.mTvPraiseCount.setText(dataBean2.getPraises());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1603c;

        /* compiled from: VoiceDetailListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1604c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1604c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1604c;
                VoiceDetailListAdapter voiceDetailListAdapter = holder.a;
                if (voiceDetailListAdapter.f1602d) {
                    VoiceAnchorSpecialActivity.s(voiceDetailListAdapter.a, holder.b.getId(), holder.b.getAnchor_id(), holder.b.getImage(), holder.b.getName());
                    return;
                }
                VoiceList.DataBeanX.DataBean dataBean = new VoiceList.DataBeanX.DataBean();
                dataBean.copy(holder.b);
                VoicePlayActivity.n(holder.a.a, dataBean);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.mIvImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), RatioImageView.class);
            holder.mTvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THl4nEHoGFQ9E"), TextView.class);
            holder.mTvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THl4nEGQLGRMgBEIMF0M="), TextView.class);
            holder.mTvPraiseCount = (TextView) c.c(view, R.id.tv_praise_count, e.a("UQsGCA9THl4nEGQVGQMQDnQNFgofVA=="), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1603c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.mIvImg = null;
                holder.mTvName = null;
                holder.mTvPlayCount = null;
                holder.mTvPraiseCount = null;
                this.f1603c.setOnClickListener(null);
                this.f1603c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VoiceDetailListAdapter(Context context, boolean z) {
        super(context);
        this.f1602d = z;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_mm_voice_list, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
