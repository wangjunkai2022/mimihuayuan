.class public Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter$a;
.super Ljava/lang/Object;
.source "MovieItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;

.field public final synthetic b:Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter$a;->b:Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter$a;->a:Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter$a;->b:Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/bale/adapter/MovieItemAdapter$a;->a:Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;

    invoke-virtual {v0}, Lcom/comeback/data/ui/bale/bean/BaleVideoInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/bale/PlayActivity;->o(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
