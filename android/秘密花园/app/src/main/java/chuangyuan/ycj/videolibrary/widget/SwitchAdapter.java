package chuangyuan.ycj.videolibrary.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import chuangyuan.ycj.videolibrary.R;
import java.util.List;

/* loaded from: classes.dex */
public class SwitchAdapter extends BaseAdapter {
    public List<String> data;
    public Context mContext;
    public LayoutInflater mInflater;
    public int selectIndex;

    public SwitchAdapter(@NonNull Context context, @NonNull List<String> list) {
        this.data = list;
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.data.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return (long) i2;
    }

    public int getSelectIndex() {
        return this.selectIndex;
    }

    @Override // android.widget.Adapter
    @SuppressLint({"ViewHolder"})
    public View getView(int i2, View view, ViewGroup viewGroup) {
        AppCompatTextView appCompatTextView;
        if (view == null) {
            appCompatTextView = (AppCompatTextView) this.mInflater.inflate(R.layout.simple_exo_belowview_item, viewGroup, false);
        } else {
            appCompatTextView = (AppCompatTextView) view;
        }
        appCompatTextView.setText(this.data.get(i2));
        if (i2 == this.selectIndex) {
            appCompatTextView.setTextColor(ContextCompat.getColor(this.mContext, R.color.simple_exo_color_switch_item));
        } else {
            appCompatTextView.setTextColor(ContextCompat.getColor(this.mContext, 17170443));
        }
        return appCompatTextView;
    }

    public void setSelectIndex(int i2) {
        this.selectIndex = i2;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public String getItem(int i2) {
        return this.data.get(i2);
    }
}
