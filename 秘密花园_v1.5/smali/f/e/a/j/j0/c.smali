.class public Lf/e/a/j/j0/c;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "VideoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/senlin/bean/SenlinDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/senlin/VideoDetailActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/VideoDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/j0/c;->f:Lcom/comeback/data/ui/senlin/VideoDetailActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/senlin/bean/SenlinDetail;

    .line 2
    iget-object v0, p0, Lf/e/a/j/j0/c;->f:Lcom/comeback/data/ui/senlin/VideoDetailActivity;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/senlin/VideoDetailActivity;->r(Lcom/comeback/data/ui/senlin/VideoDetailActivity;Lcom/comeback/data/ui/senlin/bean/SenlinDetail;)V

    return-void
.end method
