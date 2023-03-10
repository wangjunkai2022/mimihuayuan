.class public Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ComicDetailAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$Holder;->a:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;->d:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    check-cast v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->e:Lcom/comeback/data/ui/slf/adapter/ComicDetailAdapter;

    .line 6
    iget-object v1, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 7
    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/comeback/data/ui/slf/ComicReadActivity;->q(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    .line 8
    invoke-static {}, Lg/a/x;->P()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    const-class v1, Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    const-string v2, "XgY="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v3}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lf/e/a/k/g;->f(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lg/a/j0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lg/a/u;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {p1}, Lg/a/g0;->getRealm()Lg/a/x;

    move-result-object p1

    invoke-static {p1}, Lf/e/a/k/g;->d(Lg/a/x;)Lf/e/a/k/g;

    move-result-object p1

    iget-object v0, v0, Lcom/comeback/data/ui/slf/ComicDetailActivity;->b:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {p1, v0}, Lf/e/a/k/g;->a(Lg/a/g0;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 11
    throw p1
.end method
