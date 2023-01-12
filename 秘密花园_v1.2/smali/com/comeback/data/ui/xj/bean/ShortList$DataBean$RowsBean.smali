.class public Lcom/comeback/data/ui/xj/bean/ShortList$DataBean$RowsBean;
.super Ljava/lang/Object;
.source "ShortList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/xj/bean/ShortList$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowsBean"
.end annotation


# instance fields
.field public vodrow:Lcom/comeback/data/ui/xj/bean/VideoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/xj/bean/ShortList$DataBean$RowsBean;)Lcom/comeback/data/ui/xj/bean/VideoBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/xj/bean/ShortList$DataBean$RowsBean;->vodrow:Lcom/comeback/data/ui/xj/bean/VideoBean;

    return-object p0
.end method


# virtual methods
.method public getVodrow()Lcom/comeback/data/ui/xj/bean/VideoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/xj/bean/ShortList$DataBean$RowsBean;->vodrow:Lcom/comeback/data/ui/xj/bean/VideoBean;

    return-object v0
.end method

.method public setVodrow(Lcom/comeback/data/ui/xj/bean/VideoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xj/bean/ShortList$DataBean$RowsBean;->vodrow:Lcom/comeback/data/ui/xj/bean/VideoBean;

    return-void
.end method
