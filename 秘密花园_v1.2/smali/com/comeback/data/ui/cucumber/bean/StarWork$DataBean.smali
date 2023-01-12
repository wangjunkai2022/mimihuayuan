.class public Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;
.super Ljava/lang/Object;
.source "StarWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cucumber/bean/StarWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;
    }
.end annotation


# instance fields
.field public actorDTO:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

.field public movieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video;",
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
.method public getActorDTO()Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->actorDTO:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    return-object v0
.end method

.method public getMovieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->movieList:Ljava/util/List;

    return-object v0
.end method

.method public setActorDTO(Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->actorDTO:Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean$ActorDTOBean;

    return-void
.end method

.method public setMovieList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cucumber/bean/Video;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cucumber/bean/StarWork$DataBean;->movieList:Ljava/util/List;

    return-void
.end method
