package com.comeback.data.ui.movieCloud.adapter;

import android.content.Context;
import android.graphics.Color;
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
import com.comeback.data.bean.PlayListBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ChapterAdapter extends BaseAbstractAdapter<PlayListBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f1821d;

    /* renamed from: e  reason: collision with root package name */
    public int f1822e;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<PlayListBean> {
        public PlayListBean a;
        public ChapterAdapter b;
        @BindView
        public TextView tvTag;

        public Holder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.b = chapterAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(PlayListBean playListBean) {
            PlayListBean playListBean2 = playListBean;
            this.a = playListBean2;
            this.tvTag.setText(playListBean2.getName());
            this.tvTag.setTextColor(Color.parseColor(e.a(this.b.f1822e == getLayoutPosition() ? "FFJTUVxHew==" : "FFtaXVJKAA==")));
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1823c;

        /* compiled from: ChapterAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1824c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1824c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1824c;
                a aVar = holder.b.f1821d;
                if (aVar != null) {
                    aVar.a(holder.getAdapterPosition(), holder.a.getUri());
                    ChapterAdapter chapterAdapter = holder.b;
                    chapterAdapter.notifyItemChanged(chapterAdapter.f1822e);
                    holder.b.f1822e = holder.getLayoutPosition();
                    ChapterAdapter chapterAdapter2 = holder.b;
                    chapterAdapter2.notifyItemChanged(chapterAdapter2.f1822e);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAX0oCBVNCDgEfG1ZXU0FECxkTRA=="));
            holder.tvTag = (TextView) c.a(b, R.id.tv_tag, e.a("UQsGCA9THkcFMlUAXw=="), TextView.class);
            this.f1823c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTag = null;
                this.f1823c.setOnClickListener(null);
                this.f1823c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(int i2, String str);
    }

    public ChapterAdapter(Context context) {
        super(context);
        this.f1822e = 0;
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_movie_cloud_chapter, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
