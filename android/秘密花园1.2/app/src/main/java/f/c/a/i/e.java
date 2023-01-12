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
import java.util.List;

/* compiled from: OptionsPickerView.java */
/* loaded from: classes.dex */
public class e<T> extends b implements View.OnClickListener {
    public h<T> p;

    public e(f.c.a.g.a aVar) {
        super(aVar.t);
        ViewGroup viewGroup;
        this.f3413e = aVar;
        Context context = aVar.t;
        Dialog dialog = this.f3420l;
        if (dialog != null) {
            dialog.setCancelable(aVar.L);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 80);
        LayoutInflater from = LayoutInflater.from(this.a);
        if (c()) {
            ViewGroup viewGroup2 = (ViewGroup) from.inflate(f.c.a.c.layout_basepickerview, (ViewGroup) null, false);
            this.f3412d = viewGroup2;
            viewGroup2.setBackgroundColor(0);
            ViewGroup viewGroup3 = (ViewGroup) this.f3412d.findViewById(f.c.a.b.content_container);
            this.b = viewGroup3;
            layoutParams.leftMargin = 30;
            layoutParams.rightMargin = 30;
            viewGroup3.setLayoutParams(layoutParams);
            if (this.f3412d != null) {
                Dialog dialog2 = new Dialog(this.a, f.c.a.e.custom_dialog2);
                this.f3420l = dialog2;
                dialog2.setCancelable(this.f3413e.L);
                this.f3420l.setContentView(this.f3412d);
                Window window = this.f3420l.getWindow();
                if (window != null) {
                    window.setWindowAnimations(f.c.a.e.picker_view_scale_anim);
                    window.setGravity(17);
                }
                this.f3420l.setOnDismissListener(new d(this));
            }
            this.f3412d.setOnClickListener(new a(this));
        } else {
            f.c.a.g.a aVar2 = this.f3413e;
            if (aVar2.s == null) {
                aVar2.s = (ViewGroup) ((Activity) this.a).getWindow().getDecorView();
            }
            ViewGroup viewGroup4 = (ViewGroup) from.inflate(f.c.a.c.layout_basepickerview, this.f3413e.s, false);
            this.f3411c = viewGroup4;
            viewGroup4.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            int i2 = this.f3413e.I;
            if (i2 != -1) {
                this.f3411c.setBackgroundColor(i2);
            }
            ViewGroup viewGroup5 = (ViewGroup) this.f3411c.findViewById(f.c.a.b.content_container);
            this.b = viewGroup5;
            viewGroup5.setLayoutParams(layoutParams);
        }
        if (c()) {
            viewGroup = this.f3412d;
        } else {
            viewGroup = this.f3411c;
        }
        viewGroup.setFocusable(true);
        viewGroup.setFocusableInTouchMode(true);
        viewGroup.setOnKeyListener(this.n);
        this.f3417i = AnimationUtils.loadAnimation(this.a, this.f3419k != 80 ? -1 : f.c.a.a.pickerview_slide_in_bottom);
        this.f3416h = AnimationUtils.loadAnimation(this.a, this.f3419k == 80 ? f.c.a.a.pickerview_slide_out_bottom : -1);
        f.c.a.h.a aVar3 = this.f3413e.f3401d;
        if (aVar3 == null) {
            LayoutInflater.from(context).inflate(this.f3413e.r, this.b);
            TextView textView = (TextView) b(f.c.a.b.tvTitle);
            RelativeLayout relativeLayout = (RelativeLayout) b(f.c.a.b.rv_topbar);
            Button button = (Button) b(f.c.a.b.btnSubmit);
            Button button2 = (Button) b(f.c.a.b.btnCancel);
            button.setTag("submit");
            button2.setTag("cancel");
            button.setOnClickListener(this);
            button2.setOnClickListener(this);
            button.setText(TextUtils.isEmpty(this.f3413e.u) ? context.getResources().getString(f.c.a.d.pickerview_submit) : this.f3413e.u);
            button2.setText(TextUtils.isEmpty(this.f3413e.v) ? context.getResources().getString(f.c.a.d.pickerview_cancel) : this.f3413e.v);
            textView.setText(TextUtils.isEmpty(this.f3413e.w) ? "" : this.f3413e.w);
            button.setTextColor(this.f3413e.x);
            button2.setTextColor(this.f3413e.y);
            textView.setTextColor(this.f3413e.z);
            relativeLayout.setBackgroundColor(this.f3413e.B);
            button.setTextSize(this.f3413e.C);
            button2.setTextSize(this.f3413e.C);
            textView.setTextSize(this.f3413e.D);
        } else {
            aVar3.a(LayoutInflater.from(context).inflate(this.f3413e.r, this.b));
        }
        LinearLayout linearLayout = (LinearLayout) b(f.c.a.b.optionspicker);
        linearLayout.setBackgroundColor(this.f3413e.A);
        h<T> hVar = new h<>(linearLayout, this.f3413e.q);
        this.p = hVar;
        f.c.a.h.c cVar = this.f3413e.f3400c;
        if (cVar != null) {
            hVar.f3430k = cVar;
        }
        h<T> hVar2 = this.p;
        float f2 = this.f3413e.E;
        hVar2.a.setTextSize(f2);
        hVar2.b.setTextSize(f2);
        hVar2.f3422c.setTextSize(f2);
        h<T> hVar3 = this.p;
        int i3 = this.f3413e.P;
        hVar3.a.setItemsVisibleCount(i3);
        hVar3.b.setItemsVisibleCount(i3);
        hVar3.f3422c.setItemsVisibleCount(i3);
        h<T> hVar4 = this.p;
        boolean z = this.f3413e.Q;
        hVar4.a.setAlphaGradient(z);
        hVar4.b.setAlphaGradient(z);
        hVar4.f3422c.setAlphaGradient(z);
        h<T> hVar5 = this.p;
        f.c.a.g.a aVar4 = this.f3413e;
        String str = aVar4.f3402e;
        String str2 = aVar4.f3403f;
        String str3 = aVar4.f3404g;
        if (hVar5 != null) {
            if (str != null) {
                hVar5.a.setLabel(str);
            }
            if (str2 != null) {
                hVar5.b.setLabel(str2);
            }
            if (str3 != null) {
                hVar5.f3422c.setLabel(str3);
            }
            h<T> hVar6 = this.p;
            f.c.a.g.a aVar5 = this.f3413e;
            int i4 = aVar5.f3408k;
            int i5 = aVar5.f3409l;
            int i6 = aVar5.f3410m;
            hVar6.a.setTextXOffset(i4);
            hVar6.b.setTextXOffset(i5);
            hVar6.f3422c.setTextXOffset(i6);
            h<T> hVar7 = this.p;
            f.c.a.g.a aVar6 = this.f3413e;
            boolean z2 = aVar6.n;
            boolean z3 = aVar6.o;
            boolean z4 = aVar6.p;
            hVar7.a.setCyclic(z2);
            hVar7.b.setCyclic(z3);
            hVar7.f3422c.setCyclic(z4);
            h<T> hVar8 = this.p;
            Typeface typeface = this.f3413e.N;
            hVar8.a.setTypeface(typeface);
            hVar8.b.setTypeface(typeface);
            hVar8.f3422c.setTypeface(typeface);
            boolean z5 = this.f3413e.L;
            ViewGroup viewGroup6 = this.f3411c;
            if (viewGroup6 != null) {
                View findViewById = viewGroup6.findViewById(f.c.a.b.outmost_container);
                if (z5) {
                    findViewById.setOnTouchListener(this.o);
                } else {
                    findViewById.setOnTouchListener(null);
                }
            }
            h<T> hVar9 = this.p;
            int i7 = this.f3413e.H;
            hVar9.a.setDividerColor(i7);
            hVar9.b.setDividerColor(i7);
            hVar9.f3422c.setDividerColor(i7);
            h<T> hVar10 = this.p;
            WheelView.b bVar = this.f3413e.O;
            hVar10.a.setDividerType(bVar);
            hVar10.b.setDividerType(bVar);
            hVar10.f3422c.setDividerType(bVar);
            h<T> hVar11 = this.p;
            float f3 = this.f3413e.J;
            hVar11.a.setLineSpacingMultiplier(f3);
            hVar11.b.setLineSpacingMultiplier(f3);
            hVar11.f3422c.setLineSpacingMultiplier(f3);
            h<T> hVar12 = this.p;
            int i8 = this.f3413e.F;
            hVar12.a.setTextColorOut(i8);
            hVar12.b.setTextColorOut(i8);
            hVar12.f3422c.setTextColorOut(i8);
            h<T> hVar13 = this.p;
            int i9 = this.f3413e.G;
            hVar13.a.setTextColorCenter(i9);
            hVar13.b.setTextColorCenter(i9);
            hVar13.f3422c.setTextColorCenter(i9);
            h<T> hVar14 = this.p;
            boolean z6 = this.f3413e.M;
            hVar14.a.f2362g = z6;
            hVar14.b.f2362g = z6;
            hVar14.f3422c.f2362g = z6;
            return;
        }
        throw null;
    }

    @Override // f.c.a.i.b
    public boolean c() {
        return this.f3413e.K;
    }

    public void f(List<T> list, List<List<T>> list2, List<List<List<T>>> list3) {
        h<T> hVar = this.p;
        hVar.f3423d = list;
        hVar.f3424e = list2;
        hVar.f3425f = null;
        hVar.a.setAdapter(new f.c.a.f.a(list));
        hVar.a.setCurrentItem(0);
        List<List<T>> list4 = hVar.f3424e;
        if (list4 != null) {
            hVar.b.setAdapter(new f.c.a.f.a(list4.get(0)));
        }
        WheelView wheelView = hVar.b;
        wheelView.setCurrentItem(wheelView.getCurrentItem());
        List<List<List<T>>> list5 = hVar.f3425f;
        if (list5 != null) {
            hVar.f3422c.setAdapter(new f.c.a.f.a(list5.get(0).get(0)));
        }
        WheelView wheelView2 = hVar.f3422c;
        wheelView2.setCurrentItem(wheelView2.getCurrentItem());
        hVar.a.setIsOptions(true);
        hVar.b.setIsOptions(true);
        hVar.f3422c.setIsOptions(true);
        if (hVar.f3424e == null) {
            hVar.b.setVisibility(8);
        } else {
            hVar.b.setVisibility(0);
        }
        if (hVar.f3425f == null) {
            hVar.f3422c.setVisibility(8);
        } else {
            hVar.f3422c.setVisibility(0);
        }
        hVar.f3428i = new f(hVar);
        hVar.f3429j = new g(hVar);
        if (list != null && hVar.f3426g) {
            hVar.a.setOnItemSelectedListener(hVar.f3428i);
        }
        if (list2 != null && hVar.f3426g) {
            hVar.b.setOnItemSelectedListener(hVar.f3429j);
        }
        h<T> hVar2 = this.p;
        if (hVar2 != null) {
            f.c.a.g.a aVar = this.f3413e;
            int i2 = aVar.f3405h;
            int i3 = aVar.f3406i;
            int i4 = aVar.f3407j;
            if (hVar2.f3426g) {
                if (hVar2.f3423d != null) {
                    hVar2.a.setCurrentItem(i2);
                }
                List<List<T>> list6 = hVar2.f3424e;
                if (list6 != null) {
                    hVar2.b.setAdapter(new f.c.a.f.a(list6.get(i2)));
                    hVar2.b.setCurrentItem(i3);
                }
                List<List<List<T>>> list7 = hVar2.f3425f;
                if (list7 != null) {
                    hVar2.f3422c.setAdapter(new f.c.a.f.a(list7.get(i2).get(i3)));
                    hVar2.f3422c.setCurrentItem(i4);
                    return;
                }
                return;
            }
            hVar2.a.setCurrentItem(i2);
            hVar2.b.setCurrentItem(i3);
            hVar2.f3422c.setCurrentItem(i4);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener;
        String str = (String) view.getTag();
        if (str.equals("submit")) {
            if (this.f3413e.a != null) {
                h<T> hVar = this.p;
                int[] iArr = new int[3];
                iArr[0] = hVar.a.getCurrentItem();
                List<List<T>> list = hVar.f3424e;
                if (list != null && list.size() > 0) {
                    iArr[1] = hVar.b.getCurrentItem() > hVar.f3424e.get(iArr[0]).size() - 1 ? 0 : hVar.b.getCurrentItem();
                } else {
                    iArr[1] = hVar.b.getCurrentItem();
                }
                List<List<List<T>>> list2 = hVar.f3425f;
                if (list2 != null && list2.size() > 0) {
                    iArr[2] = hVar.f3422c.getCurrentItem() > hVar.f3425f.get(iArr[0]).get(iArr[1]).size() - 1 ? 0 : hVar.f3422c.getCurrentItem();
                } else {
                    iArr[2] = hVar.f3422c.getCurrentItem();
                }
                this.f3413e.a.a(iArr[0], iArr[1], iArr[2], null);
            }
        } else if (str.equals("cancel") && (onClickListener = this.f3413e.b) != null) {
            onClickListener.onClick(view);
        }
        a();
    }
}
