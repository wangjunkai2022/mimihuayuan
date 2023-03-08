.class public Lf/e/a/j/x/f;
.super Lm/j;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/km/bean/KMInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km/MainActivity;)V
    .locals 0

    .line 1
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
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/km/bean/KMInfo;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/KMInfo;->getData()Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/km/bean/KMInfo$DataBean;->getTargetUrl()Ljava/lang/String;

    return-void
.end method
