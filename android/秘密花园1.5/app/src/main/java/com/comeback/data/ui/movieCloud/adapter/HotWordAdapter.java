package com.comeback.data.ui.movieCloud.adapter;

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
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.movieCloud.PlayActivity;
import com.comeback.data.ui.movieCloud.bean.XXList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.a.a.a.a;
import f.e.a.e;
import java.util.List;

/* loaded from: classes.dex */
public class HotWordAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public a b;

    /* renamed from: c  reason: collision with root package name */
    public List<XXList.DataBean.VodrowsBean> f1825c;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<XXList.DataBean.VodrowsBean> {
        public HotWordAdapter a;
        public XXList.DataBean.VodrowsBean b;
        @BindView
        public TextView tvName;

        public Holder(View view, HotWordAdapter hotWordAdapter) {
            super(view);
            this.a = hotWordAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        /* renamed from: b */
        public void a(XXList.DataBean.VodrowsBean vodrowsBean) {
            this.b = vodrowsBean;
            this.tvName.setText(String.format(e.a("EgZDREtTHEA="), Integer.valueOf(getAdapterPosition()), vodrowsBean.getTitle()));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1826c;

        /* compiled from: HotWordAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1827c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1827c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1827c;
                PlayActivity.p(holder.a.a, holder.b.getVodid());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU1DClkGQwkOB1FcF0YTEBkeAAMQ"));
            holder.tvName = (TextView) c.a(b, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            this.f1826c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                this.f1826c.setOnClickListener(null);
                this.f1826c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public HotWordAdapter(Context context, List<XXList.DataBean.VodrowsBean> list, a aVar) {
        this.a = context;
        this.f1825c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1825c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        ((Holder) viewHolder).a(this.f1825c.get(i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new Holder(f.b.a.a.a.b(viewGroup, R.layout.item_movie_cloud_hot_word, viewGroup, false), this);
    }
}
