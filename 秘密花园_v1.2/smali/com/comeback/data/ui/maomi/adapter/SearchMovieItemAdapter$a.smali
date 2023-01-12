.class public Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter$a;
.super Ljava/lang/Object;
.source "SearchMovieItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;

.field public final synthetic b:Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter$a;->b:Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter$a;->a:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter$a;->b:Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/SearchMovieItemAdapter$a;->a:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
