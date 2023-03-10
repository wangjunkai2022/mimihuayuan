.class public Lcom/comeback/data/ui/commom/PPTAdapter$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PPTAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/commom/PPTAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/youth/banner/Banner;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/commom/PPTAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090048

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/youth/banner/Banner;

    iput-object p1, p0, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    .line 3
    sget-object p2, Lcom/youth/banner/Transformer;->Accordion:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setBannerAnimation(Ljava/lang/Class;)Lcom/youth/banner/Banner;

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setBannerStyle(I)Lcom/youth/banner/Banner;

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/commom/PPTAdapter$d;->a:Lcom/youth/banner/Banner;

    const/16 p2, 0xfa0

    invoke-virtual {p1, p2}, Lcom/youth/banner/Banner;->setDelayTime(I)Lcom/youth/banner/Banner;

    return-void
.end method
