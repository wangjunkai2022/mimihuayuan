.class public Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$a;
.super Ljava/lang/Object;
.source "ComicVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

.field public final synthetic b:Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;Lcom/comeback/data/ui/slf/bean/SLFItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$a;->b:Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$a;->a:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$a;->b:Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;

    .line 2
    iget-boolean v0, p1, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter;->a:Landroid/content/Context;

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/slf/adapter/ComicVAdapter$a;->a:Lcom/comeback/data/ui/slf/bean/SLFItemBean;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/slf/ComicDetailActivity;->n(Landroid/content/Context;Lcom/comeback/data/ui/slf/bean/SLFItemBean;)V

    :goto_0
    return-void
.end method
