package com.comeback.data.ui.senlin.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.DelegateAdapter;
import com.comeback.data.ui.senlin.adapter.VSearchAdapter;
import com.comeback.secret.garden.R;

/* loaded from: classes.dex */
public class VSearchAdapter extends DelegateAdapter.Adapter<RecyclerView.ViewHolder> {
    public f.a.a.a.a a;
    public a b;

    /* loaded from: classes.dex */
    public interface a {
    }

    /* loaded from: classes.dex */
    public class b extends RecyclerView.ViewHolder {
        public EditText a;

        public b(VSearchAdapter vSearchAdapter, View view) {
            super(view);
            this.a = (EditText) view.findViewById(R.id.et_search);
        }
    }

    public VSearchAdapter(Context context, String str, f.a.a.a.a aVar, a aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    @Override // com.alibaba.android.vlayout.DelegateAdapter.Adapter
    public f.a.a.a.a c() {
        return this.a;
    }

    public /* synthetic */ boolean d(b bVar, TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        String trim = bVar.a.getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            return true;
        }
        ((f.e.a.j.i0.a) this.b).a(trim);
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        b bVar = (b) viewHolder;
        bVar.a.setOnEditorActionListener(new TextView.OnEditorActionListener(bVar) { // from class: f.e.a.j.i0.e.a
            public final /* synthetic */ VSearchAdapter.b b;

            {
                this.b = r2;
            }

            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                return VSearchAdapter.this.d(this.b, textView, i3, keyEvent);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new b(this, f.b.a.a.a.b(viewGroup, R.layout.item_senlin_search, viewGroup, false));
    }
}
