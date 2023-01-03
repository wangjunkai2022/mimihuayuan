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
import com.comeback.data.ui.maomi.bean.VoiceList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VoiceListAdapter extends BaseAbstractAdapter<VoiceList.DataBeanX.DataBean> {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1605d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VoiceList.DataBeanX.DataBean> {
        public VoiceListAdapter a;
        public VoiceList.DataBeanX.DataBean b;
        @BindView
        public RatioImageView mIvImg;
        @BindView
        public TextView mTvPlayCount;
        @BindView
        public TextView mTvTitle;

        public Holder(View view, VoiceListAdapter voiceListAdapter) {
            super(view);
            this.a = voiceListAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VoiceList.DataBeanX.DataBean dataBean) {
            VoiceList.DataBeanX.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.mTvTitle.setText(dataBean2.getName());
            this.mTvPlayCount.setText(dataBean2.getBrowses());
            h.L0(dataBean2.getThumb(), this.mIvImg, 4);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1606c;

        /* compiled from: VoiceListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1607c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1607c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1607c;
                VoiceListAdapter voiceListAdapter = holder.a;
                if (voiceListAdapter.f1605d) {
                    VoiceAnchorSpecialActivity.s(voiceListAdapter.a, holder.b.getId(), holder.b.getAnchor_id(), holder.b.getThumb(), holder.b.getName());
                } else {
                    VoicePlayActivity.n(voiceListAdapter.a, holder.b);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.mIvImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THl46EH0KH00="), RatioImageView.class);
            holder.mTvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THl4nEGQLGRMgBEIMF0M="), TextView.class);
            holder.mTvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THl4nEGAODAYGTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQBCVsTXw=="));
            this.f1606c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.mIvImg = null;
                holder.mTvPlayCount = null;
                holder.mTvTitle = null;
                this.f1606c.setOnClickListener(null);
                this.f1606c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VoiceListAdapter(Context context, boolean z) {
        super(context);
        this.f1605d = z;
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/maomi/bean/VoiceList$DataBeanX$DataBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_mm_voice_card, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
