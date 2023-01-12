package com.comeback.data.ui.gdian.adapter;

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
import com.comeback.data.ui.gdian.NovelActivity;
import com.comeback.data.ui.gdian.bean.NovelList;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class NovelAdapter extends BaseAbstractAdapter<NovelList.NovelEntity> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<NovelList.NovelEntity> {
        public NovelAdapter a;
        public NovelList.NovelEntity b;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvDesc;
        @BindView
        public TextView tvDetail;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, NovelAdapter novelAdapter) {
            super(view);
            this.a = novelAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(NovelList.NovelEntity novelEntity) {
            NovelList.NovelEntity novelEntity2 = novelEntity;
            this.b = novelEntity2;
            h.u0(novelEntity2.getFiction_cover(), this.ivImg);
            this.tvTitle.setText(novelEntity2.getFiction_name());
            this.tvDetail.setText(novelEntity2.getLabelText());
            this.tvDesc.setText(novelEntity2.getIntroduction());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f889c;

        /* compiled from: NovelAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f890c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f890c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f890c;
                NovelActivity.r(homeListHolder.a.a, homeListHolder.ivImg, homeListHolder.b);
                if (this.f890c == null) {
                    throw null;
                }
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            homeListHolder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            homeListHolder.tvTitle = (TextView) c.c(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            homeListHolder.tvDesc = (TextView) c.c(view, R.id.tv_desc, e.a("UQsGCA9THkcFIlEUG00="), TextView.class);
            homeListHolder.tvDetail = (TextView) c.c(view, R.id.tv_info, e.a("UQsGCA9THkcFIlETGQMPTA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQcCHcLEQkITBcDDQBLHlxHGwlQR18aDwpORQ=="));
            this.f889c = b;
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
                homeListHolder.tvDetail = null;
                this.f889c.setOnClickListener(null);
                this.f889c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public NovelAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_gdian_novel, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
