.class public Landroidx/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewApi21;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewImpl;

    move-result-object p0

    return-object p0
.end method

.method public static removeGhost(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/transition/GhostViewApi21;->removeGhost(Landroid/view/View;)V

    return-void
.end method
