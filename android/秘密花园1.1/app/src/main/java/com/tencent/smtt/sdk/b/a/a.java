package com.tencent.smtt.sdk.b.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.smtt.sdk.TbsConfig;
import com.tencent.smtt.sdk.ValueCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* compiled from: BrowserListAdapter.java */
/* loaded from: classes.dex */
public class a extends ArrayAdapter<b> implements View.OnClickListener, ListAdapter {
    public ArrayList<b> a;
    public b b;

    /* renamed from: c  reason: collision with root package name */
    public Intent f2531c;

    /* renamed from: d  reason: collision with root package name */
    public WeakReference<ListView> f2532d;

    /* renamed from: e  reason: collision with root package name */
    public WeakReference<c> f2533e;

    /* renamed from: f  reason: collision with root package name */
    public b f2534f;

    /* renamed from: g  reason: collision with root package name */
    public Handler f2535g;

    /* renamed from: h  reason: collision with root package name */
    public String[] f2536h;

    /* renamed from: i  reason: collision with root package name */
    public a f2537i;

    /* renamed from: j  reason: collision with root package name */
    public ValueCallback<String> f2538j;

    /* renamed from: k  reason: collision with root package name */
    public Map<String, Drawable> f2539k;

    public a(Context context, Intent intent, b bVar, b bVar2, c cVar, ListView listView, ValueCallback<String> valueCallback) {
        super(context, 0);
        this.b = null;
        this.f2531c = null;
        this.f2536h = null;
        this.f2537i = this;
        a(cVar);
        a(listView);
        this.f2531c = intent;
        if (!"com.tencent.rtxlite".equalsIgnoreCase(context.getApplicationContext().getPackageName()) && !com.tencent.smtt.sdk.a.c.b(context)) {
            this.f2534f = bVar;
        } else {
            this.f2534f = null;
        }
        this.f2538j = valueCallback;
        this.f2535g = new Handler() { // from class: com.tencent.smtt.sdk.b.a.a.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                a.this.b();
            }
        };
        String[] strArr = new String[2];
        this.f2536h = strArr;
        strArr[0] = d.b("x5_tbs_activity_picker_recommend_to_trim");
        this.f2536h[1] = d.b("x5_tbs_activity_picker_recommend_with_chinese_brace_to_trim");
        a(context, bVar2);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.a.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        b item = getItem(i2);
        if (item == null) {
            return null;
        }
        if (view == null) {
            view = a(getContext());
        }
        a(item, view);
        return view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b bVar;
        Object tag = view.getTag();
        if (tag == null || !(tag instanceof b) || (bVar = (b) tag) == this.b) {
            return;
        }
        ViewParent parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        b bVar2 = this.b;
        b(view.getContext(), bVar);
        a(bVar2, view2.findViewWithTag(bVar2));
        a(this.b, view);
    }

    public b a() {
        return this.b;
    }

    public void b() {
        View findViewWithTag;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.f2535g.obtainMessage(1).sendToTarget();
            return;
        }
        ListView listView = this.f2532d.get();
        if (listView == null || (findViewWithTag = listView.findViewWithTag(this.f2534f)) == null) {
            return;
        }
        a(this.f2534f, findViewWithTag);
    }

    public void a(ListView listView) {
        this.f2532d = new WeakReference<>(listView);
    }

    public void a(c cVar) {
        this.f2533e = new WeakReference<>(cVar);
    }

    public void a(Context context, b bVar) {
        b bVar2;
        this.a = new ArrayList<>();
        boolean z = false;
        boolean z2 = false;
        for (ResolveInfo resolveInfo : context.getPackageManager().queryIntentActivities(this.f2531c, 65536)) {
            if (b.a(context, resolveInfo.activityInfo.packageName) != null || resolveInfo.loadIcon(context.getPackageManager()) != null) {
                b bVar3 = new b(context, resolveInfo);
                b bVar4 = this.f2534f;
                if (bVar4 != null && bVar4.c().equals(resolveInfo.activityInfo.packageName)) {
                    this.a.add(0, bVar3);
                    z = true;
                } else if (TbsConfig.APP_QB.equals(resolveInfo.activityInfo.packageName)) {
                    this.a.add(0, bVar3);
                } else {
                    this.a.add(bVar3);
                }
                if (!z2 && bVar != null && bVar3.c().equals(bVar.c())) {
                    b(context, bVar3);
                    z2 = true;
                }
            }
        }
        if (!z && (bVar2 = this.f2534f) != null) {
            this.a.add(0, bVar2);
        }
        if (z2 || this.a.size() <= 0) {
            return;
        }
        b(context, this.a.get(0));
    }

    private void b(Context context, b bVar) {
        this.b = bVar;
        a(bVar != null && a(context, bVar.c()));
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /* renamed from: a */
    public b getItem(int i2) {
        if (i2 < 0 || i2 >= this.a.size()) {
            return null;
        }
        return this.a.get(i2);
    }

    private View a(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
        linearLayout.setOrientation(1);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, new ColorDrawable(Color.argb(41, 0, 0, 0)));
        stateListDrawable.addState(new int[]{-16842919}, new ColorDrawable(0));
        linearLayout.setBackgroundDrawable(stateListDrawable);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, a(64.0f)));
        ImageView imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a(48.0f), a(48.0f));
        layoutParams.addRule(9);
        layoutParams.addRule(15);
        int a = a(8.0f);
        layoutParams.setMargins(a, a, a, a);
        imageView.setLayoutParams(layoutParams);
        imageView.setId(101);
        relativeLayout.addView(imageView);
        LinearLayout linearLayout2 = new LinearLayout(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(1, 101);
        linearLayout2.setLayoutParams(layoutParams2);
        linearLayout2.setOrientation(1);
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setMaxLines(1);
        textView.setTextColor(Color.rgb(29, 29, 29));
        textView.setTextSize(1, 17.0f);
        textView.setId(102);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(context);
        textView2.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView2.setText(d.b("x5_tbs_wechat_activity_picker_label_recommend"));
        textView2.setTextColor(Color.rgb(217, 217, 217));
        textView2.setTextSize(1, 14.0f);
        textView2.setId(103);
        linearLayout2.addView(textView2);
        relativeLayout.addView(linearLayout2);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(a(24.0f), a(24.0f));
        layoutParams3.addRule(11);
        layoutParams3.addRule(15);
        layoutParams3.setMargins(0, 0, a(14.0f), 0);
        imageView2.setLayoutParams(layoutParams3);
        imageView2.setImageDrawable(d.a("x5_tbs_activity_picker_check"));
        imageView2.setId(104);
        relativeLayout.addView(imageView2);
        Button button = new Button(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, a(31.0f));
        layoutParams4.addRule(11);
        layoutParams4.addRule(15);
        layoutParams4.setMargins(0, 0, a(8.0f), 0);
        button.setLayoutParams(layoutParams4);
        button.setTextColor(Color.rgb(50, 50, 50));
        button.setTextSize(1, 14.0f);
        StateListDrawable stateListDrawable2 = new StateListDrawable();
        float a2 = a(2.0f);
        RoundRectShape roundRectShape = new RoundRectShape(new float[]{a2, a2, a2, a2, a2, a2, a2, a2}, null, null);
        ShapeDrawable shapeDrawable = new ShapeDrawable(roundRectShape);
        shapeDrawable.getPaint().setColor(Color.argb(128, 69, 192, 26));
        stateListDrawable2.addState(new int[]{-16842910}, shapeDrawable);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(roundRectShape);
        shapeDrawable2.getPaint().setColor(Color.rgb(41, 132, 9));
        stateListDrawable2.addState(new int[]{16842919}, shapeDrawable2);
        ShapeDrawable shapeDrawable3 = new ShapeDrawable(roundRectShape);
        shapeDrawable3.getPaint().setColor(Color.rgb(69, 192, 26));
        stateListDrawable2.addState(new int[]{-16842919}, shapeDrawable3);
        button.setBackgroundDrawable(stateListDrawable2);
        button.setId(107);
        button.setPadding(a(8.0f), 0, a(8.0f), 0);
        relativeLayout.addView(button);
        relativeLayout.setId(105);
        linearLayout.addView(relativeLayout);
        return linearLayout;
    }

    private int a(float f2) {
        c cVar = this.f2533e.get();
        return cVar == null ? (int) f2 : cVar.a(f2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v16 */
    private void a(b bVar, View view) {
        String[] strArr;
        ?? r3;
        if (view == null || bVar == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(102);
        TextView textView2 = (TextView) view.findViewById(103);
        ImageView imageView = (ImageView) view.findViewById(104);
        View findViewById = view.findViewById(105);
        View findViewById2 = view.findViewById(106);
        Button button = (Button) view.findViewById(107);
        ProgressBar progressBar = (ProgressBar) view.findViewById(108);
        ((ImageView) view.findViewById(101)).setImageDrawable(bVar.a(this.f2539k));
        String replaceAll = bVar.a().trim().replaceAll(" ", "");
        for (String str : this.f2536h) {
            if (str != null && str.length() > 0) {
                replaceAll = replaceAll.replaceAll(str, "");
            }
        }
        textView.setText(replaceAll);
        if (bVar.b() == null) {
            Iterator<ResolveInfo> it = getContext().getPackageManager().queryIntentActivities(this.f2531c, 65536).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ResolveInfo next = it.next();
                if (bVar.c().equals(next.activityInfo.packageName)) {
                    bVar.a(next);
                    break;
                }
            }
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.smtt.sdk.b.a.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ViewParent parent = view2.getParent();
                if (parent == null || !(parent instanceof View)) {
                    return;
                }
                View view3 = (View) parent;
                if (view3.getTag() == a.this.f2534f) {
                    a.this.onClick(view3);
                }
            }
        });
        if (TbsConfig.APP_QB.equals(bVar.c())) {
            r3 = 0;
            textView2.setVisibility(0);
        } else {
            r3 = 0;
            textView2.setVisibility(8);
        }
        if (bVar.b() != null) {
            findViewById.setClickable(r3);
            findViewById.setEnabled(r3);
            if (bVar == this.b) {
                imageView.setVisibility(r3);
                if (findViewById2 != 0) {
                    findViewById2.setVisibility(r3);
                }
            } else {
                imageView.setVisibility(8);
                if (findViewById2 != 0) {
                    findViewById2.setVisibility(8);
                }
            }
            button.setVisibility(8);
            button.setOnClickListener(null);
            if (progressBar != null) {
                progressBar.setVisibility(8);
            }
        } else {
            findViewById.setClickable(true);
            findViewById.setEnabled(true);
            imageView.setVisibility(8);
            if (findViewById2 != 0) {
                findViewById2.setVisibility(8);
            }
            button.setVisibility(0);
            button.setText(d.b("x5_tbs_wechat_activity_picker_label_download"));
            button.setEnabled(true);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.smtt.sdk.b.a.a.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TbsConfig.APP_QQ.equals(a.this.getContext().getApplicationContext().getPackageName())) {
                        if (a.this.f2538j != null) {
                            a.this.f2538j.onReceiveValue("http://mdc.html5.qq.com/d/directdown.jsp?channel_id=11047");
                        }
                        ((c) a.this.f2533e.get()).dismiss();
                        return;
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://mdc.html5.qq.com/d/directdown.jsp?channel_id=11041"));
                    intent.addFlags(268435456);
                    a.this.getContext().startActivity(intent);
                }
            });
        }
        view.setTag(bVar);
        view.setOnClickListener(this);
    }

    private void a(boolean z) {
        c cVar;
        WeakReference<c> weakReference = this.f2533e;
        if (weakReference == null || (cVar = weakReference.get()) == null) {
            return;
        }
        cVar.a(z);
    }

    public static boolean a(Context context, String str) {
        if (str != null && !"".equals(str)) {
            try {
                context.getPackageManager().getApplicationInfo(str, 8192);
                return true;
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return false;
    }
}
