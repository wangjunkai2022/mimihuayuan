.class public Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;
.super Ljava/lang/Object;
.source "AMJPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZuBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean$JiBean;
    }
.end annotation


# instance fields
.field public count:I

.field public id:I

.field public ji:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean$JiBean;",
            ">;"
        }
    .end annotation
.end field

.field public ly:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->id:I

    return v0
.end method

.method public getJi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean$JiBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->ji:Ljava/util/List;

    return-object v0
.end method

.method public getLy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->ly:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->count:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->id:I

    return-void
.end method

.method public setJi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean$JiBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->ji:Ljava/util/List;

    return-void
.end method

.method public setLy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->ly:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/movieCloud/bean/AMJPlay$DataBeanX$ZuBean;->name:Ljava/lang/String;

    return-void
.end method
