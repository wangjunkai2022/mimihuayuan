.class public Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ComicDetailAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;->d:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$a;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/ComicDetail$DataEntity$ChaptersEntity;->getId()I

    move-result p1

    check-cast v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->b:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    iget-object v2, v0, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->e:Lcom/comeback/data/ui/gkj/adapter/ComicDetailAdapter;

    .line 6
    iget-object v2, v2, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 7
    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p1}, Lcom/comeback/data/ui/gkj/ComicReadActivity;->p(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;Ljava/util/ArrayList;I)V

    :cond_0
    return-void
.end method
