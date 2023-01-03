.class public Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2$a;
.super Ljava/lang/Object;
.source "ComicHAdapter2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

.field public final synthetic b:Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;Lcom/comeback/data/ui/slf/bean/SLFItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2$a;->b:Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;

    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2$a;->a:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2$a;->b:Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/ComicHAdapter2$a;->a:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/slf/bean/SLFItemBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/slf/VideoDetailActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
