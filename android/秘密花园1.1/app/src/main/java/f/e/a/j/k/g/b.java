package f.e.a.j.k.g;

import android.content.DialogInterface;
import c.a.a.b.g.h;
import com.comeback.data.ui.fulao2.fragment.HostFragment;
import f.e.a.e;
import f.e.a.k.j;

/* compiled from: HostFragment.java */
/* loaded from: classes.dex */
public class b implements DialogInterface.OnClickListener {
    public final /* synthetic */ HostFragment a;

    public b(HostFragment hostFragment) {
        this.a = hostFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        CharSequence charSequence = this.a.f754g.getImageString()[i2];
        this.a.tvImage.setText(charSequence);
        j.b().h(HostFragment.f751i, charSequence.toString());
        f.e.a.k.b.z = charSequence.toString();
        h.n1(e.a("0urkgubR37vjg774"));
        f.e.a.k.b.z = charSequence.toString();
        dialogInterface.dismiss();
    }
}
