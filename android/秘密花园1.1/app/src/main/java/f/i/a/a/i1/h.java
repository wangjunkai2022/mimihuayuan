package f.i.a.a.i1;

import f.i.a.a.b0;

/* compiled from: SubtitleDecoderFactory.java */
/* loaded from: classes.dex */
public interface h {
    public static final h a = new a();

    /* compiled from: SubtitleDecoderFactory.java */
    /* loaded from: classes.dex */
    public static class a implements h {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public f a(b0 b0Var) {
            char c2;
            String str = b0Var.f4013i;
            switch (str.hashCode()) {
                case -1351681404:
                    if (str.equals("application/dvbsubs")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1248334819:
                    if (str.equals("application/pgs")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1026075066:
                    if (str.equals("application/x-mp4-vtt")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1004728940:
                    if (str.equals("text/vtt")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 691401887:
                    if (str.equals("application/x-quicktime-tx3g")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 822864842:
                    if (str.equals("text/x-ssa")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 930165504:
                    if (str.equals("application/x-mp4-cea-608")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1566015601:
                    if (str.equals("application/cea-608")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1566016562:
                    if (str.equals("application/cea-708")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1668750253:
                    if (str.equals("application/x-subrip")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1693976202:
                    if (str.equals("application/ttml+xml")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    return new f.i.a.a.i1.t.g();
                case 1:
                    return new f.i.a.a.i1.p.a(b0Var.f4015k);
                case 2:
                    return new f.i.a.a.i1.t.b();
                case 3:
                    return new f.i.a.a.i1.r.a();
                case 4:
                    return new f.i.a.a.i1.q.a();
                case 5:
                    return new f.i.a.a.i1.s.a(b0Var.f4015k);
                case 6:
                case 7:
                    return new f.i.a.a.i1.m.a(b0Var.f4013i, b0Var.B);
                case '\b':
                    return new f.i.a.a.i1.m.c(b0Var.B);
                case '\t':
                    return new f.i.a.a.i1.n.a(b0Var.f4015k);
                case '\n':
                    return new f.i.a.a.i1.o.a();
                default:
                    throw new IllegalArgumentException("Attempted to create decoder for unsupported format");
            }
        }
    }
}
