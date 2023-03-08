.class public Lcom/comeback/data/ui/test/TiktopActivity$c;
.super Lcom/comeback/data/base/BaseRefreshActivity$a;
.source "TiktopActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/test/TiktopActivity;->p(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/comeback/data/base/BaseRefreshActivity$a<",
        "Lcom/comeback/data/ui/test/bean/TiktopBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/comeback/data/ui/test/TiktopActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/test/TiktopActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/TiktopActivity$c;->f:Lcom/comeback/data/ui/test/TiktopActivity;

    invoke-direct {p0, p1}, Lcom/comeback/data/base/BaseRefreshActivity$a;-><init>(Lcom/comeback/data/base/BaseRefreshActivity;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/test/bean/TiktopBean;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/test/TiktopActivity$c;->f:Lcom/comeback/data/ui/test/TiktopActivity;

    invoke-static {v0}, Lcom/comeback/data/ui/test/TiktopActivity;->r(Lcom/comeback/data/ui/test/TiktopActivity;)Lcom/comeback/data/base/BaseAbstractAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/comeback/data/ui/test/bean/TiktopBean;->getData()Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/test/bean/TiktopBean$DataBean;->getVideos()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
