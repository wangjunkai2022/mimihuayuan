.class public Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;
.super Ljava/lang/Object;
.source "ComicHomeType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;",
            ">;"
        }
    .end annotation
.end field

.field public info:Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getInfo()Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;->info:Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;

    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/mimei/bean/MimeiComicItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;->data:Ljava/util/List;

    return-void
.end method

.method public setInfo(Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean;->info:Lcom/comeback/data/ui/mimei/bean/ComicHomeType$SuccessBean$TypeBean$InfoBean;

    return-void
.end method
