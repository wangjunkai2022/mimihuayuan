package f.i.a.a.c1;

import androidx.annotation.Nullable;
import f.i.a.a.c1.d;
import java.util.List;

/* compiled from: MediaCodecSelector.java */
/* loaded from: classes.dex */
public interface c {
    public static final c a = new a();

    /* compiled from: MediaCodecSelector.java */
    /* loaded from: classes.dex */
    public static class a implements c {
        @Override // f.i.a.a.c1.c
        public List<a> a(String str, boolean z, boolean z2) throws d.c {
            return d.e(str, z, z2);
        }

        @Override // f.i.a.a.c1.c
        @Nullable
        public a b() throws d.c {
            a d2 = d.d("audio/raw", false, false);
            if (d2 == null) {
                return null;
            }
            return new a(d2.a, null, null, null, true, false, false);
        }
    }

    List<a> a(String str, boolean z, boolean z2) throws d.c;

    @Nullable
    a b() throws d.c;
}
