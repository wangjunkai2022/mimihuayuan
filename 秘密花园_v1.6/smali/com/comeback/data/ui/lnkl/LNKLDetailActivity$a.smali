.class public Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;
.super Ljava/lang/Object;
.source "LNKLDetailActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;->c(Landroid/content/Intent;)V
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
.field public final synthetic a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 3
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

    if-ge p1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->Y0(Ljava/lang/String;)Lcom/comeback/data/ui/lnkl/bean/VideoInfo;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->getTorrentUrl()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p2, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;->d:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    iget-object p2, p2, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;->tvLink:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0MXugcbj0KDNgLrCl9b5"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    .line 8
    iget-object v1, v1, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance p2, Lcom/comeback/data/base/PicAdapter;

    iget-object v0, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    invoke-direct {p2, v0}, Lcom/comeback/data/base/PicAdapter;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v0, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity$a;->a:Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/lnkl/LNKLDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    invoke-virtual {p1}, Lcom/comeback/data/ui/lnkl/bean/VideoInfo;->getImgs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "0ffTgubd3LnTjonanc7Sg4PH"

    .line 15
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

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

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method
