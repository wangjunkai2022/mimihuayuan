.class public Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;
.super Ljava/lang/Object;
.source "ScreenVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/ScreenVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$FreetypesBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;,
        Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;
    }
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public areas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;",
            ">;"
        }
    .end annotation
.end field

.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;",
            ">;"
        }
    .end annotation
.end field

.field public definitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;",
            ">;"
        }
    .end annotation
.end field

.field public durations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;",
            ">;"
        }
    .end annotation
.end field

.field public freetypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$FreetypesBean;",
            ">;"
        }
    .end annotation
.end field

.field public langvoices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;",
            ">;"
        }
    .end annotation
.end field

.field public mosaics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;",
            ">;"
        }
    .end annotation
.end field

.field public now:I

.field public orders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;",
            ">;"
        }
    .end annotation
.end field

.field public sample_params:Ljava/lang/String;

.field public vodrows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field public years:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->areas:Ljava/util/List;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getDefinitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->definitions:Ljava/util/List;

    return-object v0
.end method

.method public getDurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->durations:Ljava/util/List;

    return-object v0
.end method

.method public getFreetypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$FreetypesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->freetypes:Ljava/util/List;

    return-object v0
.end method

.method public getLangvoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->langvoices:Ljava/util/List;

    return-object v0
.end method

.method public getMosaics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->mosaics:Ljava/util/List;

    return-object v0
.end method

.method public getNow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->now:I

    return v0
.end method

.method public getOrders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->orders:Ljava/util/List;

    return-object v0
.end method

.method public getSample_params()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->sample_params:Ljava/lang/String;

    return-object v0
.end method

.method public getVodrows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->vodrows:Ljava/util/List;

    return-object v0
.end method

.method public getYears()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->years:Ljava/util/List;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->action:Ljava/lang/String;

    return-void
.end method

.method public setAreas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$AreasBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->areas:Ljava/util/List;

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$CategoriesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->categories:Ljava/util/List;

    return-void
.end method

.method public setDefinitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DefinitionsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->definitions:Ljava/util/List;

    return-void
.end method

.method public setDurations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$DurationsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->durations:Ljava/util/List;

    return-void
.end method

.method public setFreetypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$FreetypesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->freetypes:Ljava/util/List;

    return-void
.end method

.method public setLangvoices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$LangvoicesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->langvoices:Ljava/util/List;

    return-void
.end method

.method public setMosaics(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$MosaicsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->mosaics:Ljava/util/List;

    return-void
.end method

.method public setNow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->now:I

    return-void
.end method

.method public setOrders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$OrdersBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->orders:Ljava/util/List;

    return-void
.end method

.method public setSample_params(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->sample_params:Ljava/lang/String;

    return-void
.end method

.method public setVodrows(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/VideoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->vodrows:Ljava/util/List;

    return-void
.end method

.method public setYears(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean$YearsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ScreenVideo$DataBean;->years:Ljava/util/List;

    return-void
.end method
