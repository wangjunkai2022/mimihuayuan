package com.comeback.data.ui.cucumber.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
import com.comeback.data.ui.cucumber.MovieDetailActivity;
import com.comeback.data.ui.cucumber.bean.Video;
import com.comeback.data.widget.RatioImageView;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;
/* loaded from: classes.dex */
public class RankVideoAdapter extends BaseAbstractAdapter<Video> {

    /* loaded from: classes.dex */
    public static class HeadHolder extends BaseViewHolder<Video> {
        public RankVideoAdapter a;
        public Video b;
        @BindView
        public ImageView ivImg;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvPlayCount;

        public HeadHolder(View view, RankVideoAdapter rankVideoAdapter) {
            super(view);
            this.a = rankVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            this.tvName.setText(video2.getMovName());
            TextView textView = this.tvPlayCount;
            textView.setText(e.a("0fDOgv/N0LT8XA==") + video2.getPlayNumber() + e.a("F0KH3OCbhI6a4btd") + video2.getDownloadNumber() + e.a("F0KF8N2brrya4btd") + video2.getCollectNumber());
            h.u0(video2.getOriUrl().getHorizontal_large(), this.ivImg);
        }
    }

    /* loaded from: classes.dex */
    public class HeadHolder_ViewBinding implements Unbinder {
        public HeadHolder b;

        /* renamed from: c  reason: collision with root package name */
        public View f450c;

        /* compiled from: RankVideoAdapter$HeadHolder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ HeadHolder f451c;

            public a(HeadHolder_ViewBinding headHolder_ViewBinding, HeadHolder headHolder) {
                this.f451c = headHolder;
            }

            @Override // d.c.b
            public void a(View view) {
                HeadHolder headHolder = this.f451c;
                MovieDetailActivity.p(headHolder.a.a, headHolder.b);
            }
        }

        @UiThread
        public HeadHolder_ViewBinding(HeadHolder headHolder, View view) {
            this.b = headHolder;
            headHolder.ivImg = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), ImageView.class);
            headHolder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            headHolder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            View b = c.b(view, R.id.fl_root, e.a("WgcXDAQXGRQQCl0EE00="));
            this.f450c = b;
            b.setOnClickListener(new a(this, headHolder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            HeadHolder headHolder = this.b;
            if (headHolder != null) {
                this.b = null;
                headHolder.ivImg = null;
                headHolder.tvName = null;
                headHolder.tvPlayCount = null;
                this.f450c.setOnClickListener(null);
                this.f450c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<Video> {
        public RankVideoAdapter a;
        public Video b;
        @BindView
        public RatioImageView ivImg;
        @BindView
        public TextView tvCollectCount;
        @BindView
        public TextView tvDownCount;
        @BindView
        public TextView tvName;
        @BindView
        public TextView tvPlayCount;

        public Holder(View view, RankVideoAdapter rankVideoAdapter) {
            super(view);
            this.a = rankVideoAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(Video video) {
            Video video2 = video;
            this.b = video2;
            h.u0(video2.getOriUrl().getHorizontal_small(), this.ivImg);
            this.tvName.setText(video2.getMovName());
            TextView textView = this.tvPlayCount;
            textView.setText(e.a("0fDOgv/N0LT8XA==") + video2.getPlayNumber());
            TextView textView2 = this.tvDownCount;
            textView2.setText(e.a("09rojNbO0LT8XA==") + video2.getDownloadNumber());
            TextView textView3 = this.tvCollectCount;
            textView3.setText(e.a("0fbVjPz80LT8XA==") + video2.getCollectNumber());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f452c;

        /* compiled from: RankVideoAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f453c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f453c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f453c;
                MovieDetailActivity.p(holder.a.a, holder.b);
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivImg = (RatioImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFL1kAXw=="), RatioImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            holder.tvPlayCount = (TextView) c.c(view, R.id.tv_play_count, e.a("UQsGCA9THkcFNlgGASkMHlkWRA=="), TextView.class);
            holder.tvDownCount = (TextView) c.c(view, R.id.tv_down_count, e.a("UQsGCA9THkcFIlsQFikMHlkWRA=="), TextView.class);
            holder.tvCollectCount = (TextView) c.c(view, R.id.tv_collect_count, e.a("UQsGCA9THkcFJVsLFA8AH3QNFgofVA=="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQQCl0EE00="));
            this.f452c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivImg = null;
                holder.tvName = null;
                holder.tvPlayCount = null;
                holder.tvDownCount = null;
                holder.tvCollectCount = null;
                this.f452c.setOnClickListener(null);
                this.f452c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public RankVideoAdapter(Context context) {
        super(context);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i2) {
        return i2 == 0 ? 0 : 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            return new HeadHolder(this.f107c.inflate(R.layout.item_cucumber_video_rank_head, viewGroup, false), this);
        }
        return new Holder(this.f107c.inflate(R.layout.item_cucumber_video_rank, viewGroup, false), this);
    }
}
