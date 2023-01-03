package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class Analyzer {
    public static void determineGroups(ConstraintWidgetContainer constraintWidgetContainer) {
        if ((constraintWidgetContainer.getOptimizationLevel() & 32) != 32) {
            singleGroup(constraintWidgetContainer);
            return;
        }
        constraintWidgetContainer.mSkipSolver = true;
        constraintWidgetContainer.mGroupsWrapOptimized = false;
        constraintWidgetContainer.mHorizontalWrapOptimized = false;
        constraintWidgetContainer.mVerticalWrapOptimized = false;
        ArrayList<ConstraintWidget> arrayList = constraintWidgetContainer.mChildren;
        List<ConstraintWidgetGroup> list = constraintWidgetContainer.mWidgetGroups;
        boolean z = constraintWidgetContainer.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z2 = constraintWidgetContainer.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        boolean z3 = z || z2;
        list.clear();
        for (ConstraintWidget constraintWidget : arrayList) {
            constraintWidget.mBelongingGroup = null;
            constraintWidget.mGroupsToSolver = false;
            constraintWidget.resetResolutionNodes();
        }
        for (ConstraintWidget constraintWidget2 : arrayList) {
            if (constraintWidget2.mBelongingGroup == null && !determineGroups(constraintWidget2, list, z3)) {
                singleGroup(constraintWidgetContainer);
                constraintWidgetContainer.mSkipSolver = false;
                return;
            }
        }
        int i2 = 0;
        int i3 = 0;
        for (ConstraintWidgetGroup constraintWidgetGroup : list) {
            i2 = Math.max(i2, getMaxDimension(constraintWidgetGroup, 0));
            i3 = Math.max(i3, getMaxDimension(constraintWidgetGroup, 1));
        }
        if (z) {
            constraintWidgetContainer.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setWidth(i2);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mHorizontalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedWidth = i2;
        }
        if (z2) {
            constraintWidgetContainer.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidgetContainer.setHeight(i3);
            constraintWidgetContainer.mGroupsWrapOptimized = true;
            constraintWidgetContainer.mVerticalWrapOptimized = true;
            constraintWidgetContainer.mWrapFixedHeight = i3;
        }
        setPosition(list, 0, constraintWidgetContainer.getWidth());
        setPosition(list, 1, constraintWidgetContainer.getHeight());
    }

    public static int getMaxDimension(ConstraintWidgetGroup constraintWidgetGroup, int i2) {
        int i3 = i2 * 2;
        List<ConstraintWidget> startWidgets = constraintWidgetGroup.getStartWidgets(i2);
        int size = startWidgets.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            ConstraintWidget constraintWidget = startWidgets.get(i5);
            ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
            int i6 = i3 + 1;
            i4 = Math.max(i4, getMaxDimensionTraversal(constraintWidget, i2, constraintAnchorArr[i6].mTarget == null || !(constraintAnchorArr[i3].mTarget == null || constraintAnchorArr[i6].mTarget == null), 0));
        }
        constraintWidgetGroup.mGroupDimensions[i2] = i4;
        return i4;
    }

    public static int getMaxDimensionTraversal(ConstraintWidget constraintWidget, int i2, boolean z, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int width;
        int i9;
        int i10;
        int i11;
        int i12 = 0;
        if (!constraintWidget.mOptimizerMeasurable) {
            return 0;
        }
        boolean z2 = constraintWidget.mBaseline.mTarget != null && i2 == 1;
        if (z) {
            i7 = constraintWidget.getBaselineDistance();
            i6 = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
            i5 = i2 * 2;
            i4 = i5 + 1;
        } else {
            i7 = constraintWidget.getHeight() - constraintWidget.getBaselineDistance();
            i6 = constraintWidget.getBaselineDistance();
            i4 = i2 * 2;
            i5 = i4 + 1;
        }
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        if (constraintAnchorArr[i4].mTarget == null || constraintAnchorArr[i5].mTarget != null) {
            i8 = 1;
        } else {
            i8 = -1;
            i4 = i5;
            i5 = i4;
        }
        int i13 = z2 ? i3 - i7 : i3;
        int parentBiasOffset = getParentBiasOffset(constraintWidget, i2) + (constraintWidget.mListAnchors[i5].getMargin() * i8);
        int i14 = i13 + parentBiasOffset;
        int width2 = (i2 == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * i8;
        Iterator<ResolutionNode> it = constraintWidget.mListAnchors[i5].getResolutionNode().dependents.iterator();
        while (it.hasNext()) {
            i12 = Math.max(i12, getMaxDimensionTraversal(((ResolutionAnchor) it.next()).myAnchor.mOwner, i2, z, i14));
        }
        int i15 = 0;
        for (Iterator<ResolutionNode> it2 = constraintWidget.mListAnchors[i4].getResolutionNode().dependents.iterator(); it2.hasNext(); it2 = it2) {
            i15 = Math.max(i15, getMaxDimensionTraversal(((ResolutionAnchor) it2.next()).myAnchor.mOwner, i2, z, width2 + i14));
        }
        if (z2) {
            i12 -= i7;
            width = i15 + i6;
        } else {
            width = i15 + ((i2 == 0 ? constraintWidget.getWidth() : constraintWidget.getHeight()) * i8);
        }
        int i16 = 1;
        if (i2 == 1) {
            Iterator<ResolutionNode> it3 = constraintWidget.mBaseline.getResolutionNode().dependents.iterator();
            int i17 = 0;
            while (it3.hasNext()) {
                ResolutionAnchor resolutionAnchor = (ResolutionAnchor) it3.next();
                if (i8 == i16) {
                    i17 = Math.max(i17, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, i2, z, i7 + i14));
                    i11 = i4;
                } else {
                    i11 = i4;
                    i17 = Math.max(i17, getMaxDimensionTraversal(resolutionAnchor.myAnchor.mOwner, i2, z, (i6 * i8) + i14));
                }
                it3 = it3;
                i4 = i11;
                i16 = 1;
            }
            i9 = i4;
            i10 = (constraintWidget.mBaseline.getResolutionNode().dependents.size() <= 0 || z2) ? i17 : i8 == 1 ? i17 + i7 : i17 - i6;
        } else {
            i9 = i4;
            i10 = 0;
        }
        int max = Math.max(i12, Math.max(width, i10)) + parentBiasOffset;
        int i18 = width2 + i14;
        if (i8 == -1) {
            i18 = i14;
            i14 = i18;
        }
        if (z) {
            Optimizer.setOptimizedWidget(constraintWidget, i2, i14);
            constraintWidget.setFrame(i14, i18, i2);
        } else {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i2);
            constraintWidget.setRelativePositioning(i14, i2);
        }
        if (constraintWidget.getDimensionBehaviour(i2) == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mDimensionRatio != 0.0f) {
            constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i2);
        }
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget.mListAnchors;
        if (!(constraintAnchorArr2[i5].mTarget == null || constraintAnchorArr2[i9].mTarget == null)) {
            ConstraintWidget parent = constraintWidget.getParent();
            ConstraintAnchor[] constraintAnchorArr3 = constraintWidget.mListAnchors;
            if (constraintAnchorArr3[i5].mTarget.mOwner == parent && constraintAnchorArr3[i9].mTarget.mOwner == parent) {
                constraintWidget.mBelongingGroup.addWidgetsToSet(constraintWidget, i2);
            }
        }
        return max;
    }

    public static int getParentBiasOffset(ConstraintWidget constraintWidget, int i2) {
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor;
        int i3 = i2 * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i3];
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i3 + 1];
        ConstraintAnchor constraintAnchor4 = constraintAnchor2.mTarget;
        if (constraintAnchor4 == null || constraintAnchor4.mOwner != (constraintWidget2 = constraintWidget.mParent) || (constraintAnchor = constraintAnchor3.mTarget) == null || constraintAnchor.mOwner != constraintWidget2) {
            return 0;
        }
        return (int) (((float) (((constraintWidget2.getLength(i2) - constraintAnchor2.getMargin()) - constraintAnchor3.getMargin()) - constraintWidget.getLength(i2))) * (i2 == 0 ? constraintWidget.mHorizontalBiasPercent : constraintWidget.mVerticalBiasPercent));
    }

    public static void invalidate(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup) {
        constraintWidgetGroup.mSkipSolver = false;
        constraintWidgetContainer.mSkipSolver = false;
        constraintWidget.mOptimizerMeasurable = false;
    }

    public static int resolveDimensionRatio(ConstraintWidget constraintWidget) {
        float f2;
        float f3;
        if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            if (constraintWidget.mDimensionRatioSide == 0) {
                f3 = ((float) constraintWidget.getHeight()) * constraintWidget.mDimensionRatio;
            } else {
                f3 = ((float) constraintWidget.getHeight()) / constraintWidget.mDimensionRatio;
            }
            int i2 = (int) f3;
            constraintWidget.setWidth(i2);
            return i2;
        } else if (constraintWidget.getVerticalDimensionBehaviour() != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            return -1;
        } else {
            if (constraintWidget.mDimensionRatioSide == 1) {
                f2 = ((float) constraintWidget.getWidth()) * constraintWidget.mDimensionRatio;
            } else {
                f2 = ((float) constraintWidget.getWidth()) / constraintWidget.mDimensionRatio;
            }
            int i3 = (int) f2;
            constraintWidget.setHeight(i3);
            return i3;
        }
    }

    public static void setConnection(ConstraintAnchor constraintAnchor) {
        ResolutionAnchor resolutionNode = constraintAnchor.getResolutionNode();
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 != null && constraintAnchor2.mTarget != constraintAnchor) {
            constraintAnchor2.getResolutionNode().addDependent(resolutionNode);
        }
    }

    public static void setPosition(List<ConstraintWidgetGroup> list, int i2, int i3) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            for (ConstraintWidget constraintWidget : list.get(i4).getWidgetsToSet(i2)) {
                if (constraintWidget.mOptimizerMeasurable) {
                    updateSizeDependentWidgets(constraintWidget, i2, i3);
                }
            }
        }
    }

    public static void singleGroup(ConstraintWidgetContainer constraintWidgetContainer) {
        constraintWidgetContainer.mWidgetGroups.clear();
        constraintWidgetContainer.mWidgetGroups.add(0, new ConstraintWidgetGroup(constraintWidgetContainer.mChildren));
    }

    public static boolean traverse(ConstraintWidget constraintWidget, ConstraintWidgetGroup constraintWidgetGroup, List<ConstraintWidgetGroup> list, boolean z) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        ConstraintAnchor constraintAnchor3;
        ConstraintWidget constraintWidget2;
        ConstraintAnchor constraintAnchor4;
        ConstraintAnchor constraintAnchor5;
        ConstraintAnchor constraintAnchor6;
        ConstraintAnchor constraintAnchor7;
        ConstraintWidget constraintWidget3;
        ConstraintAnchor constraintAnchor8;
        if (constraintWidget == null) {
            return true;
        }
        constraintWidget.mOptimizerMeasured = false;
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.getParent();
        ConstraintWidgetGroup constraintWidgetGroup2 = constraintWidget.mBelongingGroup;
        if (constraintWidgetGroup2 == null) {
            constraintWidget.mOptimizerMeasurable = true;
            constraintWidgetGroup.mConstrainedGroup.add(constraintWidget);
            constraintWidget.mBelongingGroup = constraintWidgetGroup;
            if (constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null && constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null && constraintWidget.mBaseline.mTarget == null && constraintWidget.mCenter.mTarget == null) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                if (z) {
                    return false;
                }
            }
            if (!(constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null)) {
                constraintWidgetContainer.getVerticalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (z) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                    return false;
                } else if (!(constraintWidget.mTop.mTarget.mOwner == constraintWidget.getParent() && constraintWidget.mBottom.mTarget.mOwner == constraintWidget.getParent())) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                }
            }
            if (!(constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget == null)) {
                constraintWidgetContainer.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (z) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                    return false;
                } else if (!(constraintWidget.mLeft.mTarget.mOwner == constraintWidget.getParent() && constraintWidget.mRight.mTarget.mOwner == constraintWidget.getParent())) {
                    invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                }
            }
            if (((constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) ^ (constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT)) && constraintWidget.mDimensionRatio != 0.0f) {
                resolveDimensionRatio(constraintWidget);
            } else if (constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                if (z) {
                    return false;
                }
            }
            if (((constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null) || (((constraintAnchor5 = constraintWidget.mLeft.mTarget) != null && constraintAnchor5.mOwner == constraintWidget.mParent && constraintWidget.mRight.mTarget == null) || (((constraintAnchor6 = constraintWidget.mRight.mTarget) != null && constraintAnchor6.mOwner == constraintWidget.mParent && constraintWidget.mLeft.mTarget == null) || ((constraintAnchor7 = constraintWidget.mLeft.mTarget) != null && constraintAnchor7.mOwner == (constraintWidget3 = constraintWidget.mParent) && (constraintAnchor8 = constraintWidget.mRight.mTarget) != null && constraintAnchor8.mOwner == constraintWidget3)))) && constraintWidget.mCenter.mTarget == null && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Helper)) {
                constraintWidgetGroup.mStartHorizontalWidgets.add(constraintWidget);
            }
            if (((constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null) || (((constraintAnchor = constraintWidget.mTop.mTarget) != null && constraintAnchor.mOwner == constraintWidget.mParent && constraintWidget.mBottom.mTarget == null) || (((constraintAnchor2 = constraintWidget.mBottom.mTarget) != null && constraintAnchor2.mOwner == constraintWidget.mParent && constraintWidget.mTop.mTarget == null) || ((constraintAnchor3 = constraintWidget.mTop.mTarget) != null && constraintAnchor3.mOwner == (constraintWidget2 = constraintWidget.mParent) && (constraintAnchor4 = constraintWidget.mBottom.mTarget) != null && constraintAnchor4.mOwner == constraintWidget2)))) && constraintWidget.mCenter.mTarget == null && constraintWidget.mBaseline.mTarget == null && !(constraintWidget instanceof Guideline) && !(constraintWidget instanceof Helper)) {
                constraintWidgetGroup.mStartVerticalWidgets.add(constraintWidget);
            }
            if (constraintWidget instanceof Helper) {
                invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                if (z) {
                    return false;
                }
                Helper helper = (Helper) constraintWidget;
                for (int i2 = 0; i2 < helper.mWidgetsCount; i2++) {
                    if (!traverse(helper.mWidgets[i2], constraintWidgetGroup, list, z)) {
                        return false;
                    }
                }
            }
            int length = constraintWidget.mListAnchors.length;
            for (int i3 = 0; i3 < length; i3++) {
                ConstraintAnchor constraintAnchor9 = constraintWidget.mListAnchors[i3];
                ConstraintAnchor constraintAnchor10 = constraintAnchor9.mTarget;
                if (!(constraintAnchor10 == null || constraintAnchor10.mOwner == constraintWidget.getParent())) {
                    if (constraintAnchor9.mType == ConstraintAnchor.Type.CENTER) {
                        invalidate(constraintWidgetContainer, constraintWidget, constraintWidgetGroup);
                        if (z) {
                            return false;
                        }
                    } else {
                        setConnection(constraintAnchor9);
                    }
                    if (!traverse(constraintAnchor9.mTarget.mOwner, constraintWidgetGroup, list, z)) {
                        return false;
                    }
                }
            }
            return true;
        }
        if (constraintWidgetGroup2 != constraintWidgetGroup) {
            constraintWidgetGroup.mConstrainedGroup.addAll(constraintWidgetGroup2.mConstrainedGroup);
            constraintWidgetGroup.mStartHorizontalWidgets.addAll(constraintWidget.mBelongingGroup.mStartHorizontalWidgets);
            constraintWidgetGroup.mStartVerticalWidgets.addAll(constraintWidget.mBelongingGroup.mStartVerticalWidgets);
            if (!constraintWidget.mBelongingGroup.mSkipSolver) {
                constraintWidgetGroup.mSkipSolver = false;
            }
            list.remove(constraintWidget.mBelongingGroup);
            for (ConstraintWidget constraintWidget4 : constraintWidget.mBelongingGroup.mConstrainedGroup) {
                constraintWidget4.mBelongingGroup = constraintWidgetGroup;
            }
        }
        return true;
    }

    public static void updateSizeDependentWidgets(ConstraintWidget constraintWidget, int i2, int i3) {
        int i4 = i2 * 2;
        ConstraintAnchor[] constraintAnchorArr = constraintWidget.mListAnchors;
        ConstraintAnchor constraintAnchor = constraintAnchorArr[i4];
        ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i4 + 1];
        if ((constraintAnchor.mTarget == null || constraintAnchor2.mTarget == null) ? false : true) {
            Optimizer.setOptimizedWidget(constraintWidget, i2, constraintAnchor.getMargin() + getParentBiasOffset(constraintWidget, i2));
        } else if (constraintWidget.mDimensionRatio == 0.0f || constraintWidget.getDimensionBehaviour(i2) != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            int relativePositioning = i3 - constraintWidget.getRelativePositioning(i2);
            int length = relativePositioning - constraintWidget.getLength(i2);
            constraintWidget.setFrame(length, relativePositioning, i2);
            Optimizer.setOptimizedWidget(constraintWidget, i2, length);
        } else {
            int resolveDimensionRatio = resolveDimensionRatio(constraintWidget);
            int i5 = (int) constraintWidget.mListAnchors[i4].getResolutionNode().resolvedOffset;
            constraintAnchor2.getResolutionNode().resolvedTarget = constraintAnchor.getResolutionNode();
            constraintAnchor2.getResolutionNode().resolvedOffset = (float) resolveDimensionRatio;
            constraintAnchor2.getResolutionNode().state = 1;
            constraintWidget.setFrame(i5, i5 + resolveDimensionRatio, i2);
        }
    }

    public static boolean determineGroups(ConstraintWidget constraintWidget, List<ConstraintWidgetGroup> list, boolean z) {
        ConstraintWidgetGroup constraintWidgetGroup = new ConstraintWidgetGroup(new ArrayList(), true);
        list.add(constraintWidgetGroup);
        return traverse(constraintWidget, constraintWidgetGroup, list, z);
    }
}
