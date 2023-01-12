.class public Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter$a;
.super Ljava/lang/Object;
.source "ComicItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

.field public final synthetic b:Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter$a;->a:Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/adapter/ComicItemAdapter$a;->a:Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;

    invoke-static {p1, v0}, Lcom/comeback/data/ui/mimei/ComicReadActivity;->q(Landroid/content/Context;Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;)V

    return-void
.end method
