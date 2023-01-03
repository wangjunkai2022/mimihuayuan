.class public Lf/e/a/j/c0/f;
.super Lm/j;
.source "CartoonWatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/maomi/bean/CartoonWatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/maomi/CartoonWatchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/CartoonWatchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/c0/f;->e:Lcom/comeback/data/ui/maomi/CartoonWatchActivity;

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

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/CartoonWatch;

    .line 2
    iget-object v0, p0, Lf/e/a/j/c0/f;->e:Lcom/comeback/data/ui/maomi/CartoonWatchActivity;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/maomi/CartoonWatchActivity;->c:Lcom/comeback/data/ui/maomi/adapter/CartoonWatchAdapter;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/CartoonWatch;->getData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
