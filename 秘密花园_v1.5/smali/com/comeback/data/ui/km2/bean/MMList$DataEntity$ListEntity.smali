.class public Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;
.super Ljava/lang/Object;
.source "MMList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity$Tag_idEntity;
    }
.end annotation


# instance fields
.field public base64_txt:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public create_at:Ljava/lang/String;

.field public fee_num:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public nickname:Ljava/lang/String;

.field public read_num:Ljava/lang/String;

.field public tag_id:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity$Tag_idEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;

.field public title:Ljava/lang/String;

.field public tol_image:I

.field public type:I

.field public user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->this$1:Lcom/comeback/data/ui/km2/bean/MMList$DataEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBase64_txt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->base64_txt:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreate_at()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->create_at:Ljava/lang/String;

    return-object v0
.end method

.method public getFee_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->fee_num:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRead_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->read_num:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity$Tag_idEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->tag_id:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTol_image()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->tol_image:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->type:I

    return v0
.end method

.method public getUser_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public isAd()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBase64_txt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->base64_txt:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreate_at(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->create_at:Ljava/lang/String;

    return-void
.end method

.method public setFee_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->fee_num:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->image:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setRead_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->read_num:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity$Tag_idEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->tag_id:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public setTol_image(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->tol_image:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->type:I

    return-void
.end method

.method public setUser_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km2/bean/MMList$DataEntity$ListEntity;->user_id:Ljava/lang/String;

    return-void
.end method
