.class public Lf/e/a/k/y$b;
.super Ljava/lang/Object;
.source "VideoUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/k/y;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/e/a/k/y;


# direct methods
.method public constructor <init>(Lf/e/a/k/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/k/y$b;->a:Lf/e/a/k/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/e/a/k/y$b;->a:Lf/e/a/k/y;

    iget-object v0, p1, Lf/e/a/k/y;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lf/e/a/k/y$b;->a:Lf/e/a/k/y;

    iget-object v1, v1, Lf/e/a/k/y;->a:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1, v0, v1}, Lf/e/a/k/y;->a(Landroid/view/Window;Landroid/app/Activity;)V

    return-void
.end method
