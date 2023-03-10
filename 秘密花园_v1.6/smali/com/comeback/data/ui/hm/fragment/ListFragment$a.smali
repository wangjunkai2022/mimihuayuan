.class public Lcom/comeback/data/ui/hm/fragment/ListFragment$a;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hm/fragment/ListFragment;->l(I)V
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

.field public final synthetic b:Lcom/comeback/data/ui/hm/fragment/ListFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hm/fragment/ListFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    iput p2, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 1
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
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 2
    iget p1, p1, Li/h0;->e:I

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    .line 3
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/j/r/f/a;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    iget p2, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->a:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 6
    iget-object p2, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    invoke-static {p2}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->m(Lcom/comeback/data/ui/hm/fragment/ListFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    invoke-static {p2}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->n(Lcom/comeback/data/ui/hm/fragment/ListFragment;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    .line 9
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    .line 10
    iget-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    .line 11
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->o(Lcom/comeback/data/ui/hm/fragment/ListFragment;Z)V

    .line 14
    iget-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    .line 15
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    const-string p1, "0ffTgubd3LnTjonanc7Sg4PH"

    .line 16
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/hm/fragment/ListFragment;->p(Lcom/comeback/data/ui/hm/fragment/ListFragment;Z)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/hm/fragment/ListFragment$a;->b:Lcom/comeback/data/ui/hm/fragment/ListFragment;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
