package com.comeback.data.ui.bale.adapter;

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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.bale.SearchResultActivity;
import com.comeback.data.ui.bale.bean.HotSearch;
import com.comeback.secret.garden.R;
import d.c.b;
import f.e.a.e;
import f.e.a.j.d.c;
/* loaded from: classes.dex */
public class HotSearchAdapter extends BaseAbstractAdapter<HotSearch.ResultBean.HotBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f274d;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<HotSearch.ResultBean.HotBean> {
        public HotSearchAdapter a;
        public HotSearch.ResultBean.HotBean b;
        @BindView
        public TextView tvTag;

        public Holder(View view, HotSearchAdapter hotSearchAdapter) {
            super(view);
            this.a = hotSearchAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(HotSearch.ResultBean.HotBean hotBean) {
            HotSearch.ResultBean.HotBean hotBean2 = hotBean;
            this.b = hotBean2;
            this.tvTag.setText(hotBean2.getTitle());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f275c;

        /* compiled from: HotSearchAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f276c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f276c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f276c;
                a aVar = holder.a.f274d;
                SearchResultActivity.t(((c) aVar).a, holder.b.getTitle());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = d.c.c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FDBgwJC0w="));
            holder.tvTag = (TextView) d.c.c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f275c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                this.f275c.setOnClickListener(null);
                this.f275c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
    }

    public HotSearchAdapter(Context context, a aVar) {
        super(context);
        this.f274d = aVar;
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_bale_hot_search, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
