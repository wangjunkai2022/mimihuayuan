package com.comeback.data.ui.sex8.adapter;

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
import com.comeback.data.ui.sex8.bean.YXNovelList;
import com.comeback.data.ui.sex8.ui.YXDetailActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class NovelListAdapter extends BaseAbstractAdapter<YXNovelList.DataBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<YXNovelList.DataBean> {
        public YXNovelList.DataBean a;
        public NovelListAdapter b;
        @BindView
        public ImageView ivPic;
        @BindView
        public TextView tvAuthor;
        @BindView
        public TextView tvDetail;
        @BindView
        public TextView tvTitle;

        public Holder(View view, NovelListAdapter novelListAdapter) {
            super(view);
            this.b = novelListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(YXNovelList.DataBean dataBean) {
            YXNovelList.DataBean dataBean2 = dataBean;
            this.a = dataBean2;
            h.u0(dataBean2.getCover_img(), this.ivPic);
            this.tvTitle.setText(dataBean2.getName());
            this.tvAuthor.setText(dataBean2.getHost_name());
            TextView textView = this.tvDetail;
            textView.setText(dataBean2.getPlay_times() + "    " + dataBean2.getRadio_count() + e.a("3vnl"));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1937c;

        /* compiled from: NovelListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1938c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1938c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1938c;
                YXDetailActivity.s(holder.b.a, holder.a.getRadio_album_id());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivPic = (ImageView) c.c(view, R.id.iv_pic, e.a("UQsGCA9THloFNl0EXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
            holder.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1937c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivPic = null;
                holder.tvTitle = null;
                holder.tvAuthor = null;
                holder.tvDetail = null;
                this.f1937c.setOnClickListener(null);
                this.f1937c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public NovelListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_sex8_yx_novel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
