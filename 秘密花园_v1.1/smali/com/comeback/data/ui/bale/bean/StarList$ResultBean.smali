.class public Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;
.super Ljava/lang/Object;
.source "StarList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/bale/bean/StarList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$AllArtistBean;,
        Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;
    }
.end annotation


# instance fields
.field public allArtist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$AllArtistBean;",
            ">;"
        }
    .end annotation
.end field

.field public hotArtist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;",
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
.method public getAllArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$AllArtistBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;->allArtist:Ljava/util/List;

    return-object v0
.end method

.method public getHotArtist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;->hotArtist:Ljava/util/List;

    return-object v0
.end method

.method public setHotArtist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/bale/bean/StarList$ResultBean$ArtistBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/bean/StarList$ResultBean;->hotArtist:Ljava/util/List;

    return-void
.end method
