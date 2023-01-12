.class public Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;
.super Ljava/lang/Object;
.source "ShortOriginal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/maomi/bean/ShortOriginal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field public total_page:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;

    .line 4
    invoke-static {v1}, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;->access$000(Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bg=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;->data:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_page()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;->total_page:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;->data:Ljava/util/List;

    return-void
.end method

.method public setTotal_page(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/maomi/bean/ShortOriginal$DataBeanX;->total_page:I

    return-void
.end method
