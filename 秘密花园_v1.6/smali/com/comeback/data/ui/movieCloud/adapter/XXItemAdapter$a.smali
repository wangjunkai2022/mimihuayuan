.class public Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter$a;
.super Ljava/lang/Object;
.source "XXItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;

.field public final synthetic b:Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter$a;->b:Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter$a;->a:Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter$a;->b:Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/adapter/XXItemAdapter$a;->a:Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;->getVodid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/comeback/data/ui/movieCloud/PlayActivity;->p(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
