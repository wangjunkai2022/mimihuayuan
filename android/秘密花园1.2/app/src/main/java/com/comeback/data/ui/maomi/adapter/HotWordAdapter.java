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
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.maomi.SearchActivity;
import com.comeback.data.ui.maomi.bean.HotWords;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
import f.e.a.j.d0.i;
import java.util.List;

/* loaded from: classes.dex */
public class HotWordAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public a b;

    /* renamed from: c  reason: collision with root package name */
    public List<HotWords.DataBeanX.DataBean> f1667c;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<HotWords.DataBeanX.DataBean> {
        public HotWordAdapter a;
        public HotWords.DataBeanX.DataBean b;
        @BindView
        public TextView tvName;

        public Holder(View view, HotWordAdapter hotWordAdapter) {
            super(view);
            this.a = hotWordAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(HotWords.DataBeanX.DataBean dataBean) {
            HotWords.DataBeanX.DataBean dataBean2 = dataBean;
            this.b = dataBean2;
            this.tvName.setText(dataBean2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1668c;

        /* compiled from: HotWordAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1669c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1669c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1669c;
                a aVar = holder.a.b;
                if (aVar != null) {
                    i iVar = (i) aVar;
                    iVar.a.etSearch.setText(holder.b.getName());
                    SearchActivity searchActivity = iVar.a;
                    searchActivity.f1617f = searchActivity.etSearch.getText().toString().trim();
                    iVar.a.refreshLayout.h();
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU1DClkGQwkOB1FcF0YTEBkeAAMQ"));
            holder.tvName = (TextView) c.a(b, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            this.f1668c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                this.f1668c.setOnClickListener(null);
                this.f1668c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public HotWordAdapter(Context context, List<HotWords.DataBeanX.DataBean> list, f.a.a.a.a aVar) {
        this.f1667c = list;
        this.a = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1667c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i2) {
        Holder holder = (Holder) viewHolder;
        HotWords.DataBeanX.DataBean dataBean = this.f1667c.get(i2);
        holder.b = dataBean;
        holder.tvName.setText(dataBean.getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new Holder(f.b.a.a.a.b(viewGroup, R.layout.item_movie_cloud_hot_word, viewGroup, false), this);
    }
}
