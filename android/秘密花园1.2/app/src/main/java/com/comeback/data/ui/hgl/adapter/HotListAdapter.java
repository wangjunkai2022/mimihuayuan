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
import com.comeback.data.ui.hgl.LiveActivity;
import com.comeback.data.ui.hgl.bean.ListBean;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HotListAdapter extends BaseAbstractAdapter<ListBean.DataBean.InfoBean.ListBeanS> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ListBean.DataBean.InfoBean.ListBeanS> {
        public ListBean.DataBean.InfoBean.ListBeanS a;
        public HotListAdapter b;
        @BindView
        public ImageView ivHead;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvPlayCount;

        public Holder(View view, HotListAdapter hotListAdapter) {
            super(view);
            this.b = hotListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ListBean.DataBean.InfoBean.ListBeanS listBeanS) {
            ListBean.DataBean.InfoBean.ListBeanS listBeanS2 = listBeanS;
            this.a = listBeanS2;
            h.u0(listBeanS2.getThumb(), this.ivImg);
            h.u0(listBeanS2.getAvatar_thumb(), this.ivHead);
            this.tvName.setText(listBeanS2.getUser_nicename());
            this.tvPlayCount.setText(listBeanS2.getNums());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1097c;

        /* compiled from: HotListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1098c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1098c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1098c;
                LiveActivity.l(holder.b.a, holder.a.getPull());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1097c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.ivHead = null;
                holder.tvName = null;
                holder.tvPlayCount = null;
                this.f1097c.setOnClickListener(null);
                this.f1097c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public HotListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_hgl, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
