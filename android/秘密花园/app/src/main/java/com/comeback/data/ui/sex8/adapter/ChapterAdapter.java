package com.comeback.data.ui.sex8.adapter;

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
import com.comeback.data.ui.sex8.bean.YXNovelDetail;
import com.comeback.data.ui.sex8.ui.YXPlayActivity;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class ChapterAdapter extends BaseAbstractAdapter<YXNovelDetail.DataBean.RadioListBean> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<YXNovelDetail.DataBean.RadioListBean> {
        public YXNovelDetail.DataBean.RadioListBean a;
        public ChapterAdapter b;
        @BindView
        public TextView tvLong;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvPlayCount;

        public Holder(View view, ChapterAdapter chapterAdapter) {
            super(view);
            this.b = chapterAdapter;
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // com.comeback.data.base.BaseViewHolder
        public void a(YXNovelDetail.DataBean.RadioListBean radioListBean) {
            YXNovelDetail.DataBean.RadioListBean radioListBean2 = radioListBean;
            this.a = radioListBean2;
            this.tvName.setText(radioListBean2.getName());
            this.tvPlayCount.setText(radioListBean2.getDefault_play_times());
            this.tvLong.setText(radioListBean2.getDuration());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1854c;

        /* compiled from: ChapterAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1855c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1855c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1855c;
                YXPlayActivity.o(holder.b.a, holder.a.getRadio_id(), holder.getAdapterPosition());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            holder.tvLong = (TextView) c.c(view, R.id.tv_long, e.a("UQsGCA9THkcFKlsJH00="), TextView.class);
            View b = c.b(view, R.id.rl_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1854c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvName = null;
                holder.tvPlayCount = null;
                holder.tvLong = null;
                this.f1854c.setOnClickListener(null);
                this.f1854c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public ChapterAdapter(Context context) {
        super(context);
    }

    /* JADX WARN: Incorrect args count in method signature: (Landroid/view/ViewGroup;I)Lcom/comeback/data/base/BaseViewHolder<Lcom/comeback/data/ui/sex8/bean/YXNovelDetail$DataBean$RadioListBean;>; */
    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_sex8_yx_chapter, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
