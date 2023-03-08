.class public Lf/i/a/a/k1/d$c;
.super Ljava/lang/Object;
.source "PlayerControlView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/i/a/a/k1/d;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/k1/d;


# direct methods
.method public constructor <init>(Lf/i/a/a/k1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/k1/d$c;->a:Lf/i/a/a/k1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lf/i/a/a/k1/d$c;->a:Lf/i/a/a/k1/d;

    invoke-virtual {p1}, Lf/i/a/a/k1/d;->g()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
