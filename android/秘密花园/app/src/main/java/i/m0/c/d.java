package i.m0.c;

import com.tencent.smtt.sdk.TbsListener;
import h.o.c.g;
import i.e0;
import i.h0;

/* compiled from: CacheStrategy.kt */
/* loaded from: classes.dex */
public final class d {
    public final e0 a;
    public final h0 b;

    public d(e0 e0Var, h0 h0Var) {
        this.a = e0Var;
        this.b = h0Var;
    }

    public static final boolean a(h0 h0Var, e0 e0Var) {
        if (h0Var == null) {
            g.f("response");
            throw null;
        } else if (e0Var != null) {
            int i2 = h0Var.f6449e;
            if (!(i2 == 200 || i2 == 410 || i2 == 414 || i2 == 501 || i2 == 203 || i2 == 204)) {
                if (i2 != 307) {
                    if (!(i2 == 308 || i2 == 404 || i2 == 405)) {
                        switch (i2) {
                            case 300:
                            case 301:
                                break;
                            case TbsListener.ErrorCode.ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY:
                                break;
                            default:
                                return false;
                        }
                    }
                }
                if (h0.f(h0Var, "Expires", null, 2) == null && h0Var.d().f6421c == -1 && !h0Var.d().f6424f && !h0Var.d().f6423e) {
                    return false;
                }
            }
            if (h0Var.d().b || e0Var.a().b) {
                return false;
            }
            return true;
        } else {
            g.f("request");
            throw null;
        }
    }
}
