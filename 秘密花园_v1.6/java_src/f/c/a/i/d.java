package f.c.a.i;

import android.content.DialogInterface;
/* compiled from: BasePickerView.java */
/* loaded from: classes.dex */
public class d implements DialogInterface.OnDismissListener {
    public final /* synthetic */ b a;

    public d(b bVar) {
        this.a = bVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        b bVar = this.a;
        f.c.a.h.b bVar2 = bVar.f3418f;
        if (bVar2 != null) {
            bVar2.a(bVar);
        }
    }
}
