package androidx.constraintlayout.solver.widgets;

import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ResolutionNode {
    public static final int REMOVED = 2;
    public static final int RESOLVED = 1;
    public static final int UNRESOLVED = 0;
    public HashSet<ResolutionNode> dependents = new HashSet<>(2);
    public int state = 0;

    public void addDependent(ResolutionNode resolutionNode) {
        this.dependents.add(resolutionNode);
    }

    public void didResolve() {
        this.state = 1;
        Iterator<ResolutionNode> it = this.dependents.iterator();
        while (it.hasNext()) {
            it.next().resolve();
        }
    }

    public void invalidate() {
        this.state = 0;
        Iterator<ResolutionNode> it = this.dependents.iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
    }

    public void invalidateAnchors() {
        if (this instanceof ResolutionAnchor) {
            this.state = 0;
        }
        Iterator<ResolutionNode> it = this.dependents.iterator();
        while (it.hasNext()) {
            it.next().invalidateAnchors();
        }
    }

    public boolean isResolved() {
        return this.state == 1;
    }

    public void remove(ResolutionDimension resolutionDimension) {
    }

    public void reset() {
        this.state = 0;
        this.dependents.clear();
    }

    public void resolve() {
    }
}
