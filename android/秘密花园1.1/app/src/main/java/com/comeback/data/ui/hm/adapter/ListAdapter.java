package com.comeback.data.ui.hm.adapter;

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
import c.a.a.b.g.h;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.hm.DetailActivity;
import com.comeback.data.ui.hm.bean.ItemInfo;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ListAdapter extends BaseAbstractAdapter<ItemInfo> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<ItemInfo> {
        public ListAdapter a;
        public ItemInfo b;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvAuthor;
        @BindView
        public TextView tvDesc;
        @BindView
        public TextView tvTitle;
        @BindView
        public TextView tvUpdate;

        public HomeListHolder(View view, ListAdapter listAdapter) {
            super(view);
            this.a = listAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ItemInfo itemInfo) {
            ItemInfo itemInfo2 = itemInfo;
            this.b = itemInfo2;
            h.u0(itemInfo2.getImage(), this.ivImg);
            this.tvTitle.setText(itemInfo2.getTitle());
            this.tvDesc.setText(itemInfo2.getDesc());
            this.tvAuthor.setText(itemInfo2.getAuthor());
            this.tvUpdate.setText(itemInfo2.getUpdate());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1061c;

        /* compiled from: ListAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f1062c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f1062c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f1062c;
                if (homeListHolder != null) {
                    DetailActivity.u(homeListHolder.a.a, homeListHolder.ivImg, homeListHolder.b);
                    return;
                }
                throw null;
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            homeListHolder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            homeListHolder.tvAuthor = (TextView) c.c(view, R.id.tv_author, e.a("UQsGCA9THkcFJ0ETEAURTA=="), TextView.class);
            homeListHolder.tvUpdate = (TextView) c.c(view, R.id.tv_update, e.a("UQsGCA9THkcFM0QDGR4GTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITBcDDQBLHlxHGwlQR18aDwpORQ=="));
            this.f1061c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.ivImg = null;
                homeListHolder.tvTitle = null;
                homeListHolder.tvDesc = null;
                homeListHolder.tvAuthor = null;
                homeListHolder.tvUpdate = null;
                this.f1061c.setOnClickListener(null);
                this.f1061c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ListAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_hm_type, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
