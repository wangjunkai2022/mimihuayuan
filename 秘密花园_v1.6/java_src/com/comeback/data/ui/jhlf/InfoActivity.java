package com.comeback.data.ui.jhlf;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import c.a.a.b.g.h;
import com.comeback.data.base.BaseActivity;
import com.comeback.data.ui.fengliu.PicAdapter;
import com.comeback.data.ui.jhlf.bean.MMList;
import com.comeback.data.ui.jhlf.bean.WebSiteBean;
import com.comeback.secret.garden.R;
import f.e.a.e;
import f.e.a.j.w.f;
import java.util.List;
/* loaded from: classes.dex */
public class InfoActivity extends BaseActivity {
    public MMList.DataEntity b;

    /* renamed from: c  reason: collision with root package name */
    public StringBuffer f1330c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f1331d = false;
    @BindView
    public RecyclerView rvList;
    @BindView
    public TextView tvAddress;
    @BindView
    public TextView tvAge;
    @BindView
    public TextView tvArea;
    @BindView
    public TextView tvBeauty;
    @BindView
    public TextView tvIntro;
    @BindView
    public TextView tvPhone;
    @BindView
    public TextView tvPrice;
    @BindView
    public TextView tvQq;
    @BindView
    public TextView tvServer;
    @BindView
    public TextView tvState;
    @BindView
    public TextView tvTitle;
    @BindView
    public TextView tvWechat;

    /* loaded from: classes.dex */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            InfoActivity.l(InfoActivity.this);
        }
    }

    public static void l(InfoActivity infoActivity) {
        if (infoActivity != null) {
            AlertDialog.Builder title = new AlertDialog.Builder(infoActivity).setTitle(e.a("0e3zg8/J"));
            title.setMessage(e.a("0f7Pjcni0LLgj6jnkMzij4/pi9nWlpe6m8WxhPjm") + ((Object) infoActivity.f1330c) + e.a("1OLuguL+0bDOgonYn/7LYdLE4YL1792L+I6J2pzS7o+N5IvL3JuGqJTynIHw3YTVk4ri8IzAgtTdx9P3/o/y8w==")).setNeutralButton(e.a("09nGgfv93LX+gaDP"), new f(infoActivity)).setNegativeButton(e.a("0MnogebA3J36jpfi"), new f.e.a.j.w.e(infoActivity)).create().show();
            return;
        }
        throw null;
    }

    public static void n(Context context, MMList.DataEntity dataEntity) {
        Intent intent = new Intent(context, InfoActivity.class);
        intent.putExtra(e.a("UwMXBQ=="), dataEntity);
        context.startActivity(intent);
    }

    @Override // com.comeback.data.base.BaseActivity
    public void c(Intent intent) {
        intent.getStringExtra(e.a("XgY="));
        this.b = (MMList.DataEntity) intent.getParcelableExtra(e.a("UwMXBQ=="));
    }

    @Override // com.comeback.data.base.BaseActivity
    public int d() {
        return R.layout.activity_fengliu_info;
    }

    @Override // com.comeback.data.base.BaseActivity
    public void e() {
        j(-1);
        List<WebSiteBean.AdEntity> list = JHLFActivity.b;
        if (list != null && list.size() != 0) {
            this.f1330c = new StringBuffer();
            for (WebSiteBean.AdEntity adEntity : JHLFActivity.b) {
                if (adEntity.isMust() && !h.r(adEntity.getPackageName())) {
                    this.f1331d = true;
                    StringBuffer stringBuffer = this.f1330c;
                    stringBuffer.append(adEntity.getName());
                    stringBuffer.append(e.a("1OLi"));
                }
            }
            if (this.f1330c.length() > 0) {
                StringBuffer stringBuffer2 = this.f1330c;
                stringBuffer2.deleteCharAt(stringBuffer2.length() - 1).toString();
            }
        }
        this.tvTitle.setText(this.b.getTitle());
        this.tvState.setText(this.b.getPublished_at());
        TextView textView = this.tvArea;
        textView.setText(e.a("0evjgdrt3K/Dg7jdl9b5") + this.b.getAddress());
        TextView textView2 = this.tvAge;
        textView2.setText(e.a("0tLsgczj3IrHj4rjl9b5") + this.b.getAge());
        TextView textView3 = this.tvBeauty;
        textView3.setText(e.a("0tLsgczj0JHvg7Tbl9b5") + this.b.getFaceLevel());
        TextView textView4 = this.tvPrice;
        textView4.setText(e.a("0dTrjN/K34PHg43Ul9b5") + this.b.getPrice());
        TextView textView5 = this.tvServer;
        textView5.setText(e.a("0f7ugeHS0JLKga/Jl9b5") + this.b.getServerList());
        if (this.f1331d) {
            m(this.tvQq, e.a("ZjOM2PE="));
            m(this.tvWechat, e.a("0tzNgNTS1o/p"));
            m(this.tvPhone, e.a("0PbWjMTu1o/p"));
            m(this.tvAddress, e.a("0v7Tgfbz1o/p"));
        } else {
            TextView textView6 = this.tvQq;
            textView6.setText(e.a("ZjOM2PE=") + this.b.getQq());
            TextView textView7 = this.tvWechat;
            textView7.setText(e.a("0tzNgNTS1o/p") + this.b.getWechat());
            TextView textView8 = this.tvPhone;
            textView8.setText(e.a("0PbWjMTu1o/p") + this.b.getPhone());
            TextView textView9 = this.tvAddress;
            textView9.setText(e.a("0v7Tgfbz1o/p") + this.b.getAddress());
        }
        PicAdapter picAdapter = new PicAdapter(this, false);
        this.rvList.setLayoutManager(new LinearLayoutManager(this));
        this.rvList.setAdapter(picAdapter);
        picAdapter.a(this.b.getAllCover());
        this.tvIntro.setText(this.b.getDescd());
    }

    public final void m(TextView textView, String str) {
        StringBuilder o = f.b.a.a.a.o(str);
        o.append(e.a("0ODagezI0ZTQj6DmnNXCjbbN"));
        String sb = o.toString();
        SpannableString spannableString = new SpannableString(sb);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(e.a("FAQFUFtLCA=="))), 3, sb.length(), 17);
        textView.setText(spannableString);
        textView.setOnClickListener(new a());
    }
}
