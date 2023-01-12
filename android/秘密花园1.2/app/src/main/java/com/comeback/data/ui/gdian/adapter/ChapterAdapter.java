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
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.gdian.NovelReadActivity;
import com.comeback.data.ui.gdian.bean.ChapterList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ChapterAdapter extends BaseAbstractAdapter<ChapterList.DataEntity.ListEntity> {

    /* loaded from: classes.dex */
    public static class HomeListHolder extends BaseViewHolder<ChapterList.DataEntity.ListEntity> {
        public ChapterAdapter a;
        public ChapterList.DataEntity.ListEntity b;
        @BindView
        public TextView tvTitle;

        public HomeListHolder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.a = chapterAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ChapterList.DataEntity.ListEntity listEntity) {
            ChapterList.DataEntity.ListEntity listEntity2 = listEntity;
            this.b = listEntity2;
            TextView textView = this.tvTitle;
            textView.setText(e.a("0MnDjOHxGQ==") + (getAdapterPosition() + 1) + e.a("DUI=") + listEntity2.getChapter_name());
        }
    }

    /* loaded from: classes.dex */
    public class HomeListHolder_ViewBinding implements Unbinder {
        public HomeListHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f885c;

        /* compiled from: ChapterAdapter$HomeListHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HomeListHolder f886c;

            public a(HomeListHolder_ViewBinding homeListHolder_ViewBinding, HomeListHolder homeListHolder) {
                this.f886c = homeListHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HomeListHolder homeListHolder = this.f886c;
                NovelReadActivity.l(homeListHolder.a.a, homeListHolder.b.getChapter_name(), homeListHolder.b.getChapter_id());
            }
        }

        @UiThread
        public HomeListHolder_ViewBinding(HomeListHolder homeListHolder, View view) {
            this.b = homeListHolder;
            View b = c.b(view, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQBcEIAdeAQhD"));
            homeListHolder.tvTitle = (TextView) c.a(b, R.id.tv_title, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            this.f885c = b;
            b.setOnClickListener(new a(this, homeListHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HomeListHolder homeListHolder = this.b;
            if (homeListHolder != null) {
                this.b = null;
                homeListHolder.tvTitle = null;
                this.f885c.setOnClickListener(null);
                this.f885c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ChapterAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new HomeListHolder(this.f107c.inflate(R.layout.item_gdian_chapter, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
