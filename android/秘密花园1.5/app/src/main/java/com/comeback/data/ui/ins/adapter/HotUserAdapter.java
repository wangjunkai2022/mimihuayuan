package com.comeback.data.ui.ins.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import c.a.a.b.g.h;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.ins.UserCenterActivity;
import com.comeback.data.ui.ins.bean.HotUser;
import com.comeback.secret.garden.R;
import java.util.List;

/* loaded from: classes.dex */
public class HotUserAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public Context a;
    public f.a.a.a.a b;

    /* renamed from: c  reason: collision with root package name */
    public List<HotUser.DataEntity.ResultListEntity> f1163c;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public final /* synthetic */ HotUser.DataEntity.ResultListEntity a;

        public a(HotUser.DataEntity.ResultListEntity resultListEntity) {
            this.a = resultListEntity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UserCenterActivity.u(HotUserAdapter.this.a, this.a.getUsername(), this.a.getUserId(), this.a.getHeadImgUrl());
        }
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public ImageView a;
        public TextView b;

        public b(HotUserAdapter hotUserAdapter, View view) {
            super(view);
            this.a = (ImageView) view.findViewById(R.id.iv_img);
            this.b = (TextView) view.findViewById(R.id.tv_title);
        }
    }

    public HotUserAdapter(Context context, List<HotUser.DataEntity.ResultListEntity> list, f.a.a.a.a aVar) {
        this.a = context;
        this.f1163c = list;
        this.b = aVar;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f1163c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        HotUser.DataEntity.ResultListEntity resultListEntity = this.f1163c.get(i2);
        bVar.b.setText(resultListEntity.getUsername());
        h.u0(resultListEntity.getHeadImgUrl(), bVar.a);
        bVar.itemView.setOnClickListener(new a(resultListEntity));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_ins_hot_user, viewGroup, false));
    }
}
