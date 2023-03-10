package com.comeback.data.ui.mimei.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindColor;
import butterknife.BindView;
import butterknife.Unbinder;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.mimei.bean.ComicDetailBean;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class ChapterAdapter extends BaseAbstractAdapter<ComicDetailBean.SuccessBean.DirectoryBean> {

    /* renamed from: d  reason: collision with root package name */
    public a f1763d;

    /* renamed from: e  reason: collision with root package name */
    public int f1764e;

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ComicDetailBean.SuccessBean.DirectoryBean> {
        public ChapterAdapter a;
        @BindColor
        public int kmColorAccent;
        @BindView
        public TextView tvTitle;
        @BindColor
        public int white;

        public Holder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.a = chapterAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ComicDetailBean.SuccessBean.DirectoryBean directoryBean) {
            ComicDetailBean.SuccessBean.DirectoryBean directoryBean2 = directoryBean;
            this.tvTitle.setTextColor(this.a.f1764e == getAdapterPosition() ? this.kmColorAccent : this.white);
            this.tvTitle.setText(directoryBean2.getName());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1765c;

        /* compiled from: ChapterAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1766c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1766c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1766c;
                a aVar = holder.a.f1763d;
                if (aVar != null) {
                    aVar.a(holder.getAdapterPosition());
                    ChapterAdapter chapterAdapter = holder.a;
                    int i2 = chapterAdapter.f1764e;
                    chapterAdapter.f1764e = holder.getAdapterPosition();
                    holder.a.notifyItemChanged(i2);
                    ChapterAdapter chapterAdapter2 = holder.a;
                    chapterAdapter2.notifyItemChanged(chapterAdapter2.f1764e);
                }
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQA8LFwhfRQ=="));
            holder.tvTitle = (TextView) c.a(b, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            this.f1765c = b;
            b.setOnClickListener(new a(this, holder));
            Context context = view.getContext();
            holder.kmColorAccent = ContextCompat.getColor(context, R.color.kmColorAccent);
            holder.white = ContextCompat.getColor(context, R.color.white);
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                this.f1765c.setOnClickListener(null);
                this.f1765c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        void a(int i2);
    }

    public ChapterAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_mimei_chapter, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
