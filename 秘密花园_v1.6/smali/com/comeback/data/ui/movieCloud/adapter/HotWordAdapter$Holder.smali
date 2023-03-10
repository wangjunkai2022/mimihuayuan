.class public Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;
.super Lcom/comeback/data/base/BaseViewHolder;
.source "HotWordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseViewHolder<",
        "Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter;

.field public b:Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;

.field public tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p2, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;->a:Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;

    invoke-virtual {p0, p1}, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;->b(Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;)V

    return-void
.end method

.method public b(Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;->b:Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/adapter/HotWordAdapter$Holder;->tvName:Landroid/widget/TextView;

    const-string v1, "EgZDREtTHEA="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/comeback/data/ui/movieCloud/bean/XXList$DataBean$VodrowsBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
