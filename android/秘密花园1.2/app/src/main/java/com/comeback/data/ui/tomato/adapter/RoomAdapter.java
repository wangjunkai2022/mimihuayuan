package com.comeback.data.ui.tomato.adapter;

import android.content.Context;
import android.text.TextUtils;
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
import com.comeback.data.App;
import com.comeback.data.base.BaseAbstractAdapter;
import com.comeback.data.base.BaseViewHolder;
import com.comeback.data.ui.hgl.LiveActivity;
import com.comeback.data.ui.tomato.bean.LiveList;
import com.comeback.secret.garden.R;
import f.d.a.c;
import f.e.a.e;
import f.e.a.j.n0.c.f.b;

/* loaded from: classes.dex */
public class RoomAdapter extends BaseAbstractAdapter<LiveList.DataListEntity> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<LiveList.DataListEntity> {
        public LiveList.DataListEntity a;
        public RoomAdapter b;
        @BindView
        public ImageView ivHead;
        @BindView
        public TextView tvName;

        public Holder(View view, RoomAdapter roomAdapter) {
            super(view);
            this.b = roomAdapter;
        }

        @Override // com.comeback.data.base.BaseViewHolder
        public void a(LiveList.DataListEntity dataListEntity) {
            LiveList.DataListEntity dataListEntity2 = dataListEntity;
            this.a = dataListEntity2;
            String liveCoverUrl = dataListEntity2.getLive().getLiveCoverUrl();
            ImageView imageView = this.ivHead;
            if (!TextUtils.isEmpty(liveCoverUrl)) {
                c.d(App.b).o(new b(liveCoverUrl)).q(R.drawable.default_img_bg).G(imageView);
            }
            this.tvName.setText(dataListEntity2.getLive().getTopic());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f2159c;

        /* compiled from: RoomAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends d.c.b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f2160c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f2160c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f2160c;
                LiveActivity.l(holder.b.a, holder.a.getLive().getDefPullStreamUrlStr());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (ImageView) d.c.c.c(view, R.id.iv_img, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvName = (TextView) d.c.c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = d.c.c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f2159c = b;
            b.setOnClickListener(new a(this, holder));
        }

        @Override // butterknife.Unbinder
        @CallSuper
        public void a() {
            Holder holder = this.b;
            if (holder != null) {
                this.b = null;
                holder.ivHead = null;
                holder.tvName = null;
                this.f2159c.setOnClickListener(null);
                this.f2159c = null;
                return;
            }
            throw new IllegalStateException(e.a("dQsNAAIdXkBTB1gVHQsHEhcBDwEKAVxXXQ=="));
        }
    }

    public RoomAdapter(Context context) {
        super(context);
    }

    @NonNull
    public BaseViewHolder f(@NonNull ViewGroup viewGroup) {
        return new Holder(this.f107c.inflate(R.layout.item_hgl_room, viewGroup, false), this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public /* bridge */ /* synthetic */ RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return f(viewGroup);
    }
}
