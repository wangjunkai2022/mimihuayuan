.class public Lcom/comeback/data/ui/xiami/VideoPlayActivity$a;
.super Lm/j;
.source "VideoPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/VideoPlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/xiami/bean/VideoDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/xiami/VideoPlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/VideoPlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/xiami/VideoPlayActivity;

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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xiami/bean/VideoDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/VideoPlayActivity$a;->e:Lcom/comeback/data/ui/xiami/VideoPlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/VideoDetail;->getData()Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/VideoDetail$DataBean;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/xiami/VideoPlayActivity;->n(Lcom/comeback/data/ui/xiami/VideoPlayActivity;Ljava/lang/String;)V

    return-void
.end method
