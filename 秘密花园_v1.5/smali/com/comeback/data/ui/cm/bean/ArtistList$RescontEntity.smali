.class public Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;
.super Ljava/lang/Object;
.source "ArtistList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/cm/bean/ArtistList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RescontEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;
    }
.end annotation


# instance fields
.field public allArtist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;",
            ">;"
        }
    .end annotation
.end field

.field public hotArtist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity$ListEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/cm/bean/ArtistList;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/cm/bean/ArtistList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->this$0:Lcom/comeback/data/ui/cm/bean/ArtistList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->allArtist:Ljava/util/List;

    return-object v0
.end method

.method public getHotArtist()Ljava/util/List;
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
    iget-object v0, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->hotArtist:Ljava/util/List;

    return-object v0
.end method

.method public setAllArtist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity$AllArtistEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->allArtist:Ljava/util/List;

    return-void
.end method

.method public setHotArtist(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/comeback/data/ui/cm/bean/ArtistList$RescontEntity;->hotArtist:Ljava/util/List;

    return-void
.end method
