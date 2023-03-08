.class public Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;
.super Ljava/lang/Object;
.source "VideoListFragment.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->l(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/fragment/VideoListFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    iput p2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ll/g0<",
            "Li/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->m(Lcom/comeback/data/ui/jav/fragment/VideoListFragment;Z)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    .line 4
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 5
    iget p1, p1, Li/h0;->e:I

    const/16 v1, 0x12c

    if-le p1, v1, :cond_0

    const-string p1, "BFJTRA4BS1wB"

    .line 6
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void

    .line 7
    :cond_0
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget p2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->a:I

    if-ne p2, v0, :cond_1

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    .line 11
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 12
    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 13
    :cond_1
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    .line 14
    iget-boolean p2, p2, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->j:Z

    if-eqz p2, :cond_2

    .line 15
    invoke-static {p1}, Lf/e/a/j/v/e/a;->d(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/VideoList;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    .line 17
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 18
    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/VideoList;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p1}, Lf/e/a/j/v/e/a;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 20
    iget-object p2, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    .line 21
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshFragment;->h:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 22
    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "aD08ARkBVkFJ"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->b()V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/comeback/data/ui/jav/fragment/VideoListFragment;->n(Lcom/comeback/data/ui/jav/fragment/VideoListFragment;Z)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/jav/fragment/VideoListFragment$a;->b:Lcom/comeback/data/ui/jav/fragment/VideoListFragment;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method
