.class public Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;
.super Ljava/lang/Object;
.source "SenlinList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/comeback/data/ui/senlin/bean/SenlinList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClassEntity"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/comeback/data/ui/senlin/bean/SenlinList;

.field public type_id:I

.field public type_name:Ljava/lang/String;

.field public type_pid:I


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/senlin/bean/SenlinList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->this$0:Lcom/comeback/data/ui/senlin/bean/SenlinList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->type_id:I

    return v0
.end method

.method public getType_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType_pid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->type_pid:I

    return v0
.end method

.method public setType_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->type_id:I

    return-void
.end method

.method public setType_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->type_name:Ljava/lang/String;

    return-void
.end method

.method public setType_pid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/comeback/data/ui/senlin/bean/SenlinList$ClassEntity;->type_pid:I

    return-void
.end method
