.class public Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;
.super Ljava/lang/Object;
.source "LiveList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/tomato/bean/LiveList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataListEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;
    }
.end annotation


# instance fields
.field public live:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

.field public final synthetic this$0:Lcom/comeback/data/ui/tomato/bean/LiveList;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/tomato/bean/LiveList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->this$0:Lcom/comeback/data/ui/tomato/bean/LiveList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->type:I

    return p0
.end method

.method public static synthetic access$100(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;)Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->live:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    return-object p0
.end method


# virtual methods
.method public getLive()Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->live:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->type:I

    return v0
.end method

.method public setLive(Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->live:Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity$LiveEntity;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/tomato/bean/LiveList$DataListEntity;->type:I

    return-void
.end method
