.class public Lcom/comeback/data/ui/dn/bean/PlayUrl;
.super Lf/e/a/f/j;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;
    }
.end annotation


# instance fields
.field public MediaInfoSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;",
            ">;"
        }
    .end annotation
.end field

.field public NotExistFileIdSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public RequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaInfoSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl;->MediaInfoSet:Ljava/util/List;

    return-object v0
.end method

.method public getNotExistFileIdSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl;->NotExistFileIdSet:Ljava/util/List;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl;->RequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaInfoSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl;->MediaInfoSet:Ljava/util/List;

    return-void
.end method

.method public setNotExistFileIdSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl;->NotExistFileIdSet:Ljava/util/List;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl;->RequestId:Ljava/lang/String;

    return-void
.end method
