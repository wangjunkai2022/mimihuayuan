.class public Lf/e/a/j/p/a;
.super Ljava/lang/Object;
.source "HGDDBrowseActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/p/a;->a:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/e/a/j/p/a;->a:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    iget-object p1, p1, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flShow:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
