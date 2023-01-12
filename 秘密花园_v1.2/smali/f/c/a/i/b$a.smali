.class public Lf/c/a/i/b$a;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/c/a/i/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/c/a/i/b;


# direct methods
.method public constructor <init>(Lf/c/a/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/c/a/i/b$a;->a:Lf/c/a/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/c/a/i/b$a;->a:Lf/c/a/i/b;

    .line 2
    iget-object v0, p1, Lf/c/a/i/b;->e:Lf/c/a/g/a;

    iget-object v0, v0, Lf/c/a/g/a;->s:Landroid/view/ViewGroup;

    new-instance v1, Lf/c/a/i/c;

    invoke-direct {v1, p1}, Lf/c/a/i/c;-><init>(Lf/c/a/i/b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
