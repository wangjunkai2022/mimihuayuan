package f.e.a.j.l.g;

import android.content.DialogInterface;
import c.a.a.b.g.h;
import com.comeback.data.ui.fulao2.fragment.HostFragment;
import f.e.a.e;
import f.e.a.j.l.h.f;
import f.e.a.k.j;

/* compiled from: HostFragment.java */
/* loaded from: classes.dex */
public class a implements DialogInterface.OnClickListener {
    public final /* synthetic */ HostFragment a;

    public a(HostFragment hostFragment) {
        this.a = hostFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        CharSequence charSequence = this.a.f827g.getApiString()[i2];
        this.a.tvHost.setText(charSequence);
        j.b().h(HostFragment.f826k, charSequence.toString());
        f.e.a.k.b.y = charSequence.toString();
        h.n1(e.a("0urkgubR37vjg774"));
        f.a();
        dialogInterface.dismiss();
    }
}
