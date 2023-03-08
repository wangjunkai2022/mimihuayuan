.class public final synthetic Lf/e/a/j/c/f/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

.field public final synthetic b:Lcom/comeback/data/ui/ba/bean/BannerBean;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/ba/fragment/RecommendFragment;Lcom/comeback/data/ui/ba/bean/BannerBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/c/f/a;->a:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    iput-object p2, p0, Lf/e/a/j/c/f/a;->b:Lcom/comeback/data/ui/ba/bean/BannerBean;

    return-void
.end method


# virtual methods
.method public final OnBannerClick(I)V
    .locals 2

    iget-object v0, p0, Lf/e/a/j/c/f/a;->a:Lcom/comeback/data/ui/ba/fragment/RecommendFragment;

    iget-object v1, p0, Lf/e/a/j/c/f/a;->b:Lcom/comeback/data/ui/ba/bean/BannerBean;

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/ba/fragment/RecommendFragment;->h(Lcom/comeback/data/ui/ba/bean/BannerBean;I)V

    return-void
.end method
