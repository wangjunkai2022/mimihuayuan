.class public Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;
.super Ljava/lang/Object;
.source "PlayUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BasicInfoEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;
    }
.end annotation


# instance fields
.field public Category:Ljava/lang/String;

.field public ClassId:I

.field public ClassName:Ljava/lang/String;

.field public ClassPath:Ljava/lang/String;

.field public CoverUrl:Ljava/lang/String;

.field public CreateTime:Ljava/lang/String;

.field public Description:Ljava/lang/String;

.field public ExpireTime:Ljava/lang/String;

.field public IntranetMediaUrl:Ljava/lang/String;

.field public MediaUrl:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public SourceInfo:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;

.field public Status:Ljava/lang/String;

.field public StorageClass:Ljava/lang/String;

.field public StorageRegion:Ljava/lang/String;

.field public TagSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field public Type:Ljava/lang/String;

.field public UpdateTime:Ljava/lang/String;

.field public Vid:Ljava/lang/String;

.field public final synthetic this$1:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->this$1:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Category:Ljava/lang/String;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ClassId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ClassPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->CoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->CreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ExpireTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIntranetMediaUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->IntranetMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->MediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceInfo()Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->SourceInfo:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->StorageClass:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->StorageRegion:Ljava/lang/String;

    return-object v0
.end method

.method public getTagSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->TagSet:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->UpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Vid:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Category:Ljava/lang/String;

    return-void
.end method

.method public setClassId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ClassId:I

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ClassName:Ljava/lang/String;

    return-void
.end method

.method public setClassPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ClassPath:Ljava/lang/String;

    return-void
.end method

.method public setCoverUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->CoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->CreateTime:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Description:Ljava/lang/String;

    return-void
.end method

.method public setExpireTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->ExpireTime:Ljava/lang/String;

    return-void
.end method

.method public setIntranetMediaUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->IntranetMediaUrl:Ljava/lang/String;

    return-void
.end method

.method public setMediaUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->MediaUrl:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Name:Ljava/lang/String;

    return-void
.end method

.method public setSourceInfo(Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->SourceInfo:Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity$SourceInfoEntity;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Status:Ljava/lang/String;

    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->StorageClass:Ljava/lang/String;

    return-void
.end method

.method public setStorageRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->StorageRegion:Ljava/lang/String;

    return-void
.end method

.method public setTagSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->TagSet:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Type:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setVid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/dn/bean/PlayUrl$MediaInfoSetEntity$BasicInfoEntity;->Vid:Ljava/lang/String;

    return-void
.end method
