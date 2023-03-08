.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->G0:Z

    .line 2
    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->u(Z)Lf/j/a/a/f/i;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a$a;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g$a;->b:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$g;->e:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->y0:Lf/j/a/a/g/b;

    sget-object v1, Lf/j/a/a/g/b;->w:Lf/j/a/a/g/b;

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lf/j/a/a/g/b;->h:Lf/j/a/a/g/b;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->r(Lf/j/a/a/g/b;)V

    :cond_1
    return-void
.end method
