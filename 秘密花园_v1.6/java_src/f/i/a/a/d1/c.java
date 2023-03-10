package f.i.a.a.d1;

import f.i.a.a.b0;
import f.i.a.a.d1.i.g;
/* compiled from: MetadataDecoderFactory.java */
/* loaded from: classes.dex */
public interface c {
    public static final c a = new a();

    /* compiled from: MetadataDecoderFactory.java */
    /* loaded from: classes.dex */
    public static class a implements c {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // f.i.a.a.d1.c
        public b a(b0 b0Var) {
            char c2;
            String str = b0Var.f4097i;
            switch (str.hashCode()) {
                case -1348231605:
                    if (str.equals("application/x-icy")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1248341703:
                    if (str.equals("application/id3")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1154383568:
                    if (str.equals("application/x-emsg")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1652648887:
                    if (str.equals("application/x-scte35")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 != 0) {
                if (c2 != 1) {
                    if (c2 != 2) {
                        if (c2 == 3) {
                            return new f.i.a.a.d1.h.a();
                        }
                        throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
                    }
                    return new f.i.a.a.d1.j.c();
                }
                return new f.i.a.a.d1.g.b();
            }
            return new g();
        }

        @Override // f.i.a.a.d1.c
        public boolean b(b0 b0Var) {
            String str = b0Var.f4097i;
            return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str);
        }
    }

    b a(b0 b0Var);

    boolean b(b0 b0Var);
}
