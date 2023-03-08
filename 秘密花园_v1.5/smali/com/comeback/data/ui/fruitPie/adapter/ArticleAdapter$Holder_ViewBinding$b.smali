.class public Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder_ViewBinding$b;
.super Ld/c/b;
.source "ArticleAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder_ViewBinding$b;->c:Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder_ViewBinding$b;->c:Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getColumnist()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/comeback/data/ui/fruitPie/adapter/ArticleAdapter$Holder;->b:Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fruitPie/bean/VideoList$DataEntity$ListEntity;->getColumnist()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method
