.class public Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;
.super Ljava/lang/Object;
.source "ImageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/gdian/bean/ImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/comeback/data/ui/gdian/bean/ImageList;

.field public total:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/bean/ImageList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;->this$0:Lcom/comeback/data/ui/gdian/bean/ImageList;

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
            "Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;->data:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;->total:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity$ImageEntity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;->data:Ljava/util/List;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/gdian/bean/ImageList$DataEntity;->total:I

    return-void
.end method
