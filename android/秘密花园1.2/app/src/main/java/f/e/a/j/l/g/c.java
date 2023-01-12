package f.e.a.j.l.g;

import android.content.DialogInterface;
import c.a.a.b.g.h;
import com.comeback.data.ui.fulao2.bean.VideoInfo;
import com.comeback.data.ui.fulao2.fragment.HostFragment;
import f.e.a.e;
import f.e.a.k.j;

/* compiled from: HostFragment.java */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnClickListener {
    public final /* synthetic */ HostFragment a;

    public c(HostFragment hostFragment) {
        this.a = hostFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        CharSequence charSequence = this.a.f827g.getStreamString()[i2];
        this.a.tvStream.setText(charSequence);
        j.b().h(HostFragment.f825j, charSequence.toString());
        VideoInfo.StreamHost = charSequence.toString();
        h.n1(e.a("0urkgubR37vjg774"));
        dialogInterface.dismiss();
    }
}
