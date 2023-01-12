.class public Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;
.super Ljava/lang/Object;
.source "MMList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/MMList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/km2/bean/MMList;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/MMList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;->this$0:Lcom/comeback/data/ui/km2/bean/MMList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;->list:Ljava/util/List;

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

    check-cast v1, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;->list:Ljava/util/List;

    return-void
.end method
