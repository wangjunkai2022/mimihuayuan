.class public Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;
.super Ljava/lang/Object;
.source "PicList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/km/bean/PicList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field public mc_id:Ljava/lang/String;

.field public mp_content:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mp_created:Ljava/lang/String;

.field public mp_id:Ljava/lang/String;

.field public mp_title:Ljava/lang/String;

.field public mp_updated:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMc_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMp_content()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_content:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMp_created()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_created:Ljava/lang/String;

    return-object v0
.end method

.method public getMp_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMp_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_title:Ljava/lang/String;

    return-object v0
.end method

.method public getMp_updated()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_updated:Ljava/lang/String;

    return-object v0
.end method

.method public setMc_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mc_id:Ljava/lang/String;

    return-void
.end method

.method public setMp_content(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_content:Ljava/util/ArrayList;

    return-void
.end method

.method public setMp_created(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_created:Ljava/lang/String;

    return-void
.end method

.method public setMp_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_id:Ljava/lang/String;

    return-void
.end method

.method public setMp_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_title:Ljava/lang/String;

    return-void
.end method

.method public setMp_updated(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/km/bean/PicList$DataBean$ListBean;->mp_updated:Ljava/lang/String;

    return-void
.end method
