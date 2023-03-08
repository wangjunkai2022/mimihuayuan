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
import com.comeback.data.ui.sex8.bean.YXHostBean;
import com.comeback.data.ui.sex8.ui.YXAuthorDetailActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class AuthorListAdapter extends BaseAbstractAdapter<YXHostBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<YXHostBean> {
        public YXHostBean a;
        public AuthorListAdapter b;
        @BindView
        public ImageView ivPic;
        @BindView
        public TextView tvDetail;
        @BindView
        public TextView tvTitle;

        public Holder(View view, AuthorListAdapter authorListAdapter) {
            super(view);
            this.b = authorListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(YXHostBean yXHostBean) {
            YXHostBean yXHostBean2 = yXHostBean;
            this.a = yXHostBean2;
            h.u0(yXHostBean2.getImg(), this.ivPic);
            this.tvTitle.setText(yXHostBean2.getName());
            this.tvDetail.setText(yXHostBean2.getDesc());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1927c;

        /* compiled from: AuthorListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1928c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1928c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1928c;
                YXAuthorDetailActivity.t(holder.b.a, holder.a);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivPic = (ImageView) c.c(view, R.id.iv_pic, e.a("UQsGCA9THloFNl0EXw=="), ImageView.class);
            holder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.tvDetail = (TextView) c.c(view, R.id.tv_detail, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1927c = b;
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
                holder.tvDetail = null;
                this.f1927c.setOnClickListener(null);
                this.f1927c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public AuthorListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_sex8_yx_author, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
