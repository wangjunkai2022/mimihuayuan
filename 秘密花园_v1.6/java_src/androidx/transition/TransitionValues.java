package androidx.transition;

import android.view.View;
import com.umeng.commonsdk.internal.utils.g;
import f.b.a.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    public final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    public boolean equals(Object obj) {
        if (obj instanceof TransitionValues) {
            TransitionValues transitionValues = (TransitionValues) obj;
            return this.view == transitionValues.view && this.values.equals(transitionValues.values);
        }
        return false;
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public String toString() {
        StringBuilder o = a.o("TransitionValues@");
        o.append(Integer.toHexString(hashCode()));
        o.append(":\n");
        StringBuilder r = a.r(o.toString(), "    view = ");
        r.append(this.view);
        r.append(g.a);
        String f2 = a.f(r.toString(), "    values:");
        for (String str : this.values.keySet()) {
            f2 = f2 + "    " + str + ": " + this.values.get(str) + g.a;
        }
        return f2;
    }
}
