.class public Lcom/comeback/data/ui/jav/ActorDetailActivity$a;
.super Ljava/lang/Object;
.source "ActorDetailActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/ActorDetailActivity;->p(I)V
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

.field public final synthetic b:Lcom/comeback/data/ui/jav/ActorDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/ActorDetailActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    iput p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->a:I

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
    iget-object p1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/comeback/data/ui/jav/ActorDetailActivity;->r(Lcom/comeback/data/ui/jav/ActorDetailActivity;Z)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

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
    invoke-static {p1}, Lf/e/a/j/u/e/a;->b(Ljava/lang/String;)Lcom/comeback/data/ui/jav/bean/ActorDetail;

    move-result-object p1

    .line 10
    iget p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->a:I

    if-ne p2, v0, :cond_1

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    .line 12
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 13
    invoke-virtual {p2}, Lcom/comeback/data/base/BaseAbstractAdapter;->c()V

    .line 14
    iget-object p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/jav/ActorDetailActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/jav/ActorDetailActivity;->tvSecondName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->getSecondName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/jav/ActorDetailActivity;->tvCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->getCount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    .line 18
    iget-object p2, p2, Lcom/comeback/data/base/BaseRefreshActivity;->c:Lcom/comeback/data/base/BaseAbstractAdapter;

    .line 19
    invoke-virtual {p1}, Lcom/comeback/data/ui/jav/bean/ActorDetail;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
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
    iget-object p1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/comeback/data/ui/jav/ActorDetailActivity;->s(Lcom/comeback/data/ui/jav/ActorDetailActivity;Z)V

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/jav/ActorDetailActivity$a;->b:Lcom/comeback/data/ui/jav/ActorDetailActivity;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/base/BaseRefreshActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->m(Z)Lf/j/a/a/f/i;

    return-void
.end method
