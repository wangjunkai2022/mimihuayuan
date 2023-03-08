package com.comeback.data.ui.live.adapter;

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
import com.comeback.data.ui.hgl.LiveActivity;
import com.comeback.data.ui.live.bean.LiveRoomList;
import com.comeback.secret.garden.R;
import d.c.b;
import d.c.c;
import f.e.a.e;

/* loaded from: classes.dex */
public class RoomAdapter extends BaseAbstractAdapter<LiveRoomList.DataBean.RoomList> {

    /* loaded from: classes.dex */
    public static class Holder extends BaseViewHolder<LiveRoomList.DataBean.RoomList> {
        public LiveRoomList.DataBean.RoomList a;
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
        public void a(LiveRoomList.DataBean.RoomList roomList) {
            LiveRoomList.DataBean.RoomList roomList2 = roomList;
            this.a = roomList2;
            h.u0(roomList2.getImage(), this.ivHead);
            this.tvName.setText(roomList2.getTitle());
        }
    }

    /* loaded from: classes.dex */
    public class Holder_ViewBinding implements Unbinder {
        public Holder b;

        /* renamed from: c  reason: collision with root package name */
        public View f1449c;

        /* compiled from: RoomAdapter$Holder_ViewBinding.java */
        /* loaded from: classes.dex */
        public class a extends b {

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ Holder f1450c;

            public a(Holder_ViewBinding holder_ViewBinding, Holder holder) {
                this.f1450c = holder;
            }

            @Override // d.c.b
            public void a(View view) {
                Holder holder = this.f1450c;
                LiveActivity.l(holder.b.a, holder.a.getPlay_url());
            }
        }

        @UiThread
        public Holder_ViewBinding(Holder holder, View view) {
            this.b = holder;
            holder.ivHead = (ImageView) c.c(view, R.id.iv_img, e.a("UQsGCA9THloFLlEGHE0="), ImageView.class);
            holder.tvName = (TextView) c.c(view, R.id.tv_name, e.a("UQsGCA9THkcFKFUKHU0="), TextView.class);
            View b = c.b(view, R.id.ll_root, e.a("WgcXDAQXGRQEB0AEEE0="));
            this.f1449c = b;
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
                this.f1449c.setOnClickListener(null);
                this.f1449c = null;
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
