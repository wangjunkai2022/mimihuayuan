package com.comeback.data.ui.xj.adapter;

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
import com.comeback.data.ui.xj.adapter.VSearchHeadAdapter;
import com.comeback.data.ui.xj.bean.SearchResult;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HotWordsAdapter extends BaseAbstractAdapter<SearchResult.DataBean.HotwordsBean> {

    /* renamed from: d  reason: collision with root package name */
    public final VSearchHeadAdapter.a f2219d;

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<SearchResult.DataBean.HotwordsBean> {
        public HotWordsAdapter a;
        public SearchResult.DataBean.HotwordsBean b;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, HotWordsAdapter hotWordsAdapter) {
            super(view);
            this.a = hotWordsAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(SearchResult.DataBean.HotwordsBean hotwordsBean) {
            SearchResult.DataBean.HotwordsBean hotwordsBean2 = hotwordsBean;
            this.b = hotwordsBean2;
            this.tvTitle.setText(hotwordsBean2.getDspwd());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2220c;

        /* compiled from: HotWordsAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f2221c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f2221c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f2221c;
                homeListHolder.a.f2219d.a(homeListHolder.b.getSchwd());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_tag, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQDClUeXw=="));
            this.f2220c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.tvTitle = null;
                this.f2220c.setOnClickListener(null);
                this.f2220c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public HotWordsAdapter(Context context, VSearchHeadAdapter.a aVar) {
        super(context);
        this.f2219d = aVar;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_xj_hot_words, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
