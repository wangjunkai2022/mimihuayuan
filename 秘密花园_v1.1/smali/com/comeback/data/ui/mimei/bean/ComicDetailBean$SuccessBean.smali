.class public Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;
.super Ljava/lang/Object;
.source "ComicDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/bean/ComicDetailBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuccessBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$Samelike2Bean;,
        Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SamelikeBean;,
        Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$DirectoryBean;,
        Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;
    }
.end annotation


# instance fields
.field public directory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$DirectoryBean;",
            ">;"
        }
    .end annotation
.end field

.field public samelike:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SamelikeBean;",
            ">;"
        }
    .end annotation
.end field

.field public samelike2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$Samelike2Bean;",
            ">;"
        }
    .end annotation
.end field

.field public summary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;",
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
.method public getDirectory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$DirectoryBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->directory:Ljava/util/List;

    return-object v0
.end method

.method public getSamelike()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SamelikeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->samelike:Ljava/util/List;

    return-object v0
.end method

.method public getSamelike2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$Samelike2Bean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->samelike2:Ljava/util/List;

    return-object v0
.end method

.method public getSummary()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->summary:Ljava/util/List;

    return-object v0
.end method

.method public setDirectory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$DirectoryBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->directory:Ljava/util/List;

    return-void
.end method

.method public setSamelike(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SamelikeBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->samelike:Ljava/util/List;

    return-void
.end method

.method public setSamelike2(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$Samelike2Bean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->samelike2:Ljava/util/List;

    return-void
.end method

.method public setSummary(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean$SummaryBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicDetailBean$SuccessBean;->summary:Ljava/util/List;

    return-void
.end method
