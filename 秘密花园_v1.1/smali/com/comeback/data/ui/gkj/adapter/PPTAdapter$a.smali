.class public Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$a;
.super Ljava/lang/Object;
.source "PPTAdapter.java"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;

    .line 2
    iget-object v1, v0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/gkj/adapter/PPTAdapter;->c:Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;

    .line 4
    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean;->getM_banner_data()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/gkj/bean/ViewModel$DataBean$MBannerDataBean;

    invoke-static {}, Lcom/comeback/data/ui/gkj/ComicDetailActivity;->p()V

    return-void
.end method
