.class public Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter$a;
.super Ljava/lang/Object;
.source "VMovieItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;

.field public final synthetic b:Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter$a;->b:Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter$a;->a:Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter$a;->b:Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/adapter/VMovieItemAdapter$a;->a:Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/senlin/bean/SenlinList$ListEntity;->getVod_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->s(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
