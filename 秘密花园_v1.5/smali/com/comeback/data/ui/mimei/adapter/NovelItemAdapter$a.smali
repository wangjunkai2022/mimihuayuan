.class public Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter$a;
.super Ljava/lang/Object;
.source "NovelItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

.field public final synthetic b:Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter$a;->a:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter$a;->a:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    invoke-virtual {v0}, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/adapter/NovelItemAdapter$a;->a:Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;

    invoke-virtual {v1}, Lcom/comeback/data/ui/mimei/bean/MimeiNovelItem;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/mimei/NovelReadActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
