package com.comeback.data.ui.cm.adapter;

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
import com.comeback.data.ui.cm.PlayActivity;
import com.comeback.data.ui.cm.bean.ArtistDetail;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class Screen2Adapter extends BaseAbstractAdapter<ArtistDetail.RescontEntity.VideoListEntity.DataEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<ArtistDetail.RescontEntity.VideoListEntity.DataEntity> {
        public Screen2Adapter a;
        public ArtistDetail.RescontEntity.VideoListEntity.DataEntity b;
        @BindView
        public ImageView ivCover;
        @BindView
        public TextView tvTitle;

        public Holder(View view, Screen2Adapter screen2Adapter) {
            super(view);
            this.a = screen2Adapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(ArtistDetail.RescontEntity.VideoListEntity.DataEntity dataEntity) {
            ArtistDetail.RescontEntity.VideoListEntity.DataEntity dataEntity2 = dataEntity;
            this.b = dataEntity2;
            this.tvTitle.setText(dataEntity2.getTitle());
            h.w0(dataEntity2.getCoverBase64(), this.ivCover);
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f369c;

        /* compiled from: Screen2Adapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f370c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f370c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f370c;
                PlayActivity.o(holder.a.a, String.valueOf(holder.b.getId()));
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.tvTitle = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFMl0TFA9E"), TextView.class);
            holder.ivCover = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFJVsRHRhE"), ImageView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f369c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.tvTitle = null;
                holder.ivCover = null;
                this.f369c.setOnClickListener(null);
                this.f369c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public Screen2Adapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_cm_screen, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
