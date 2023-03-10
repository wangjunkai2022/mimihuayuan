package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.NonNull;
import f.b.a.a.a;
/* loaded from: classes.dex */
public final class ActionOnlyNavDirections implements NavDirections {
    public final int mActionId;

    public ActionOnlyNavDirections(int i2) {
        this.mActionId = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ActionOnlyNavDirections.class == obj.getClass() && getActionId() == ((ActionOnlyNavDirections) obj).getActionId();
    }

    @Override // androidx.navigation.NavDirections
    public int getActionId() {
        return this.mActionId;
    }

    @Override // androidx.navigation.NavDirections
    @NonNull
    public Bundle getArguments() {
        return new Bundle();
    }

    public int hashCode() {
        return getActionId() + 31;
    }

    public String toString() {
        StringBuilder o = a.o("ActionOnlyNavDirections(actionId=");
        o.append(getActionId());
        o.append(")");
        return o.toString();
    }
}
