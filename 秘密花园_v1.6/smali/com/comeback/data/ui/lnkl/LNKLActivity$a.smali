.class public Lcom/comeback/data/ui/lnkl/LNKLActivity$a;
.super Ljava/lang/Object;
.source "LNKLActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/lnkl/LNKLActivity;->p(I)V
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

.field public final synthetic b:Lcom/comeback/data/ui/lnkl/LNKLActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lnkl/LNKLActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    iput p2, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->a:I

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
    iget-object p1, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/lnkl/LNKLActivity;->r(Lcom/comeback/data/ui/lnkl/LNKLActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 4
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    .line 5
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 6
    iget p1, p1, Li/h0;->e:I

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    .line 7
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->Z0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    iget p2, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->a:I

    if-ne p2, v0, :cond_0

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    .line 11
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 12
    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 13
    :cond_0
    iget-object p2, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    .line 14
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 15
    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "0ffTgubd3LnTjonanc7Sg4PH"

    .line 17
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
    iget-object p1, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/lnkl/LNKLActivity;->s(Lcom/comeback/data/ui/lnkl/LNKLActivity;)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/lnkl/LNKLActivity$a;->b:Lcom/comeback/data/ui/lnkl/LNKLActivity;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->j(Z)Lf/j/a/a/f/i;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
