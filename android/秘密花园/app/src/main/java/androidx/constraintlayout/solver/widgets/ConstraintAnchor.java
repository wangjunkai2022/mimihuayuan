package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.Cache;
import androidx.constraintlayout.solver.SolverVariable;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public class ConstraintAnchor {
    public static final boolean ALLOW_BINARY = false;
    public static final int AUTO_CONSTRAINT_CREATOR = 2;
    public static final int SCOUT_CREATOR = 1;
    public static final int UNSET_GONE_MARGIN = -1;
    public static final int USER_CREATOR = 0;
    public final ConstraintWidget mOwner;
    public SolverVariable mSolverVariable;
    public ConstraintAnchor mTarget;
    public final Type mType;
    public ResolutionAnchor mResolutionAnchor = new ResolutionAnchor(this);
    public int mMargin = 0;
    public int mGoneMargin = -1;
    public Strength mStrength = Strength.NONE;
    public ConnectionType mConnectionType = ConnectionType.RELAXED;
    public int mConnectionCreator = 0;

    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintAnchor$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type = iArr;
            try {
                Type type = Type.CENTER;
                iArr[6] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type2 = Type.LEFT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type3 = Type.RIGHT;
                iArr3[3] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type4 = Type.TOP;
                iArr4[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type5 = Type.BOTTOM;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type6 = Type.BASELINE;
                iArr6[5] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type7 = Type.CENTER_X;
                iArr7[7] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type8 = Type.CENTER_Y;
                iArr8[8] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = $SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type;
                Type type9 = Type.NONE;
                iArr9[0] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum ConnectionType {
        RELAXED,
        STRICT
    }

    /* loaded from: classes.dex */
    public enum Strength {
        NONE,
        STRONG,
        WEAK
    }

    /* loaded from: classes.dex */
    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.mOwner = constraintWidget;
        this.mType = type;
    }

    private boolean isConnectionToMe(ConstraintWidget constraintWidget, HashSet<ConstraintWidget> hashSet) {
        if (hashSet.contains(constraintWidget)) {
            return false;
        }
        hashSet.add(constraintWidget);
        if (constraintWidget == getOwner()) {
            return true;
        }
        ArrayList<ConstraintAnchor> anchors = constraintWidget.getAnchors();
        int size = anchors.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintAnchor constraintAnchor = anchors.get(i2);
            if (constraintAnchor.isSimilarDimensionConnection(this) && constraintAnchor.isConnected() && isConnectionToMe(constraintAnchor.getTarget().getOwner(), hashSet)) {
                return true;
            }
        }
        return false;
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i2, Strength strength, int i3) {
        return connect(constraintAnchor, i2, -1, strength, i3, false);
    }

    public int getConnectionCreator() {
        return this.mConnectionCreator;
    }

    public ConnectionType getConnectionType() {
        return this.mConnectionType;
    }

    public int getMargin() {
        ConstraintAnchor constraintAnchor;
        if (this.mOwner.getVisibility() == 8) {
            return 0;
        }
        if (this.mGoneMargin <= -1 || (constraintAnchor = this.mTarget) == null || constraintAnchor.mOwner.getVisibility() != 8) {
            return this.mMargin;
        }
        return this.mGoneMargin;
    }

    public final ConstraintAnchor getOpposite() {
        switch (this.mType.ordinal()) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return this.mOwner.mRight;
            case 2:
                return this.mOwner.mBottom;
            case 3:
                return this.mOwner.mLeft;
            case 4:
                return this.mOwner.mTop;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public ConstraintWidget getOwner() {
        return this.mOwner;
    }

    public int getPriorityLevel() {
        switch (this.mType.ordinal()) {
            case 0:
            case 7:
            case 8:
                return 0;
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
                return 2;
            case 5:
                return 1;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public ResolutionAnchor getResolutionNode() {
        return this.mResolutionAnchor;
    }

    public int getSnapPriorityLevel() {
        switch (this.mType.ordinal()) {
            case 0:
                return 0;
            case 1:
            case 3:
                return 1;
            case 2:
            case 4:
                return 0;
            case 5:
                return 2;
            case 6:
                return 3;
            case 7:
                return 0;
            case 8:
                return 1;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public SolverVariable getSolverVariable() {
        return this.mSolverVariable;
    }

    public Strength getStrength() {
        return this.mStrength;
    }

    public ConstraintAnchor getTarget() {
        return this.mTarget;
    }

    public Type getType() {
        return this.mType;
    }

    public boolean isConnected() {
        return this.mTarget != null;
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget, ConstraintAnchor constraintAnchor) {
        return isConnectionAllowed(constraintWidget);
    }

    public boolean isSideAnchor() {
        switch (this.mType.ordinal()) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return false;
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSimilarDimensionConnection(ConstraintAnchor constraintAnchor) {
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type == type2) {
            return true;
        }
        switch (type2.ordinal()) {
            case 0:
                return false;
            case 1:
            case 3:
            case 7:
                if (type == Type.LEFT || type == Type.RIGHT || type == Type.CENTER_X) {
                    return true;
                }
                return false;
            case 2:
            case 4:
            case 5:
            case 8:
                if (type == Type.TOP || type == Type.BOTTOM || type == Type.CENTER_Y || type == Type.BASELINE) {
                    return true;
                }
                return false;
            case 6:
                if (type != Type.BASELINE) {
                    return true;
                }
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isSnapCompatibleWith(ConstraintAnchor constraintAnchor) {
        Type type = this.mType;
        if (type == Type.CENTER) {
            return false;
        }
        if (type == constraintAnchor.getType()) {
            return true;
        }
        switch (this.mType.ordinal()) {
            case 0:
            case 5:
            case 6:
                return false;
            case 1:
                int ordinal = constraintAnchor.getType().ordinal();
                if (ordinal == 3 || ordinal == 7) {
                    return true;
                }
                return false;
            case 2:
                int ordinal2 = constraintAnchor.getType().ordinal();
                if (ordinal2 == 4 || ordinal2 == 8) {
                    return true;
                }
                return false;
            case 3:
                int ordinal3 = constraintAnchor.getType().ordinal();
                if (ordinal3 == 1 || ordinal3 == 7) {
                    return true;
                }
                return false;
            case 4:
                int ordinal4 = constraintAnchor.getType().ordinal();
                if (ordinal4 == 2 || ordinal4 == 8) {
                    return true;
                }
                return false;
            case 7:
                int ordinal5 = constraintAnchor.getType().ordinal();
                if (ordinal5 == 1 || ordinal5 == 3) {
                    return true;
                }
                return false;
            case 8:
                int ordinal6 = constraintAnchor.getType().ordinal();
                if (ordinal6 == 2 || ordinal6 == 4) {
                    return true;
                }
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public boolean isValidConnection(ConstraintAnchor constraintAnchor) {
        boolean z = false;
        if (constraintAnchor == null) {
            return false;
        }
        Type type = constraintAnchor.getType();
        Type type2 = this.mType;
        if (type != type2) {
            switch (type2.ordinal()) {
                case 0:
                case 5:
                case 7:
                case 8:
                    return false;
                case 1:
                case 3:
                    boolean z2 = type == Type.LEFT || type == Type.RIGHT;
                    if (!(constraintAnchor.getOwner() instanceof Guideline)) {
                        return z2;
                    }
                    if (z2 || type == Type.CENTER_X) {
                        z = true;
                    }
                    return z;
                case 2:
                case 4:
                    boolean z3 = type == Type.TOP || type == Type.BOTTOM;
                    if (!(constraintAnchor.getOwner() instanceof Guideline)) {
                        return z3;
                    }
                    if (z3 || type == Type.CENTER_Y) {
                        z = true;
                    }
                    return z;
                case 6:
                    if (type == Type.BASELINE || type == Type.CENTER_X || type == Type.CENTER_Y) {
                        return false;
                    }
                    return true;
                default:
                    throw new AssertionError(this.mType.name());
            }
        } else if (type2 != Type.BASELINE || (constraintAnchor.getOwner().hasBaseline() && getOwner().hasBaseline())) {
            return true;
        } else {
            return false;
        }
    }

    public boolean isVerticalAnchor() {
        switch (this.mType.ordinal()) {
            case 0:
            case 2:
            case 4:
            case 5:
            case 8:
                return true;
            case 1:
            case 3:
            case 6:
            case 7:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public void reset() {
        this.mTarget = null;
        this.mMargin = 0;
        this.mGoneMargin = -1;
        this.mStrength = Strength.STRONG;
        this.mConnectionCreator = 0;
        this.mConnectionType = ConnectionType.RELAXED;
        this.mResolutionAnchor.reset();
    }

    public void resetSolverVariable(Cache cache) {
        SolverVariable solverVariable = this.mSolverVariable;
        if (solverVariable == null) {
            this.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED, (String) null);
        } else {
            solverVariable.reset();
        }
    }

    public void setConnectionCreator(int i2) {
        this.mConnectionCreator = i2;
    }

    public void setConnectionType(ConnectionType connectionType) {
        this.mConnectionType = connectionType;
    }

    public void setGoneMargin(int i2) {
        if (isConnected()) {
            this.mGoneMargin = i2;
        }
    }

    public void setMargin(int i2) {
        if (isConnected()) {
            this.mMargin = i2;
        }
    }

    public void setStrength(Strength strength) {
        if (isConnected()) {
            this.mStrength = strength;
        }
    }

    public String toString() {
        return this.mOwner.getDebugName() + ":" + this.mType.toString();
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i2, int i3, Strength strength, int i4, boolean z) {
        if (constraintAnchor == null) {
            this.mTarget = null;
            this.mMargin = 0;
            this.mGoneMargin = -1;
            this.mStrength = Strength.NONE;
            this.mConnectionCreator = 2;
            return true;
        } else if (!z && !isValidConnection(constraintAnchor)) {
            return false;
        } else {
            this.mTarget = constraintAnchor;
            if (i2 > 0) {
                this.mMargin = i2;
            } else {
                this.mMargin = 0;
            }
            this.mGoneMargin = i3;
            this.mStrength = strength;
            this.mConnectionCreator = i4;
            return true;
        }
    }

    public boolean isConnectionAllowed(ConstraintWidget constraintWidget) {
        if (isConnectionToMe(constraintWidget, new HashSet<>())) {
            return false;
        }
        ConstraintWidget parent = getOwner().getParent();
        if (parent == constraintWidget || constraintWidget.getParent() == parent) {
            return true;
        }
        return false;
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i2, int i3) {
        return connect(constraintAnchor, i2, -1, Strength.STRONG, i3, false);
    }

    public boolean connect(ConstraintAnchor constraintAnchor, int i2) {
        return connect(constraintAnchor, i2, -1, Strength.STRONG, 0, false);
    }
}
