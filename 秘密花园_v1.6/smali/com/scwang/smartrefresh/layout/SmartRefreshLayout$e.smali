.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->q(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->b0:Lf/j/a/a/l/b;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, v0}, Lf/j/a/a/l/b;->d(Lf/j/a/a/f/i;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-nez v1, :cond_1

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->i(IZZ)Lf/j/a/a/f/i;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$e;->a:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->c0:Lf/j/a/a/l/c;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1, v0}, Lf/j/a/a/l/b;->d(Lf/j/a/a/f/i;)V

    :cond_2
    return-void
.end method
