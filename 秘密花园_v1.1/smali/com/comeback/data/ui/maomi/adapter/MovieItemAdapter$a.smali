.class public Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter$a;
.super Ljava/lang/Object;
.source "MovieItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;

.field public final synthetic b:Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter$a;->b:Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter$a;->a:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter$a;->b:Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;

    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;->c:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean;->isComic()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0d7Ig//I"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter$a;->b:Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;

    .line 4
    iget-object p1, p1, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter;->a:Landroid/content/Context;

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/adapter/MovieItemAdapter$a;->a:Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/maomi/bean/HomeData$DataBean$VideosBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/maomi/MovieDetailActivity;->l(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
