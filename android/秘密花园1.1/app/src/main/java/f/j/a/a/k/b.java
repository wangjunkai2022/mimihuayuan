package f.j.a.a.k;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import f.j.a.a.f.f;
import f.j.a.a.f.g;
import f.j.a.a.f.h;
import f.j.a.a.f.i;

/* compiled from: InternalAbstract.java */
/* loaded from: classes.dex */
public abstract class b extends RelativeLayout implements g {
    public View a;
    public f.j.a.a.g.c b;

    /* renamed from: c  reason: collision with root package name */
    public g f6168c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NonNull View view) {
        super(view.getContext(), null, 0);
        g gVar = view instanceof g ? (g) view : null;
        this.a = view;
        this.f6168c = gVar;
        if ((this instanceof f.j.a.a.j.b) && (gVar instanceof f) && gVar.getSpinnerStyle() == f.j.a.a.g.c.f6136h) {
            gVar.getView().setScaleY(-1.0f);
        } else if (this instanceof f.j.a.a.j.c) {
            g gVar2 = this.f6168c;
            if ((gVar2 instanceof f.j.a.a.f.e) && gVar2.getSpinnerStyle() == f.j.a.a.g.c.f6136h) {
                gVar.getView().setScaleY(-1.0f);
            }
        }
    }

    public void a(@NonNull i iVar, @NonNull f.j.a.a.g.b bVar, @NonNull f.j.a.a.g.b bVar2) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return;
        }
        if ((this instanceof f.j.a.a.j.b) && (gVar instanceof f)) {
            if (bVar.b) {
                bVar = bVar.b();
            }
            if (bVar2.b) {
                bVar2 = bVar2.b();
            }
        } else if ((this instanceof f.j.a.a.j.c) && (this.f6168c instanceof f.j.a.a.f.e)) {
            if (bVar.a) {
                bVar = bVar.a();
            }
            if (bVar2.a) {
                bVar2 = bVar2.a();
            }
        }
        g gVar2 = this.f6168c;
        if (gVar2 != null) {
            gVar2.a(iVar, bVar, bVar2);
        }
    }

    public void b(@NonNull i iVar, int i2, int i3) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return;
        }
        gVar.b(iVar, i2, i3);
    }

    @SuppressLint({"RestrictedApi"})
    public boolean d(boolean z) {
        g gVar = this.f6168c;
        return (gVar instanceof f.j.a.a.f.e) && ((f.j.a.a.f.e) gVar).d(z);
    }

    @Override // f.j.a.a.f.g
    public void e(@NonNull h hVar, int i2, int i3) {
        g gVar = this.f6168c;
        if (gVar != null && gVar != this) {
            gVar.e(hVar, i2, i3);
            return;
        }
        View view = this.a;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.j) {
                ((SmartRefreshLayout.k) hVar).c(this, ((SmartRefreshLayout.j) layoutParams).a);
            }
        }
    }

    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return true;
        }
        return (obj instanceof g) && getView() == ((g) obj).getView();
    }

    public void g(float f2, int i2, int i3) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return;
        }
        gVar.g(f2, i2, i3);
    }

    @Override // f.j.a.a.f.g
    @NonNull
    public f.j.a.a.g.c getSpinnerStyle() {
        int i2;
        f.j.a.a.g.c[] cVarArr;
        f.j.a.a.g.c cVar = this.b;
        if (cVar != null) {
            return cVar;
        }
        g gVar = this.f6168c;
        if (gVar != null && gVar != this) {
            return gVar.getSpinnerStyle();
        }
        View view = this.a;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof SmartRefreshLayout.j) {
                f.j.a.a.g.c cVar2 = ((SmartRefreshLayout.j) layoutParams).b;
                this.b = cVar2;
                if (cVar2 != null) {
                    return cVar2;
                }
            }
            if (layoutParams != null && ((i2 = layoutParams.height) == 0 || i2 == -1)) {
                for (f.j.a.a.g.c cVar3 : f.j.a.a.g.c.f6137i) {
                    if (cVar3.f6138c) {
                        this.b = cVar3;
                        return cVar3;
                    }
                }
            }
        }
        f.j.a.a.g.c cVar4 = f.j.a.a.g.c.f6132d;
        this.b = cVar4;
        return cVar4;
    }

    @Override // f.j.a.a.f.g
    @NonNull
    public View getView() {
        View view = this.a;
        return view == null ? this : view;
    }

    public void h(boolean z, float f2, int i2, int i3, int i4) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return;
        }
        gVar.h(z, f2, i2, i3, i4);
    }

    public int i(@NonNull i iVar, boolean z) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return 0;
        }
        return gVar.i(iVar, z);
    }

    public boolean j() {
        g gVar = this.f6168c;
        return (gVar == null || gVar == this || !gVar.j()) ? false : true;
    }

    public void k(@NonNull i iVar, int i2, int i3) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return;
        }
        gVar.k(iVar, i2, i3);
    }

    public void setPrimaryColors(@ColorInt int... iArr) {
        g gVar = this.f6168c;
        if (gVar == null || gVar == this) {
            return;
        }
        gVar.setPrimaryColors(iArr);
    }

    public b(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
