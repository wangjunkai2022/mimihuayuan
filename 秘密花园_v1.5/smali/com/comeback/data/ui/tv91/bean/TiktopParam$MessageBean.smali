.class public Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;
.super Ljava/lang/Object;
.source "TiktopParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tv91/bean/TiktopParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageBean"
.end annotation


# instance fields
.field public Account:Ljava/lang/String;

.field public Data:Ljava/lang/String;

.field public ID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public MemberID:Ljava/lang/String;

.field public MovieID:I

.field public PageIndex:I

.field public PageSize:I

.field public Password:Ljava/lang/String;

.field public SourceId:I

.field public Token:Ljava/lang/String;

.field public Type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Account:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Data:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->ID:Ljava/util/List;

    return-object v0
.end method

.method public getMemberID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->MemberID:Ljava/lang/String;

    return-object v0
.end method

.method public getMovieID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->MovieID:I

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->PageIndex:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->PageSize:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->SourceId:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Type:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Account:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Data:Ljava/lang/String;

    return-void
.end method

.method public setID(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->ID:Ljava/util/List;

    return-void
.end method

.method public setMemberID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->MemberID:Ljava/lang/String;

    return-void
.end method

.method public setMovieID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->MovieID:I

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->PageIndex:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->PageSize:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Password:Ljava/lang/String;

    return-void
.end method

.method public setSourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->SourceId:I

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Token:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tv91/bean/TiktopParam$MessageBean;->Type:I

    return-void
.end method
