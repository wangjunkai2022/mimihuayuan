package chuangyuan.ycj.videolibrary.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.R;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class BelowView {
    public SwitchAdapter adapter;
    public View convertView;
    public ListView listView;
    public OnItemClickListener onItemClickListener;
    public PopupWindow pw;

    /* loaded from: classes.dex */
    public interface OnItemClickListener {
        void onItemClick(int i2, String str);
    }

    public BelowView(@NonNull Context context, @Nullable List<String> list) {
        View inflate = View.inflate(context, R.layout.simple_exo_belowview, null);
        this.convertView = inflate;
        this.listView = (ListView) inflate.findViewById(R.id.list_item);
        this.adapter = new SwitchAdapter(context, list == null ? Arrays.asList(context.getResources().getStringArray(R.array.exo_video_switch_text)) : list);
        this.listView.measure(0, 0);
        this.listView.setAdapter((ListAdapter) this.adapter);
    }

    public void dismissBelowView() {
        PopupWindow popupWindow = this.pw;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return;
        }
        this.pw.dismiss();
    }

    public void setOnItemClickListener(@Nullable OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    public void showBelowView(@NonNull View view, boolean z, int i2) {
        if (this.pw == null) {
            this.adapter.setSelectIndex(i2);
            PopupWindow popupWindow = new PopupWindow(this.convertView, -2, (int) (view.getResources().getDimension(R.dimen.dp30) * this.adapter.getCount()), false);
            this.pw = popupWindow;
            popupWindow.setOutsideTouchable(z);
            this.pw.setBackgroundDrawable(new ColorDrawable(0));
            if (this.onItemClickListener != null) {
                this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: chuangyuan.ycj.videolibrary.widget.BelowView.1
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view2, int i3, long j2) {
                        if (BelowView.this.onItemClickListener == null || i3 == BelowView.this.adapter.getSelectIndex()) {
                            return;
                        }
                        BelowView.this.onItemClickListener.onItemClick(i3, BelowView.this.adapter.getItem(i3));
                        BelowView.this.adapter.setSelectIndex(i3);
                    }
                });
            }
        }
        this.pw.setSoftInputMode(0);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.pw.showAtLocation(view, 0, iArr[0] - (view.getWidth() / 6), iArr[1] - this.pw.getHeight());
    }
}
