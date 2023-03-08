.class public Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity$a;
.super Lm/j;
.source "IsiyuLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/isiyu/bean/UserInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/isiyu/IsiyuLaunchActivity;)V
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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/isiyu/bean/UserInfo;

    return-void
.end method
