package com.comeback.data.ui.fruitPie.adapter;

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
import com.comeback.data.ui.fruitPie.ActorDetailActivity;
import com.comeback.data.ui.fruitPie.bean.AuthorBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class AuthorAdapter extends BaseAbstractAdapter<AuthorBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<AuthorBean> {
        public AuthorAdapter a;
        public AuthorBean b;
        @BindView
        public ImageView ivHead;
        @BindView
        public TextView tvAuthor;
        @BindView
        public TextView tvCount;
        @BindView
        public TextView tvDesc;

        public Holder(View view, AuthorAdapter authorAdapter) {
            super(view);
            this.a = authorAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(AuthorBean authorBean) {
            AuthorBean authorBean2 = authorBean;
            this.b = authorBean2;
            this.tvAuthor.setText(authorBean2.getAnchors_name());
            h.z0(this.b.getAnchors_img(), this.ivHead);
            this.tvCount.setText(String.format(e.a("0ufSQQ+aupuX26iC6+s="), Integer.valueOf(authorBean2.getLibrary_count())));
            this.tvDesc.setText(authorBean2.getDescription());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f712c;

        /* compiled from: AuthorAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f713c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f713c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f713c;
                ActorDetailActivity.t(holder.a.a, holder.b.getAnchors_id(), e.a("Bg=="), holder.b.getAnchors_name());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (ImageView) c.c(view, R.id.iv_head, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
            holder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            holder.tvCount = (TextView) c.c(view, R.id.tv_count, e.a("UQsGCA9THkcFJVsSFh5E"), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQcCHcLEQkITA=="));
            this.f712c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivHead = null;
                holder.tvAuthor = null;
                holder.tvDesc = null;
                holder.tvCount = null;
                this.f712c.setOnClickListener(null);
                this.f712c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public AuthorAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_fruit_author, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
