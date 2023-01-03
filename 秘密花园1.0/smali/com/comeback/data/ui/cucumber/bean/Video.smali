.class public Lcom/comeback/data/ui/cucumber/bean/Video;
.super Lf/e/a/f/j;
.source "Video.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;,
        Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;,
        Lcom/comeback/data/ui/cucumber/bean/Video$MovSizeBean;,
        Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;,
        Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;,
        Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/comeback/data/ui/cucumber/bean/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actor:Ljava/lang/String;

.field public actorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;",
            ">;"
        }
    .end annotation
.end field

.field public address:Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

.field public allCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

.field public allJCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

.field public attenStatus:I

.field public browId:Ljava/lang/String;

.field public browToken:Ljava/lang/String;

.field public collectNumber:I

.field public commentCnt:I

.field public cover:Ljava/lang/String;

.field public director:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public downloadNumber:I

.field public encryKey:Ljava/lang/String;

.field public favorCnt:I

.field public gmtCreate:Ljava/lang/String;

.field public hasDown:Z

.field public hasFavor:Z

.field public id:I

.field public isMosaic:I

.field public loveCnt:I

.field public mins:Ljava/lang/String;

.field public movCls:I

.field public movDesc:Ljava/lang/String;

.field public movId:I

.field public movName:Ljava/lang/String;

.field public movPackageId:I

.field public movScore:Ljava/lang/String;

.field public movSize:Lcom/comeback/data/ui/cucumber/bean/Video$MovSizeBean;

.field public movSn:Ljava/lang/String;

.field public movSnOri:Ljava/lang/String;

.field public myInviteCode:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public oriUrl:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

.field public p2pSharpness:Ljava/lang/String;

.field public p2pToken:Ljava/lang/String;

.field public playCnt:I

.field public playCntStr:Ljava/lang/String;

.field public playNumber:I

.field public realVideo:Ljava/lang/String;

.field public relTagName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;",
            ">;"
        }
    .end annotation
.end field

.field public remainPlayCnt:I

.field public strPlayCnt:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;",
            ">;"
        }
    .end annotation
.end field

.field public uploadUserFans:I

.field public uploadUserIcon:Ljava/lang/String;

.field public uploadUserName:Ljava/lang/String;

.field public uploaderInviteCode:Ljava/lang/String;

.field public userId:J

.field public vipFlag:I

.field public ydaPlayCnt:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/Video$a;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/Video$a;-><init>()V

    sput-object v0, Lcom/comeback/data/ui/cucumber/bean/Video;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/e/a/f/j;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actor:Ljava/lang/String;

    .line 3
    const-class v0, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->address:Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    .line 4
    const-class v0, Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->oriUrl:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    .line 5
    const-class v0, Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    .line 6
    const-class v0, Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allJCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->attenStatus:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browToken:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->cover:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->director:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->domain:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->encryKey:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->gmtCreate:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasDown:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasFavor:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->id:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movId:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->isMosaic:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->loveCnt:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->mins:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movCls:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movDesc:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movScore:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSn:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSnOri:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pSharpness:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pToken:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCnt:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->remainPlayCnt:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->strPlayCnt:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCntStr:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserFans:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserIcon:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploaderInviteCode:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->userId:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->vipFlag:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->ydaPlayCnt:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playNumber:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->downloadNumber:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->collectNumber:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movPackageId:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->favorCnt:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->commentCnt:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->realVideo:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actorList:Ljava/util/List;

    .line 50
    sget-object v0, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->tags:Ljava/util/List;

    .line 51
    sget-object v0, Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->relTagName:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actor:Ljava/lang/String;

    return-object v0
.end method

.method public getActorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actorList:Ljava/util/List;

    return-object v0
.end method

.method public getAddress()Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->address:Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    return-object v0
.end method

.method public getAllCovers()Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    return-object v0
.end method

.method public getAllJCovers()Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allJCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

    return-object v0
.end method

.method public getAttenStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->attenStatus:I

    return v0
.end method

.method public getBrowId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->collectNumber:I

    return v0
.end method

.method public getCommentCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->commentCnt:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovScore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0urlRBdT"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getStrPlayCnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Fx5D"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->gmtCreate:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lf/b/a/a/a;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSnOri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirector()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->director:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->downloadNumber:I

    return v0
.end method

.method public getEncryKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->encryKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->favorCnt:I

    return v0
.end method

.method public getGmtCreate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->gmtCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movId:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->id:I

    :cond_0
    return v0
.end method

.method public getInviteCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->myInviteCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->myInviteCode:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploaderInviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMosaic()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->isMosaic:I

    return v0
.end method

.method public getLoveCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->loveCnt:I

    return v0
.end method

.method public getMins()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->mins:Ljava/lang/String;

    return-object v0
.end method

.method public getMovCls()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movCls:I

    return v0
.end method

.method public getMovDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getMovId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movId:I

    return v0
.end method

.method public getMovName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movName:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getMovPackageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movPackageId:I

    return v0
.end method

.method public getMovScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movScore:Ljava/lang/String;

    return-object v0
.end method

.method public getMovSize()Lcom/comeback/data/ui/cucumber/bean/Video$MovSizeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSize:Lcom/comeback/data/ui/cucumber/bean/Video$MovSizeBean;

    return-object v0
.end method

.method public getMovSn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSn:Ljava/lang/String;

    return-object v0
.end method

.method public getMovSnOri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSnOri:Ljava/lang/String;

    return-object v0
.end method

.method public getMyInviteCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->myInviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriUrl()Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->oriUrl:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    return-object v0
.end method

.method public getP2pSharpness()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pSharpness:Ljava/lang/String;

    return-object v0
.end method

.method public getP2pToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCnt:I

    return v0
.end method

.method public getPlayCntStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCntStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayName()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getAddress()Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$000(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BlJbVDs="

    .line 4
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$100(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AFBTNA=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$200(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "A1pTNA=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$300(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "BFRTNA=="

    .line 10
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$400(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "BVZTNA=="

    .line 12
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getPlayNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playNumber:I

    return v0
.end method

.method public getPlayUrl()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getAddress()Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$000(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->get_$1080P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$100(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->get_$720P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$200(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->get_$480P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$300(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->get_$360P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->access$400(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;->get_$240P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getRealVideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->realVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getRelTagName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->relTagName:Ljava/util/List;

    return-object v0
.end method

.method public getRemainPlayCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->remainPlayCnt:I

    return v0
.end method

.method public getStrPlayCnt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCntStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->strPlayCnt:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCntStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getUploadUserFans()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserFans:I

    return v0
.end method

.method public getUploadUserIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadUserName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderInviteCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploaderInviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->userId:J

    return-wide v0
.end method

.method public getVideoCover()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lf/e/a/k/b;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVipFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->vipFlag:I

    return v0
.end method

.method public getYdaPlayCnt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->ydaPlayCnt:I

    return v0
.end method

.method public isHasDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasDown:Z

    return v0
.end method

.method public isHasFavor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasFavor:Z

    return v0
.end method

.method public newRealm()Lcom/comeback/data/ui/cucumber/bean/RealmVideo;
    .locals 2

    .line 1
    new-instance v0, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;

    invoke-direct {v0}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->setId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->setCover(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMovName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->setName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getMins()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->setMins(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/comeback/data/ui/cucumber/bean/Video;->getStrPlayCnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/cucumber/bean/RealmVideo;->setStrPlayCnt(Ljava/lang/String;)V

    return-object v0
.end method

.method public setActor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actor:Ljava/lang/String;

    return-void
.end method

.method public setActorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$ActorListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actorList:Ljava/util/List;

    return-void
.end method

.method public setAddress(Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->address:Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    return-void
.end method

.method public setAllCovers(Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    return-void
.end method

.method public setAllJCovers(Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allJCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

    return-void
.end method

.method public setAttenStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->attenStatus:I

    return-void
.end method

.method public setBrowId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browId:Ljava/lang/String;

    return-void
.end method

.method public setBrowToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browToken:Ljava/lang/String;

    return-void
.end method

.method public setCollectNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->collectNumber:I

    return-void
.end method

.method public setCommentCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->commentCnt:I

    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->cover:Ljava/lang/String;

    return-void
.end method

.method public setDirector(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->director:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->domain:Ljava/lang/String;

    return-void
.end method

.method public setDownloadNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->downloadNumber:I

    return-void
.end method

.method public setEncryKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->encryKey:Ljava/lang/String;

    return-void
.end method

.method public setFavorCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->favorCnt:I

    return-void
.end method

.method public setGmtCreate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->gmtCreate:Ljava/lang/String;

    return-void
.end method

.method public setHasDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasDown:Z

    return-void
.end method

.method public setHasFavor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasFavor:Z

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->id:I

    return-void
.end method

.method public setIsMosaic(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->isMosaic:I

    return-void
.end method

.method public setLoveCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->loveCnt:I

    return-void
.end method

.method public setMins(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->mins:Ljava/lang/String;

    return-void
.end method

.method public setMovCls(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movCls:I

    return-void
.end method

.method public setMovDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movDesc:Ljava/lang/String;

    return-void
.end method

.method public setMovId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movId:I

    return-void
.end method

.method public setMovName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movName:Ljava/lang/String;

    return-void
.end method

.method public setMovPackageId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movPackageId:I

    return-void
.end method

.method public setMovScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movScore:Ljava/lang/String;

    return-void
.end method

.method public setMovSize(Lcom/comeback/data/ui/cucumber/bean/Video$MovSizeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSize:Lcom/comeback/data/ui/cucumber/bean/Video$MovSizeBean;

    return-void
.end method

.method public setMovSn(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSn:Ljava/lang/String;

    return-void
.end method

.method public setMovSnOri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSnOri:Ljava/lang/String;

    return-void
.end method

.method public setMyInviteCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->myInviteCode:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->name:Ljava/lang/String;

    return-void
.end method

.method public setOriUrl(Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->oriUrl:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    return-void
.end method

.method public setP2pSharpness(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pSharpness:Ljava/lang/String;

    return-void
.end method

.method public setP2pToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pToken:Ljava/lang/String;

    return-void
.end method

.method public setPlayCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCnt:I

    return-void
.end method

.method public setPlayCntStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCntStr:Ljava/lang/String;

    return-void
.end method

.method public setPlayNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playNumber:I

    return-void
.end method

.method public setRealVideo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->realVideo:Ljava/lang/String;

    return-void
.end method

.method public setRelTagName(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->relTagName:Ljava/util/List;

    return-void
.end method

.method public setRemainPlayCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->remainPlayCnt:I

    return-void
.end method

.method public setStrPlayCnt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->strPlayCnt:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video$TagsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->tags:Ljava/util/List;

    return-void
.end method

.method public setUploadUserFans(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserFans:I

    return-void
.end method

.method public setUploadUserIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserIcon:Ljava/lang/String;

    return-void
.end method

.method public setUploadUserName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderInviteCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploaderInviteCode:Ljava/lang/String;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->userId:J

    return-void
.end method

.method public setVipFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->vipFlag:I

    return-void
.end method

.method public setYdaPlayCnt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->ydaPlayCnt:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->address:Lcom/comeback/data/ui/cucumber/bean/Video$AddressBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->oriUrl:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllCoversBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->allJCovers:Lcom/comeback/data/ui/cucumber/bean/Video$AllJCoversBean;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 6
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->attenStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->browToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->cover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->director:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->domain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->encryKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->gmtCreate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-boolean p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasDown:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-boolean p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->hasFavor:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 16
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->isMosaic:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->loveCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->mins:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movCls:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movDesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movScore:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movSnOri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pSharpness:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->p2pToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->remainPlayCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->strPlayCnt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playCntStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserFans:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploadUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->uploaderInviteCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-wide v0, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->userId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->vipFlag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->ydaPlayCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->playNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->downloadNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->collectNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->movPackageId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->favorCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->commentCnt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->realVideo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->actorList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 49
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->tags:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 50
    iget-object p2, p0, Lcom/comeback/data/ui/cucumber/bean/Video;->relTagName:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
