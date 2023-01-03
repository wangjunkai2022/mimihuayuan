.class public Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter$a;
.super Ljava/lang/Object;
.source "NComic2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

.field public final synthetic b:Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter$a;->b:Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;

    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter$a;->a:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter$a;->b:Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/NComic2Adapter$a;->a:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->o(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity$ArticleVOSEntity;)V

    return-void
.end method
