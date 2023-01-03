.class public Lcom/comeback/data/ui/ba/fragment/RecommendFragment$a;
.super Lm/j;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/ba/bean/BannerBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment$a;->e:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/ba/bean/BannerBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment$a;->e:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    .line 3
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    sget-object v2, Lcom/youth/banner/Transformer;->Accordion:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setBannerAnimation(Ljava/lang/Class;)Lcom/youth/banner/Banner;

    .line 4
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setBannerStyle(I)Lcom/youth/banner/Banner;

    .line 5
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setDelayTime(I)Lcom/youth/banner/Banner;

    .line 6
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    new-instance v2, Lf/e/a/k/e;

    invoke-direct {v2}, Lf/e/a/k/e;-><init>()V

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 7
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {p1}, Lcom/comeback/data/ui/ba/bean/BannerBean;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 8
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 9
    iget-object v1, v0, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->banner:Lcom/youth/banner/Banner;

    new-instance v2, Lf/e/a/j/c/f/a;

    invoke-direct {v2, v0, p1}, Lf/e/a/j/c/f/a;-><init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;Lcom/comeback/data/ui/ba/bean/BannerBean;)V

    invoke-virtual {v1, v2}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    return-void
.end method
