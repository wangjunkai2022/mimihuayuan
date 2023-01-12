.class public Lf/e/a/j/b0/f;
.super Lm/j;
.source "LutubeLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/lutube/bean/HostInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/b0/f;->e:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;

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
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/lutube/bean/HostInfo;

    .line 2
    iget-object v0, p0, Lf/e/a/j/b0/f;->e:Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;

    .line 3
    iget-boolean v1, v0, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->c:Z

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0, p1}, Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;->l(Lcom/comeback/data/ui/lutube/LutubeLaunchActivity;Lcom/comeback/data/ui/lutube/bean/HostInfo;)V

    :cond_0
    return-void
.end method
