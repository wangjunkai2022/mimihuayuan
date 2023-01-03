.class public Lcom/comeback/data/ui/maomi/CartoonActivity$c;
.super Lm/j;
.source "CartoonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/maomi/CartoonActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/maomi/bean/Cartoon;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/CartoonActivity;Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/maomi/CartoonActivity$c;->e:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

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
    check-cast p1, Lcom/comeback/data/ui/maomi/bean/Cartoon;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/CartoonActivity$c;->e:Lcom/comeback/data/ui/maomi/adapter/DiscoverAdapter;

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/Cartoon;->getData()Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/maomi/bean/Cartoon$DataBeanX;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BaseAbstractAdapter;->a(Ljava/util/List;)V

    return-void
.end method
