package com.comeback.data.ui.fulao2.adapter;

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
import com.comeback.data.ui.fulao2.PlayActivity;
import com.comeback.data.ui.fulao2.bean.VideosBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class RankVideoAdapter extends BaseAbstractAdapter<VideosBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideosBean> {
        public RankVideoAdapter a;
        public VideosBean b;
        @BindView
        public ImageView ivBand;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvNum;
        @BindView
        public TextView tvTime;

        public Holder(View view, RankVideoAdapter rankVideoAdapter) {
            super(view);
            this.a = rankVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideosBean videosBean) {
            VideosBean videosBean2 = videosBean;
            this.b = videosBean2;
            h.C0(videosBean2.getCover(), this.ivCover, 20);
            h.m1(this.tvTime, videosBean2.getTime());
            h.m1(this.tvName, videosBean2.getVideo_title());
            int adapterPosition = getAdapterPosition();
            TextView textView = this.tvNum;
            textView.setText(e.a("eS1N") + (adapterPosition + 1));
            if (adapterPosition == 0) {
                this.ivBand.setImageResource(R.drawable.ic_gold_medal);
                this.ivBand.setVisibility(0);
            } else if (adapterPosition == 1) {
                this.ivBand.setImageResource(R.drawable.ic_silver_medal);
                this.ivBand.setVisibility(0);
            } else if (adapterPosition == 2) {
                this.ivBand.setImageResource(R.drawable.ic_bronze_medal);
                this.ivBand.setVisibility(0);
            } else {
                this.ivBand.setVisibility(8);
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f812c;

        /* compiled from: RankVideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f813c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f813c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f813c;
                PlayActivity.n(holder.a.a, holder.b.getVideo_id());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivCover = (ImageView) c.c(view, R.id.iv_cover, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            holder.tvNum = (TextView) c.c(view, R.id.tv_num, e.a("UQsGCA9THkcFKEEKXw=="), TextView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvTime = (TextView) c.c(view, R.id.tv_time, e.a("UQsGCA9THkcFMl0KHU0="), TextView.class);
            holder.ivBand = (ImageView) c.c(view, R.id.iv_band, e.a("UQsGCA9THloFJFUJHE0="), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f812c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivCover = null;
                holder.tvNum = null;
                holder.tvName = null;
                holder.tvTime = null;
                holder.ivBand = null;
                this.f812c.setOnClickListener(null);
                this.f812c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public RankVideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fulao2_video_rank, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
