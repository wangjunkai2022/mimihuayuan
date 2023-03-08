package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import chuangyuan.ycj.videolibrary.R;
import f.i.a.a.h1.o0;
import f.i.a.a.h1.p0;
import f.i.a.a.j1.d;
import f.i.a.a.j1.f;
import f.i.a.a.k1.h;
import f.i.a.a.m1.h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {
    public final int a;
    public final LayoutInflater b;

    /* renamed from: c  reason: collision with root package name */
    public final CheckedTextView f2431c;

    /* renamed from: d  reason: collision with root package name */
    public final CheckedTextView f2432d;

    /* renamed from: e  reason: collision with root package name */
    public final b f2433e;

    /* renamed from: f  reason: collision with root package name */
    public final SparseArray<d.e> f2434f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2435g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f2436h;

    /* renamed from: i  reason: collision with root package name */
    public h f2437i;

    /* renamed from: j  reason: collision with root package name */
    public CheckedTextView[][] f2438j;

    /* renamed from: k  reason: collision with root package name */
    public f.a f2439k;

    /* renamed from: l  reason: collision with root package name */
    public int f2440l;

    /* renamed from: m  reason: collision with root package name */
    public p0 f2441m;
    public boolean n;
    @Nullable
    public c o;

    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {
        public b(a aVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00b7  */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void onClick(android.view.View r10) {
            /*
                Method dump skipped, instructions count: 240
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.TrackSelectionView.b.onClick(android.view.View):void");
        }
    }

    /* loaded from: classes.dex */
    public interface c {
        void onTrackSelectionChanged(boolean z, List<d.e> list);
    }

    public TrackSelectionView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        this.f2434f = new SparseArray<>();
        setSaveFromParentEnabled(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{16843534});
        this.a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        this.b = LayoutInflater.from(context);
        this.f2433e = new b(null);
        this.f2437i = new f.i.a.a.k1.b(getResources());
        this.f2441m = p0.f4911d;
        CheckedTextView checkedTextView = (CheckedTextView) this.b.inflate(17367055, (ViewGroup) this, false);
        this.f2431c = checkedTextView;
        checkedTextView.setBackgroundResource(this.a);
        this.f2431c.setText(R.string.exo_track_selection_none);
        this.f2431c.setEnabled(false);
        this.f2431c.setFocusable(true);
        this.f2431c.setOnClickListener(this.f2433e);
        this.f2431c.setVisibility(8);
        addView(this.f2431c);
        addView(this.b.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) this.b.inflate(17367055, (ViewGroup) this, false);
        this.f2432d = checkedTextView2;
        checkedTextView2.setBackgroundResource(this.a);
        this.f2432d.setText(R.string.exo_track_selection_auto);
        this.f2432d.setEnabled(false);
        this.f2432d.setFocusable(true);
        this.f2432d.setOnClickListener(this.f2433e);
        addView(this.f2432d);
    }

    public final boolean a(int i2) {
        if (!this.f2435g || this.f2441m.b[i2].a <= 1) {
            return false;
        }
        f.a aVar = this.f2439k;
        int i3 = this.f2440l;
        int i4 = aVar.f5516c[i3].b[i2].a;
        int[] iArr = new int[i4];
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            if ((aVar.f5518e[i3][i2][i6] & 7) == 4) {
                iArr[i5] = i6;
                i5++;
            }
        }
        int[] copyOf = Arrays.copyOf(iArr, i5);
        String str = null;
        int i7 = 16;
        int i8 = 0;
        boolean z = false;
        int i9 = 0;
        while (i8 < copyOf.length) {
            String str2 = aVar.f5516c[i3].b[i2].b[copyOf[i8]].f4088i;
            int i10 = i9 + 1;
            if (i9 == 0) {
                str = str2;
            } else {
                z |= !h0.b(str, str2);
            }
            i7 = Math.min(i7, aVar.f5518e[i3][i2][i8] & 24);
            i8++;
            i9 = i10;
        }
        if (z) {
            i7 = Math.min(i7, aVar.f5517d[i3]);
        }
        return i7 != 0;
    }

    public final void b() {
        boolean z;
        boolean z2;
        this.f2431c.setChecked(this.n);
        this.f2432d.setChecked(!this.n && this.f2434f.size() == 0);
        for (int i2 = 0; i2 < this.f2438j.length; i2++) {
            d.e eVar = this.f2434f.get(i2);
            int i3 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f2438j;
                if (i3 < checkedTextViewArr[i2].length) {
                    CheckedTextView checkedTextView = checkedTextViewArr[i2][i3];
                    if (eVar != null) {
                        int[] iArr = eVar.b;
                        int length = iArr.length;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= length) {
                                z2 = false;
                                break;
                            } else if (iArr[i4] == i3) {
                                z2 = true;
                                break;
                            } else {
                                i4++;
                            }
                        }
                        if (z2) {
                            z = true;
                            checkedTextView.setChecked(z);
                            i3++;
                        }
                    }
                    z = false;
                    checkedTextView.setChecked(z);
                    i3++;
                }
            }
        }
    }

    public final void c() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f2439k == null) {
            this.f2431c.setEnabled(false);
            this.f2432d.setEnabled(false);
            return;
        }
        this.f2431c.setEnabled(true);
        this.f2432d.setEnabled(true);
        p0 p0Var = this.f2439k.f5516c[this.f2440l];
        this.f2441m = p0Var;
        int i2 = p0Var.a;
        this.f2438j = new CheckedTextView[i2];
        boolean z = this.f2436h && i2 > 1;
        int i3 = 0;
        while (true) {
            p0 p0Var2 = this.f2441m;
            if (i3 < p0Var2.a) {
                o0 o0Var = p0Var2.b[i3];
                boolean a2 = a(i3);
                this.f2438j[i3] = new CheckedTextView[o0Var.a];
                for (int i4 = 0; i4 < o0Var.a; i4++) {
                    if (i4 == 0) {
                        addView(this.b.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
                    }
                    CheckedTextView checkedTextView = (CheckedTextView) this.b.inflate((a2 || z) ? 17367056 : 17367055, (ViewGroup) this, false);
                    checkedTextView.setBackgroundResource(this.a);
                    checkedTextView.setText(this.f2437i.a(o0Var.b[i4]));
                    if ((this.f2439k.f5518e[this.f2440l][i3][i4] & 7) == 4) {
                        checkedTextView.setFocusable(true);
                        checkedTextView.setTag(Pair.create(Integer.valueOf(i3), Integer.valueOf(i4)));
                        checkedTextView.setOnClickListener(this.f2433e);
                    } else {
                        checkedTextView.setFocusable(false);
                        checkedTextView.setEnabled(false);
                    }
                    this.f2438j[i3][i4] = checkedTextView;
                    addView(checkedTextView);
                }
                i3++;
            } else {
                b();
                return;
            }
        }
    }

    public boolean getIsDisabled() {
        return this.n;
    }

    public List<d.e> getOverrides() {
        ArrayList arrayList = new ArrayList(this.f2434f.size());
        for (int i2 = 0; i2 < this.f2434f.size(); i2++) {
            arrayList.add(this.f2434f.valueAt(i2));
        }
        return arrayList;
    }

    public void setAllowAdaptiveSelections(boolean z) {
        if (this.f2435g != z) {
            this.f2435g = z;
            c();
        }
    }

    public void setAllowMultipleOverrides(boolean z) {
        if (this.f2436h != z) {
            this.f2436h = z;
            if (!z && this.f2434f.size() > 1) {
                for (int size = this.f2434f.size() - 1; size > 0; size--) {
                    this.f2434f.remove(size);
                }
            }
            c();
        }
    }

    public void setShowDisableOption(boolean z) {
        this.f2431c.setVisibility(z ? 0 : 8);
    }

    public void setTrackNameProvider(h hVar) {
        if (hVar != null) {
            this.f2437i = hVar;
            c();
            return;
        }
        throw null;
    }
}
