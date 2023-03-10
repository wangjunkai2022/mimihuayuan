.class public Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;
.super Ljava/lang/Object;
.source "VideoVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/cucumber/bean/Video;

.field public final synthetic b:Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;Lcom/comeback/data/ui/cucumber/bean/Video;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;->b:Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;->b:Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/adapter/VideoVAdapter$a;->a:Lcom/comeback/data/ui/cucumber/bean/Video;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/cucumber/MovieDetailActivity;->p(Landroid/content/Context;Lcom/comeback/data/ui/cucumber/bean/Video;)V

    return-void
.end method
