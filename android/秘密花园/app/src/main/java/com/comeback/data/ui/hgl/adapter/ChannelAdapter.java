package com.comeback.data.ui.hgl.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
import com.comeback.data.ui.hgl.LiveListActivity;
import com.comeback.data.ui.hgl.bean.ChannelList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ChannelAdapter extends BaseAbstractAdapter<ChannelList.PingtaiBean> {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1021d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ChannelList.PingtaiBean> {
        public ChannelList.PingtaiBean a;
        public ChannelAdapter b;
        @BindView
        public ImageView ivHead;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvPlayCount;

        public Holder(View view, ChannelAdapter channelAdapter) {
            super(view);
            this.b = channelAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ChannelList.PingtaiBean pingtaiBean) {
            ChannelList.PingtaiBean pingtaiBean2 = pingtaiBean;
            this.a = pingtaiBean2;
            h.u0(pingtaiBean2.getXinimg(), this.ivHead);
            this.tvName.setText(pingtaiBean2.getTitle());
            this.tvPlayCount.setText(pingtaiBean2.getNumber());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1022c;

        /* compiled from: ChannelAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1023c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1023c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1023c;
                LiveListActivity.s(holder.b.a, holder.a.getAddress(), holder.b.f1021d);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1022c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivHead = null;
                holder.tvName = null;
                holder.tvPlayCount = null;
                this.f1022c.setOnClickListener(null);
                this.f1022c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ChannelAdapter(Context context, boolean z) {
        super(context);
        this.f1021d = z;
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/hgl/bean/ChannelList$PingtaiBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_hgl_channel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
