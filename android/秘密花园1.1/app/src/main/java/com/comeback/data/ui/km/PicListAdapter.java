package com.comeback.data.ui.km;

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
import com.comeback.data.ui.commom.PicBrowseActivity;
import com.comeback.data.ui.km.bean.PicList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PicListAdapter extends BaseAbstractAdapter<PicList.DataBean.ListBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<PicList.DataBean.ListBean> {
        public PicListAdapter a;
        public PicList.DataBean.ListBean b;
        @BindView
        public ImageView ivCover1;
        @BindView
        public ImageView ivCover2;
        @BindView
        public ImageView ivCover3;
        @BindView
        public TextView tvName;

        public Holder(View view, PicListAdapter picListAdapter) {
            super(view);
            this.a = picListAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(PicList.DataBean.ListBean listBean) {
            PicList.DataBean.ListBean listBean2 = listBean;
            this.b = listBean2;
            this.tvName.setText(listBean2.getMp_title());
            ArrayList<String> mp_content = listBean2.getMp_content();
            if (mp_content.size() > 0) {
                h.u0(mp_content.get(0), this.ivCover1);
            }
            if (mp_content.size() > 1) {
                h.u0(mp_content.get(1), this.ivCover2);
            }
            if (mp_content.size() > 2) {
                h.u0(mp_content.get(2), this.ivCover3);
            }
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1296c;

        /* compiled from: PicListAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1297c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1297c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1297c;
                PicBrowseActivity.l(holder.a.a, holder.b.getMp_content());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.ivCover1 = (ImageView) c.c(view, R.id.iv_cover1, e.a("UQsGCA9THloFJVsRHRhSTA=="), ImageView.class);
            holder.ivCover2 = (ImageView) c.c(view, R.id.iv_cover2, e.a("UQsGCA9THloFJVsRHRhRTA=="), ImageView.class);
            holder.ivCover3 = (ImageView) c.c(view, R.id.iv_cover3, e.a("UQsGCA9THloFJVsRHRhQTA=="), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCGIOHR0gB14BCAEPVA=="));
            this.f1296c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.ivCover1 = null;
                holder.ivCover2 = null;
                holder.ivCover3 = null;
                this.f1296c.setOnClickListener(null);
                this.f1296c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public PicListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_km_pics, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
