.class public Lf/e/a/j/o/a$a;
.super Ljava/lang/Object;
.source "HGMovieDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/e/a/j/o/a;->c(Li/f;Li/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/hg/bean/VideoList;

.field public final synthetic b:Lf/e/a/j/o/a;


# direct methods
.method public constructor <init>(Lf/e/a/j/o/a;Lcom/comeback/data/ui/hg/bean/VideoList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/o/a$a;->b:Lf/e/a/j/o/a;

    iput-object p2, p0, Lf/e/a/j/o/a$a;->a:Lcom/comeback/data/ui/hg/bean/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/e/a/j/o/a$a;->b:Lf/e/a/j/o/a;

    iget-object v0, v0, Lf/e/a/j/o/a;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    iget-object v1, v0, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/hg/VideoListAdapter;

    iget-object v1, p0, Lf/e/a/j/o/a$a;->b:Lf/e/a/j/o/a;

    iget-object v1, v1, Lf/e/a/j/o/a;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    invoke-direct {v0, v1}, Lcom/comeback/data/ui/hg/VideoListAdapter;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v1, p0, Lf/e/a/j/o/a$a;->b:Lf/e/a/j/o/a;

    iget-object v1, v1, Lf/e/a/j/o/a;->a:Lcom/comeback/data/ui/hg/HGMovieDetailActivity;

    iget-object v1, v1, Lcom/comeback/data/ui/hg/HGMovieDetailActivity;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object v1, p0, Lf/e/a/j/o/a$a;->a:Lcom/comeback/data/ui/hg/bean/VideoList;

    invoke-virtual {v1}, Lcom/comeback/data/ui/hg/bean/VideoList;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
