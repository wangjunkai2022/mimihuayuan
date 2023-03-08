.class public Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;
.super Ljava/lang/Object;
.source "ArtistList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllArtistEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;
    }
.end annotation


# instance fields
.field public letter:Ljava/lang/String;

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->this$1:Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLetter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->letter:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->list:Ljava/util/List;

    return-object v0
.end method

.method public setLetter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->letter:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;->list:Ljava/util/List;

    return-void
.end method
