.class public Lcom/comeback/data/ui/slf/bean/HomeDataBean;
.super Lf/e/a/f/j;
.source "HomeDataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;
    }
.end annotation


# instance fields
.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/CategoriesBean;",
            ">;"
        }
    .end annotation
.end field

.field public defaultKeywords:Ljava/lang/String;

.field public newX:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;
    .annotation runtime Lf/i/b/b0/b;
        value = "new"
    .end annotation
.end field

.field public rank:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

.field public special:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/CategoriesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->defaultKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getNewX()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->newX:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    return-object v0
.end method

.method public getRank()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->rank:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    return-object v0
.end method

.method public getSpecial()Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->special:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/slf/bean/CategoriesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->categories:Ljava/util/List;

    return-void
.end method

.method public setDefaultKeywords(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->defaultKeywords:Ljava/lang/String;

    return-void
.end method

.method public setNewX(Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->newX:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    return-void
.end method

.method public setRank(Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->rank:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    return-void
.end method

.method public setSpecial(Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/slf/bean/HomeDataBean;->special:Lcom/comeback/data/ui/slf/bean/HomeDataBean$NewBean;

    return-void
.end method
