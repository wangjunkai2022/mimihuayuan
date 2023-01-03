package f.c.a.i;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.contrarywind.view.WheelView;
import f.c.a.b;
import f.c.a.c;
import f.c.a.d;
import f.c.a.g.a;
import java.util.List;

/* compiled from: OptionsPickerView.java */
/* loaded from: classes.dex */
public class e<T> extends b implements View.OnClickListener {
    public h<T> p;

    public e(a aVar) {
        super(aVar.t);
        ViewGroup viewGroup;
        int i2;
        this.f3338e = aVar;
        Context context = aVar.t;
        Dialog dialog = this.f3345l;
        if (dialog != null) {
            dialog.setCancelable(aVar.L);
        }
        int i3 = -1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        LayoutInflater from = LayoutInflater.from(this.a);
        if (c()) {
            ViewGroup viewGroup2 = (ViewGroup) from.inflate(c.layout_basepickerview, (ViewGroup) null, false);
            this.f3337d = viewGroup2;
            viewGroup2.setBackgroundColor(0);
            ViewGroup viewGroup3 = (ViewGroup) this.f3337d.findViewById(b.content_container);
            this.b = viewGroup3;
            layoutParams.leftMargin = 30;
            layoutParams.rightMargin = 30;
            viewGroup3.setLayoutParams(layoutParams);
            if (this.f3337d != null) {
                Dialog dialog2 = new Dialog(this.a, f.c.a.e.custom_dialog2);
                this.f3345l = dialog2;
                dialog2.setCancelable(this.f3338e.L);
                this.f3345l.setContentView(this.f3337d);
                Window window = this.f3345l.getWindow();
                if (window != null) {
                    window.setWindowAnimations(f.c.a.e.picker_view_scale_anim);
                    window.setGravity(17);
                }
                this.f3345l.setOnDismissListener(new d(this));
            }
            this.f3337d.setOnClickListener(new a(this));
        } else {
            a aVar2 = this.f3338e;
            if (aVar2.s == null) {
                aVar2.s = (ViewGroup) ((Activity) this.a).getWindow().getDecorView();
            }
            ViewGroup viewGroup4 = (ViewGroup) from.inflate(c.layout_basepickerview, this.f3338e.s, false);
            this.f3336c = viewGroup4;
            viewGroup4.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            int i4 = this.f3338e.I;
            if (i4 != -1) {
                this.f3336c.setBackgroundColor(i4);
            }
            ViewGroup viewGroup5 = (ViewGroup) this.f3336c.findViewById(b.content_container);
            this.b = viewGroup5;
            viewGroup5.setLayoutParams(layoutParams);
        }
        if (c()) {
            viewGroup = this.f3337d;
        } else {
            viewGroup = this.f3336c;
        }
        viewGroup.setFocusable(true);
        viewGroup.setFocusableInTouchMode(true);
        viewGroup.setOnKeyListener(this.n);
        if (this.f3344k != 80) {
            i2 = -1;
        } else {
            i2 = f.c.a.a.pickerview_slide_in_bottom;
        }
        this.f3342i = AnimationUtils.loadAnimation(this.a, i2);
        this.f3341h = AnimationUtils.loadAnimation(this.a, this.f3344k == 80 ? f.c.a.a.pickerview_slide_out_bottom : i3);
        f.c.a.h.a aVar3 = this.f3338e.f3326d;
        if (aVar3 == null) {
            LayoutInflater.from(context).inflate(this.f3338e.r, this.b);
            TextView textView = (TextView) b(b.tvTitle);
            RelativeLayout relativeLayout = (RelativeLayout) b(b.rv_topbar);
            Button button = (Button) b(b.btnSubmit);
            Button button2 = (Button) b(b.btnCancel);
            button.setTag("submit");
            button2.setTag("cancel");
            button.setOnClickListener(this);
            button2.setOnClickListener(this);
            button.setText(TextUtils.isEmpty(this.f3338e.u) ? context.getResources().getString(d.pickerview_submit) : this.f3338e.u);
            button2.setText(TextUtils.isEmpty(this.f3338e.v) ? context.getResources().getString(d.pickerview_cancel) : this.f3338e.v);
            textView.setText(TextUtils.isEmpty(this.f3338e.w) ? "" : this.f3338e.w);
            button.setTextColor(this.f3338e.x);
            button2.setTextColor(this.f3338e.y);
            textView.setTextColor(this.f3338e.z);
            relativeLayout.setBackgroundColor(this.f3338e.B);
            button.setTextSize((float) this.f3338e.C);
            button2.setTextSize((float) this.f3338e.C);
            textView.setTextSize((float) this.f3338e.D);
        } else {
            aVar3.a(LayoutInflater.from(context).inflate(this.f3338e.r, this.b));
        }
        LinearLayout linearLayout = (LinearLayout) b(b.optionspicker);
        linearLayout.setBackgroundColor(this.f3338e.A);
        h<T> hVar = new h<>(linearLayout, this.f3338e.q);
        this.p = hVar;
        f.c.a.h.c cVar = this.f3338e.f3325c;
        if (cVar != null) {
            hVar.f3355k = cVar;
        }
        h<T> hVar2 = this.p;
        float f2 = (float) this.f3338e.E;
        hVar2.a.setTextSize(f2);
        hVar2.b.setTextSize(f2);
        hVar2.f3347c.setTextSize(f2);
        h<T> hVar3 = this.p;
        int i5 = this.f3338e.P;
        hVar3.a.setItemsVisibleCount(i5);
        hVar3.b.setItemsVisibleCount(i5);
        hVar3.f3347c.setItemsVisibleCount(i5);
        h<T> hVar4 = this.p;
        boolean z = this.f3338e.Q;
        hVar4.a.setAlphaGradient(z);
        hVar4.b.setAlphaGradient(z);
        hVar4.f3347c.setAlphaGradient(z);
        h<T> hVar5 = this.p;
        a aVar4 = this.f3338e;
        String str = aVar4.f3327e;
        String str2 = aVar4.f3328f;
        String str3 = aVar4.f3329g;
        if (hVar5 != null) {
            if (str != null) {
                hVar5.a.setLabel(str);
            }
            if (str2 != null) {
                hVar5.b.setLabel(str2);
            }
            if (str3 != null) {
                hVar5.f3347c.setLabel(str3);
            }
            h<T> hVar6 = this.p;
            a aVar5 = this.f3338e;
            int i6 = aVar5.f3333k;
            int i7 = aVar5.f3334l;
            int i8 = aVar5.f3335m;
            hVar6.a.setTextXOffset(i6);
            hVar6.b.setTextXOffset(i7);
            hVar6.f3347c.setTextXOffset(i8);
            h<T> hVar7 = this.p;
            a aVar6 = this.f3338e;
            boolean z2 = aVar6.n;
            boolean z3 = aVar6.o;
            boolean z4 = aVar6.p;
            hVar7.a.setCyclic(z2);
            hVar7.b.setCyclic(z3);
            hVar7.f3347c.setCyclic(z4);
            h<T> hVar8 = this.p;
            Typeface typeface = this.f3338e.N;
            hVar8.a.setTypeface(typeface);
            hVar8.b.setTypeface(typeface);
            hVar8.f3347c.setTypeface(typeface);
            boolean z5 = this.f3338e.L;
            ViewGroup viewGroup6 = this.f3336c;
            if (viewGroup6 != null) {
                View findViewById = viewGroup6.findViewById(b.outmost_container);
                if (z5) {
                    findViewById.setOnTouchListener(this.o);
                } else {
                    findViewById.setOnTouchListener(null);
                }
            }
            h<T> hVar9 = this.p;
            int i9 = this.f3338e.H;
            hVar9.a.setDividerColor(i9);
            hVar9.b.setDividerColor(i9);
            hVar9.f3347c.setDividerColor(i9);
            h<T> hVar10 = this.p;
            WheelView.b bVar = this.f3338e.O;
            hVar10.a.setDividerType(bVar);
            hVar10.b.setDividerType(bVar);
            hVar10.f3347c.setDividerType(bVar);
            h<T> hVar11 = this.p;
            float f3 = this.f3338e.J;
            hVar11.a.setLineSpacingMultiplier(f3);
            hVar11.b.setLineSpacingMultiplier(f3);
            hVar11.f3347c.setLineSpacingMultiplier(f3);
            h<T> hVar12 = this.p;
            int i10 = this.f3338e.F;
            hVar12.a.setTextColorOut(i10);
            hVar12.b.setTextColorOut(i10);
            hVar12.f3347c.setTextColorOut(i10);
            h<T> hVar13 = this.p;
            int i11 = this.f3338e.G;
            hVar13.a.setTextColorCenter(i11);
            hVar13.b.setTextColorCenter(i11);
            hVar13.f3347c.setTextColorCenter(i11);
            h<T> hVar14 = this.p;
            boolean z6 = this.f3338e.M;
            hVar14.a.f2287g = z6;
            hVar14.b.f2287g = z6;
            hVar14.f3347c.f2287g = z6;
            return;
        }
        throw null;
    }

    @Override // f.c.a.i.b
    public boolean c() {
        return this.f3338e.K;
    }

    public void f(List<T> list, List<List<T>> list2, List<List<List<T>>> list3) {
        h<T> hVar = this.p;
        hVar.f3348d = list;
        hVar.f3349e = list2;
        hVar.f3350f = null;
        hVar.a.setAdapter(new f.c.a.f.a(list));
        hVar.a.setCurrentItem(0);
        List<List<T>> list4 = hVar.f3349e;
        if (list4 != null) {
            hVar.b.setAdapter(new f.c.a.f.a(list4.get(0)));
        }
        WheelView wheelView = hVar.b;
        wheelView.setCurrentItem(wheelView.getCurrentItem());
        List<List<List<T>>> list5 = hVar.f3350f;
        if (list5 != null) {
            hVar.f3347c.setAdapter(new f.c.a.f.a(list5.get(0).get(0)));
        }
        WheelView wheelView2 = hVar.f3347c;
        wheelView2.setCurrentItem(wheelView2.getCurrentItem());
        hVar.a.setIsOptions(true);
        hVar.b.setIsOptions(true);
        hVar.f3347c.setIsOptions(true);
        if (hVar.f3349e == null) {
            hVar.b.setVisibility(8);
        } else {
            hVar.b.setVisibility(0);
        }
        if (hVar.f3350f == null) {
            hVar.f3347c.setVisibility(8);
        } else {
            hVar.f3347c.setVisibility(0);
        }
        hVar.f3353i = new f(hVar);
        hVar.f3354j = new g(hVar);
        if (list != null && hVar.f3351g) {
            hVar.a.setOnItemSelectedListener(hVar.f3353i);
        }
        if (list2 != null && hVar.f3351g) {
            hVar.b.setOnItemSelectedListener(hVar.f3354j);
        }
        h<T> hVar2 = this.p;
        if (hVar2 != null) {
            a aVar = this.f3338e;
            int i2 = aVar.f3330h;
            int i3 = aVar.f3331i;
            int i4 = aVar.f3332j;
            if (hVar2.f3351g) {
                if (hVar2.f3348d != null) {
                    hVar2.a.setCurrentItem(i2);
                }
                List<List<T>> list6 = hVar2.f3349e;
                if (list6 != null) {
                    hVar2.b.setAdapter(new f.c.a.f.a(list6.get(i2)));
                    hVar2.b.setCurrentItem(i3);
                }
                List<List<List<T>>> list7 = hVar2.f3350f;
                if (list7 != null) {
                    hVar2.f3347c.setAdapter(new f.c.a.f.a(list7.get(i2).get(i3)));
                    hVar2.f3347c.setCurrentItem(i4);
                    return;
                }
                return;
            }
            hVar2.a.setCurrentItem(i2);
            hVar2.b.setCurrentItem(i3);
            hVar2.f3347c.setCurrentItem(i4);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener;
        String str = (String) view.getTag();
        if (str.equals("submit")) {
            if (this.f3338e.a != null) {
                h<T> hVar = this.p;
                int[] iArr = new int[3];
                iArr[0] = hVar.a.getCurrentItem();
                List<List<T>> list = hVar.f3349e;
                if (list == null || list.size() <= 0) {
                    iArr[1] = hVar.b.getCurrentItem();
                } else {
                    iArr[1] = hVar.b.getCurrentItem() > hVar.f3349e.get(iArr[0]).size() - 1 ? 0 : hVar.b.getCurrentItem();
                }
                List<List<List<T>>> list2 = hVar.f3350f;
                if (list2 == null || list2.size() <= 0) {
                    iArr[2] = hVar.f3347c.getCurrentItem();
                } else {
                    iArr[2] = hVar.f3347c.getCurrentItem() > hVar.f3350f.get(iArr[0]).get(iArr[1]).size() - 1 ? 0 : hVar.f3347c.getCurrentItem();
                }
                this.f3338e.a.a(iArr[0], iArr[1], iArr[2], null);
            }
        } else if (str.equals("cancel") && (onClickListener = this.f3338e.b) != null) {
            onClickListener.onClick(view);
        }
        a();
    }
}
