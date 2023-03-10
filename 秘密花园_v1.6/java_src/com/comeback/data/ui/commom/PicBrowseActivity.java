package com.comeback.data.ui.commom;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import com.comeback.data.base.BaseActivity;
import com.comeback.secret.garden.R;
import f.e.a.e;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class PicBrowseActivity extends BaseActivity {
    public ArrayList<String> b;
    @BindView
    public RecyclerView mRecyclerView;

    public static void l(@NonNull Context context, ArrayList<String> arrayList) {
        Intent intent = new Intent(context, PicBrowseActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), arrayList);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        this.b = intent.getStringArrayListExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_commom_pic;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        g();
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(this));
        PicBrowseAdapter picBrowseAdapter = new PicBrowseAdapter(this);
        this.mRecyclerView.setAdapter(picBrowseAdapter);
        picBrowseAdapter.a(this.b);
    }
}
