package f.e.a.j.k.g;

import android.content.DialogInterface;
import c.a.a.b.g.h;
import com.comeback.data.ui.fulao2.fragment.HostFragment;
import f.e.a.e;
import f.e.a.j.k.h.f;
import f.e.a.k.b;
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
        CharSequence charSequence = this.a.f754g.getApiString()[i2];
        this.a.tvHost.setText(charSequence);
        j.b().h(HostFragment.f753k, charSequence.toString());
        b.y = charSequence.toString();
        h.n1(e.a("0urkgubR37vjg774"));
        f.a();
        dialogInterface.dismiss();
    }
}
