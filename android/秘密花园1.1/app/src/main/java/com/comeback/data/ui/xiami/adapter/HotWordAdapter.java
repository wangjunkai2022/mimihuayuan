package com.comeback.data.ui.xiami.adapter;

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
import com.comeback.data.ui.xiami.VideoPlayActivity;
import com.comeback.data.ui.xiami.bean.VideoInfo;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class HotWordAdapter extends BaseAbstractAdapter<VideoInfo> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<VideoInfo> {
        public HotWordAdapter a;
        public VideoInfo b;
        @BindView
        public TextView tvTitle;

        public Holder(View view, HotWordAdapter hotWordAdapter) {
            super(view);
            this.a = hotWordAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(VideoInfo videoInfo) {
            VideoInfo videoInfo2 = videoInfo;
            this.b = videoInfo2;
            TextView textView = this.tvTitle;
            textView.setText((getAdapterPosition() + 1) + e.a("F0w=") + videoInfo2.getVideoTitle());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2151c;

        /* compiled from: HotWordAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2152c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2152c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2152c;
                VideoPlayActivity.o(holder.a.a, holder.b.getVideoId());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            View b = c.b(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9ES1YMB0QGFk1bHAIUQA8LFwhfRQ=="));
            holder.tvTitle = (TextView) c.a(b, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            this.f2151c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                this.f2151c.setOnClickListener(null);
                this.f2151c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public HotWordAdapter(Context context) {
        super(context);
    }

    @NonNull
    public Holder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_xm_hot_word, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
