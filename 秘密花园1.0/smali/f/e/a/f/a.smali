.class public final synthetic Lf/e/a/f/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/youth/banner/listener/OnBannerListener;


# instance fields
.field public final synthetic a:Lcom/comeback/data/base/BannerAdapter;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/base/BannerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/f/a;->a:Lcom/comeback/data/base/BannerAdapter;

    iput p2, p0, Lf/e/a/f/a;->b:I

    return-void
.end method


# virtual methods
.method public final OnBannerClick(I)V
    .locals 2

    iget-object v0, p0, Lf/e/a/f/a;->a:Lcom/comeback/data/base/BannerAdapter;

    iget v1, p0, Lf/e/a/f/a;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/base/BannerAdapter;->d(II)V

    return-void
.end method
