package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MethodCallsLogger {
    public Map<String, Integer> mCalledMethods = new HashMap();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean approveCall(String str, int i2) {
        Integer num = this.mCalledMethods.get(str);
        boolean z = false;
        int intValue = num != null ? num.intValue() : 0;
        if ((intValue & i2) != 0) {
            z = true;
        }
        this.mCalledMethods.put(str, Integer.valueOf(i2 | intValue));
        return !z;
    }
}
