package com.comeback.data.ui.aimeiju.adapter;

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
import com.comeback.data.ui.aimeiju.MovieDetailActivity;
import com.comeback.data.ui.aimeiju.bean.ListBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class VideoAdapter extends BaseAbstractAdapter<ListBean.DataBean.VodBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ListBean.DataBean.VodBean> {
        public VideoAdapter a;
        public ListBean.DataBean.VodBean b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tv_tag;
        @BindView
        public TextView tv_tag2;
        @BindView
        public TextView tv_title;

        public Holder(View view, VideoAdapter videoAdapter) {
            super(view);
            this.a = videoAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ListBean.DataBean.VodBean vodBean) {
            ListBean.DataBean.VodBean vodBean2 = vodBean;
            this.b = vodBean2;
            this.tv_title.setText(vodBean2.getName());
            h.u0(this.b.getPic(), this.ivCover);
            this.tv_tag.setText(this.b.getPf());
            this.tv_tag2.setText(this.b.getState());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f152c;

        /* compiled from: VideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f153c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f153c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f153c;
                MovieDetailActivity.n(holder.a.a, holder.b.getId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tv_tag = (TextView) c.c(view, R.id.tv_tag, e.a("UQsGCA9THkcFOUAGH00="), TextView.class);
            holder.tv_tag2 = (TextView) c.c(view, R.id.tv_tag2, e.a("UQsGCA9THkcFOUAGH1hE"), TextView.class);
            holder.tv_title = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFOUAODAYGTA=="), TextView.class);
            TextView textView = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFOVACDAsKBxA="), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f152c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tv_tag = null;
                holder.tv_tag2 = null;
                holder.tv_title = null;
                holder.ivCover = null;
                this.f152c.setOnClickListener(null);
                this.f152c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public VideoAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_aimeiju_movie, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
