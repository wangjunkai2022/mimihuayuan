.class public Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;
.super Ljava/lang/Object;
.source "AdPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/widget/viewpager/AdPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpikePagerItemViewHolder"
.end annotation


# instance fields
.field public a:Lcom/comeback/data/widget/viewpager/AdPagerAdapter;

.field public b:Lf/e/a/g/a;

.field public mIvImg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/comeback/data/widget/viewpager/AdPagerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->b(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    iput-object p2, p0, Lcom/comeback/data/widget/viewpager/AdPagerAdapter$SpikePagerItemViewHolder;->a:Lcom/comeback/data/widget/viewpager/AdPagerAdapter;

    return-void
.end method
